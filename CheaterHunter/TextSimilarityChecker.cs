using System;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;

namespace CheaterHunter
{
    class TextSimilarityChecker : CodeComparer
    {
        int MinLineLengthThreshold = 10;
        int MaxLineLength = 20;
        double codeLineUniqueness(string line)
        {
            double length = (double)Math.Min(MaxLineLength, line.Length);
            double index= length / MaxLineLength;
            return index * index;
        }
        string FunctionPattern = @"function \[*\s*([^=\s\]]*)\s*\]*\s*=\s*[^(\s]*\s*\(([^)]*)\)";

        override public string Name() { return "Text similarity"; }

        override public void InitGroupComparison()
        {
        }

        override public void Process(string filename1, string filename2, string srcCode1, string srcCode2)
        {
            string[] lines1 = srcCode1.Split(new string[] { Environment.NewLine }, StringSplitOptions.RemoveEmptyEntries);
            string[] lines2 = srcCode2.Split(new string[] { Environment.NewLine }, StringSplitOptions.RemoveEmptyEntries);
            double index = 0.0;
            string cleanLine;
            foreach(string line in lines1)
            {
                cleanLine = line.TrimEnd(';').TrimStart(' ','\t');

                if (cleanLine.Length>MinLineLengthThreshold
                    && lines2.Contains(cleanLine) && Regex.Matches(cleanLine,FunctionPattern).Count==0)
                {
                    LoggedMessages.Add("<p>Code line matched comparing "
                        + "<a href=\"" + filename1 + "\">" + Path.GetFileName(filename1)
                        + "</a> and "
                        + "<a href=\"" + filename2 + "\">" + Path.GetFileName(filename2)
                        + "</a>:"
                        + cleanLine + "</p>");
                    index += codeLineUniqueness(cleanLine);
                }
            }
            SimilarityIndex = index;
        }

        override public double MaxIndexThreshold() { return 5.0; }
        override public double AccIndexThreshold() { return 20.0; }
    }
}
