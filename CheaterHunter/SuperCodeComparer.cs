using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Threading.Tasks;

namespace CheaterHunter
{
    class SuperCodeComparer
    {
        public string LogFilename;
        public string LogFolder;
        List<CodeComparer> m_codeComparers= new List<CodeComparer>();

        public SuperCodeComparer(string outputFolder)
        {
            LogFolder = outputFolder;
            m_codeComparers.Add(new NameSimilarityChecker());
            m_codeComparers.Add(new TextSimilarityChecker());
            m_codeComparers.Add(new StructureSimilarityChecker());
        }
        public void Init(string name1, string name2)
        {
            LogFilename = name1 + "-" + name2 + ".html";

            if (LogFolder != String.Empty)
                LogFilename = LogFolder + "/" + LogFilename;

            if (File.Exists(LogFilename))
                File.Delete(LogFilename);

            foreach (CodeComparer comparer in m_codeComparers) comparer.Init(name1, name2);
        }
        public void Process(string filename1, string filename2, string srcCode1, string srcCode2)
        {
            string relativeName1, relativeName2;
            relativeName1 = "../" + StringUtils.RemoveFolderCharacters(filename1);
            relativeName2 = "../" + StringUtils.RemoveFolderCharacters(filename2);

            foreach (CodeComparer comparer in m_codeComparers)
                comparer.Process(relativeName1, relativeName2, srcCode1, srcCode2);
        }
        public bool Suspicious()
        {
            foreach (CodeComparer comparer in m_codeComparers)
                if (comparer.Suspicious()) return true;
            return false;
        }
        public string GetBriefing(string lineEnding="<br>")
        {
            string output = "";
            foreach (CodeComparer comparer in m_codeComparers)
                output += comparer.Name() + ": " + comparer.MaxSimilarityIndex + "(Max.) / " + comparer.AccSimilarityIndex + "(Acc.)\n" + lineEnding;
            return output;
        }
        public void LogResults()
        {
            using (StreamWriter outputFile = File.AppendText(LogFilename))
            {
                outputFile.WriteLine("<!doctype html><html><head> <meta charset=\"UTF-8\"><title>" + LogFilename + "</title></head><body>");

                foreach (CodeComparer comparer in m_codeComparers)
                    foreach (string msg in comparer.Results())
                        outputFile.WriteLine(msg);

                outputFile.WriteLine("</body></html>");
            }
        }
    }
}
