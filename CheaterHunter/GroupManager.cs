using HtmlAgilityPack;
using System;
using System.Collections.Generic;
using System.IO;
using ICSharpCode.SharpZipLib.Zip;

namespace CheaterHunter
{
    class Group
    {
        string m_name;
        List<string> m_students = new List<string>();
        string m_sourceFolder;
        public string FileCheckMessage;
        public bool FilesCheckResult= false;
        public Group(string name)
        {
            m_name = name;
        }
        public override string ToString()
        {
            string output = "Group " + m_name + ": ";
            foreach (string student in m_students)
                output = output + student + ", ";
            output.TrimEnd(',',' ');
            return output;
        }
        public void AddStudent(string name)
        {
            string normalizedName = StringUtils.RemoveDiacritics(name);
            m_students.Add(normalizedName);
        }
        public bool ContainsStudent(string name)
        {
            string normalizedName = StringUtils.RemoveDiacritics(name);
            foreach (string student in m_students)
                if (student == normalizedName)
                    return true;
            return false;
        }
        public string Name { get { return m_name; } }
        public int NumStudents { get { return m_students.Count; } }
        public string SourceFolder { get { return m_sourceFolder; } set { m_sourceFolder = value; } }
        public List<string> Students { get { return m_students; } }
    }
    class GroupManager
    {
        List<Group> m_groups= new List<Group>();
        List<Group> m_unknownGroups = new List<Group>();
        public GroupManager()
        { }
        Group GetGroupByName(string groupName)
        {
            foreach (Group group in m_groups)
            {
                if (group.Name== groupName)
                    return group;
            }
            return null;
        }
        string GetStudentsGroupName(string student)
        {
            string normalizedStudentName= StringUtils.RemoveDiacritics(student);
            foreach(Group group in m_groups)
            {
                if (group.ContainsStudent(normalizedStudentName))
                    return group.Name;
            }
            return null;
        }
        Group GetStudentsGroup(string student)
        {
            string normalizedStudentName = StringUtils.RemoveDiacritics(student);
            foreach (Group group in m_groups)
            {
                if (group.ContainsStudent(normalizedStudentName))
                    return group;
            }
            return null;
        }

        List<string> m_ungroupedStudents = new List<string>();
        public int UngroupedStudents { get { return m_ungroupedStudents.Count; } }

        void AddUngroupedStudents(string student)
        {
            if (!m_ungroupedStudents.Contains(student))
            {
                m_ungroupedStudents.Add(student);
            }
        }

        public void LogGroups(string LogFilename)
        {
            using (StreamWriter outputFile = File.AppendText(LogFilename))
            {
                outputFile.WriteLine("<!doctype html><html><head><title>Cheater Hunter - groups</title></head><body>");
                foreach (Group group in m_groups)
                {
                    outputFile.WriteLine("<h2 id=\"" + group.Name + "\">" + group.Name + "</h2><p>");
                    foreach (string student in group.Students)
                        outputFile.WriteLine(student + "<br>\n");
                    outputFile.WriteLine("</p>");
                    outputFile.WriteLine("<p>File check status: " + group.FileCheckMessage + "</p>");
                }
                foreach (Group group in m_unknownGroups)
                {
                    outputFile.WriteLine("<h2 id=\"" + group.Name + "\">" + group.Name + "</h2><p>");
                    foreach (string student in group.Students)
                        outputFile.WriteLine(student + "<br>\n");
                    outputFile.WriteLine("</p>");
                    outputFile.WriteLine("<p>No file has been uploaded</p>");
                }
                if (UngroupedStudents > 0)
                {
                    outputFile.WriteLine("<h2 id=\"Ungrouped\">Ungrouped</h2><p>");
                    foreach (string student in m_ungroupedStudents)
                        outputFile.WriteLine(student);
                    outputFile.WriteLine("</p>");
                }
                outputFile.WriteLine("</body></html>");
            }
        }


        public void CheckFiles(string outputFolder)
        {
            foreach (Group group in m_groups)
            {
                string dir = group.SourceFolder;
                string groupDesc = group.ToString();

                if (dir != null)
                {
                    string zipFile = Program.GetLastVersionZip(dir, true);

                    if (zipFile != "")
                    {
                        try
                        {
                            using (ZipInputStream s = new ZipInputStream(File.OpenRead(zipFile)))
                            {
                                bool logFound = false;
                                ZipEntry theEntry;
                                while (!logFound && (theEntry = s.GetNextEntry()) != null)
                                {
                                    if (theEntry.Name.ToLower().EndsWith("log.txt") && theEntry.Size > 0)
                                        logFound = true;
                                }
                                if (logFound)
                                {
                                    group.FilesCheckResult = true;
                                    group.FileCheckMessage = "last version (" + Path.GetFileName(zipFile) + ") OK";
                                }
                                else
                                {
                                    group.FilesCheckResult = false;
                                    group.FileCheckMessage = "Could not find \"log.txt\" file inside " + Path.GetFileName(zipFile);
                                }
                            }
                        }
                        catch
                        {
                            Console.WriteLine("ERROR: problems decompressing file " + zipFile);
                        }
                    }
                    else
                    {
                        group.FilesCheckResult = false;
                        group.FileCheckMessage = "Missing zip file or incorrect name/format";
                    }
                }
                else
                {
                    group.FilesCheckResult = false;
                    group.FileCheckMessage = "No files uploaded";
                }                 
            }
        }

