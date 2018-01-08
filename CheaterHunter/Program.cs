using System;
using System.IO;
using System.Collections.Generic;
using ICSharpCode.SharpZipLib.Zip;
namespace CheaterHunter
{
    class Program
    {
        static string TempFolder = "../../../temp";
        static string InputFolder = "../../../code";
        static string OutputFolder = "../../../output";
        public static string GetLastVersionZip(string folder, bool strict= false)
        {
            string lastVersion= "";
            string[] zipFiles;
            if (!strict) zipFiles = Directory.GetFiles(folder, "*.zip");
            else zipFiles = Directory.GetFiles(folder, "project-????-??-*.zip");
            if (zipFiles.Length > 0)
            {
                lastVersion = zipFiles[0];
                foreach (string zip in zipFiles)
                {
                    if (string.Compare(zip, lastVersion) > 0)
                        lastVersion = zip;
                }
            }
            return lastVersion;
        }
        static void ExtractGroupZips(string folder)
        {
            //Clean output temp folder
            foreach (string dir in Directory.GetDirectories(TempFolder))
                Directory.Delete(dir, true);
            //Extract all files from the group-zip files
            string[] files = Directory.GetFiles(folder, "*.zip");
            foreach (string file in files)
            {
                ExtractZipFile(file, TempFolder);
            }
        }
        static void ExtractLastVersionFromFolder(string folder)
        {
            //Select last version from each directory and decompress it
            foreach (string dir in Directory.GetDirectories(TempFolder))
            {
                string lastVersion = GetLastVersionZip(dir);
                if (lastVersion!="")
                { 
                    string outputFolder = StringUtils.NameFromFilename(lastVersion);
                    ExtractZipFile(lastVersion,outputFolder, false);
                }
            }
        }

        static void ExtractZipFile(string file, string outFolder, bool AddFilenameToFolder = true)
        {
            try
            {
                using (ZipInputStream s = new ZipInputStream(File.OpenRead(file)))
                {
                    Console.WriteLine(Path.GetFileName(file));
                    ZipEntry theEntry;
                    while ((theEntry = s.GetNextEntry()) != null)
                    {
                        string directoryName;

                        if (AddFilenameToFolder)
                            directoryName = outFolder + "\\" + StringUtils.NameFromFilename(theEntry.Name);
                        else
                            directoryName = outFolder + "\\" + Path.GetDirectoryName(theEntry.Name);
                        string fileName = Path.GetFileName(theEntry.Name);

                        // create directory
                        if (directoryName.Length > 0)
                        {
                            Directory.CreateDirectory(directoryName);
                        }

                        if (fileName != String.Empty)
                        {
                            string fullFileName = directoryName + "\\" + fileName;

                            using (FileStream streamWriter = File.Create(fullFileName))
                            {

                                int size = 2048;
                                byte[] data = new byte[2048];
                                while (true)
                                {
                                    size = s.Read(data, 0, data.Length);
                                    if (size > 0) streamWriter.Write(data, 0, size);
                                    else break;
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("WARNING: error decompressing file " + file);
            }
        }




    static void Main(string[] args)
        {
            GroupManager groupManager = new GroupManager();
            string cleanGroupFilename = "groups.html";
            string groupFilename = OutputFolder + "/" + cleanGroupFilename;

            //check whether we need to extract files from zips
            bool bExtract = false;
            foreach (string arg in args)
                if (arg.ToLower() == "extract")
                    bExtract = true;

            //Create / clean output folders
            if (bExtract && !Directory.Exists(TempFolder))
                Directory.CreateDirectory(TempFolder);
            if (!Directory.Exists(OutputFolder))
                Directory.CreateDirectory(OutputFolder);
            else
                foreach (string file in Directory.GetFiles(OutputFolder)) File.Delete(file);

            //Decompress files
            if (bExtract)
            {
                Console.WriteLine("EXTRACTING FILES FROM GROUP ZIP FILES");
                ExtractGroupZips(InputFolder);
                Console.WriteLine("EXTRACTING SOURCE FILES:\n");
                ExtractLastVersionFromFolder(InputFolder);
            }
            //Initialize groups
            groupManager.Init(TempFolder, InputFolder);

            //Check files are correct
            Console.WriteLine("\nCHECKING SOURCE FILES:\n");
            groupManager.CheckFiles(OutputFolder);

            Console.WriteLine("\nANALYZING SOURCE FILES:\n");
            using (StreamWriter outputFile = File.CreateText(OutputFolder + "/" + "log.html"))
            {
                //Write the header of the html file
                outputFile.WriteLine("<!doctype html><html>\n<head><title>Cheater Hunter - log file</title></head><body>");
                string srcCode1, srcCode2;

                SuperCodeComparer superCodeComparer = new SuperCodeComparer(OutputFolder);

                for (int i = 0; i < groupManager.NumGroups - 1; i++)
                {
                    Console.WriteLine(groupManager.Groups[i].Name);

                    string[] srcFiles1 = Directory.GetFiles(groupManager.Groups[i].SourceFolder
                        , "*.m", SearchOption.AllDirectories);
                    for (int j = i + 1; j < groupManager.NumGroups; j++)
                    {
                        string[] srcFiles2 = Directory.GetFiles(groupManager.Groups[j].SourceFolder, "*.m", SearchOption.AllDirectories);

                        string name1 = groupManager.Groups[i].Name;
                        string name2 = groupManager.Groups[j].Name;

                        {
                            //set names and reset
                            superCodeComparer.Init(name1, name2);
                            
                            foreach (string file1 in srcFiles1)
                            {
                                foreach (string file2 in srcFiles2)
                                {
                                    srcCode1 = File.ReadAllText(file1);
                                    srcCode2 = File.ReadAllText(file2);

                                    superCodeComparer.Process(file1, file2, srcCode1, srcCode2);
                                }
                            }

                            //log results
                            if (superCodeComparer.Suspicious())
                            {
                                outputFile.WriteLine("<h4>" 
                                    + "<a href=\"" + cleanGroupFilename + "#" + name1 + "\">" + name1 +"</a>" + " - "
                                    + "<a href=\"" + cleanGroupFilename + "#" + name2 + "\">" + name2 + "</a>" + ":</h4>\n");
                                outputFile.WriteLine("<p>");


                                outputFile.WriteLine(superCodeComparer.GetBriefing());

                                outputFile.WriteLine("<a href=\""
                                    + Path.GetFileName(superCodeComparer.LogFilename) + "\">(Log)</a></p>");

                                superCodeComparer.LogResults();
                            }
                        }
                    } 
                }
                //close the log file
                outputFile.WriteLine("</body></html>");
                //log groups
                groupManager.LogGroups(groupFilename);
            }
        }
    }
}