        public bool InSameGroup(string student1, string student2)
        {
            //try to get groups from student names
            string groupFromName1 = StringUtils.GroupFromName(student1);
            string groupFromName2 = StringUtils.GroupFromName(student2);
            if (groupFromName1 != "" && groupFromName2 != "")
                return (groupFromName1 == groupFromName2);

            //look in the lists loaded from the html files
            string cleanStudent1 = StringUtils.RemoveGroupFromName(student1);
            string cleanStudent2 = StringUtils.RemoveGroupFromName(student2);
            string group1 = GetStudentsGroupName(cleanStudent1);
            if (group1 == null)
            {
                if (groupFromName1 == "")
                    AddUngroupedStudents(cleanStudent1);
                return false;
            }
            string group2 = GetStudentsGroupName(cleanStudent2);
            if (group2 == null)
            {
                if (groupFromName2 == "")
                    AddUngroupedStudents(cleanStudent2);
                return false;
            }

            if (group1 == group2)
                return true;
            return false;
        }

        public int NumGroups { get{ return m_groups.Count; } }
        public List<Group> Groups { get { return m_groups; } }

        public void Init(string tempFolder,string groupFolder)
        {
            //Load groups from both the html files inside the input folder
            foreach (string file in Directory.GetFiles(groupFolder, "*.html", SearchOption.TopDirectoryOnly))
                LoadGroupsFromHtmlFile(file);
            //Load groups from the folder names
            LoadGroupsFromFolderNames(tempFolder);

            LookForGroupSourceFolder(tempFolder);
        }

        void LookForGroupSourceFolder(string sourceRootFolder)
        {
            foreach(string sourceFolder in Directory.GetDirectories(sourceRootFolder))
            {
                string studentName = StringUtils.RemoveGroupFromName(StringUtils.NameFromFolder(sourceFolder));
                Group group = GetStudentsGroup(studentName);
                if (group != null)
                {
                    //do we already have set the source folder?
                    if (group.SourceFolder!=null)
                    {
                        //yes, then choose the one with the most recent file
                        string last1 = Path.GetFileName(Program.GetLastVersionZip(group.SourceFolder));
                        string last2 = Path.GetFileName(Program.GetLastVersionZip(sourceFolder));
                        if (string.Compare(last2, last1 ) == 1)
                        {
                            group.SourceFolder = sourceFolder;
                        }
                    }
                    else group.SourceFolder = sourceFolder;
                }
                else
                    Console.WriteLine("wtf");
            }

            foreach (Group group in m_groups)
            {
                if (group.SourceFolder == null)
                {
                    Console.WriteLine("WARNING: No source folder located for group:" + group.ToString());

                    m_unknownGroups.Add(group);
                }
            }
            foreach (Group group in m_unknownGroups) m_groups.Remove(group);
        }

        public void LoadGroupsFromFolderNames(string folder)
        {
            string group,student,cleanFolder,realGroupName;
            foreach(string subfolder in Directory.GetDirectories(folder))
            {
                cleanFolder= StringUtils.NameFromFolder(subfolder);
                group = StringUtils.GroupFromName(cleanFolder);
                if (group != "")
                {
                    student = StringUtils.RemoveGroupFromName(cleanFolder);
                    realGroupName = StringUtils.GroupFromName(cleanFolder);
                    if (realGroupName != "")
                    {
                        Group stdGroup = GetGroupByName(realGroupName);
                        Group stdGroup2 = GetStudentsGroup(student); // the student might already in a differently named group (read from an html file)
                        if (stdGroup==null && stdGroup2==null)
                        {
                            stdGroup = new Group(realGroupName);
                            m_groups.Add(stdGroup);
                        }
                        if (stdGroup2==null)
                            stdGroup.AddStudent(student);
                    }
                }
            }
        }

        public void LoadGroupsFromHtmlFile(string file)
        {
            HtmlDocument htmlDocument = new HtmlDocument();
            try
            {
                htmlDocument.Load(file);
                HtmlNode rootNode= htmlDocument.DocumentNode;
                //XmlElement table = GetElementFromType(htmlDocument.Get, "table");
                IEnumerable<HtmlNode> tableBodies= rootNode.Descendants("tbody");
                foreach (HtmlNode body in tableBodies)
                {
                    IEnumerable<HtmlNode> trs = body.Descendants("tr");
                    if (trs != null)
                    {
                        foreach (HtmlNode tr in trs)
                        {
                            IEnumerable<HtmlNode> studentsInGroup = tr.Descendants("a");
                            Group group = new Group(GetNextAutoGroupName());
                            foreach (HtmlNode student in studentsInGroup)
                            {
                                string normalizedName = StringUtils.RemoveDiacritics(student.InnerText);
                                group.AddStudent(normalizedName);
                            }
                            if (group.NumStudents > 0)
                                m_groups.Add(group);
                        }
                    }
                }
            }
            catch(Exception ex)
            {
                Console.WriteLine("ERROR: couldn't parse input group file: " + file);
                Console.Write(ex.Message);
            }
        }
        string GetNextAutoGroupName()
        {
            numAutoGroupNames++;
            return "Group" + numAutoGroupNames;
        }
        int numAutoGroupNames = 0;
    }
}
