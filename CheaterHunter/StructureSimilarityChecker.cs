using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;
using System.IO;

namespace CheaterHunter
{
    class StructureSimilarityChecker: CodeComparer
    {
        List<string> Output = new List<string>();
        List<string> Functions = new List<string>();
        List<string> Patterns = new List<string>();

        public StructureSimilarityChecker()
        {
            Functions.Add("plot");
            Functions.Add("subplot");
            Functions.Add("mean");
            Functions.Add("std");
            Functions.Add("max");
            Functions.Add("min");
            Functions.Add("dlmread");
            Functions.Add("fprintf");
            Functions.Add("input");
            Functions.Add("legend");
            Functions.Add("x-label");
            Functions.Add("y-label");
            Functions.Add("title");
            Functions.Add("set");
            
            Patterns.Add(@"for\s");
            Patterns.Add(@"clc");
            Patterns.Add(@"while\s");
            Patterns.Add(@"if\s");
            Patterns.Add(@"elseif\s");
            Patterns.Add(@"else");
            Patterns.Add("end");
            Patterns.Add("hold on");
            Patterns.Add("hold off");
            Patterns.Add(@"(\w+)\s*=\s*\w+\([^\),]*\)");
            Patterns.Add(@"(\w+)\s*=\s*\w+\(\s*\d+\s*,\s*:\s*\)");
            Patterns.Add(@"(\w+)\s*=\s*\w+\(\s*:\s*,\s*\d+\s*\)");
            Patterns.Add(@"(\w+)\s*=\s*\1\s*\+\s*1");
            Patterns.Add(@"(\w+)\s*=\s*(\d+);");
        }
        string AnalyzeCodeStructure(string srcCode)
        {
            string[] lines = srcCode.Split(new string[] 
            { Environment.NewLine }, StringSplitOptions.RemoveEmptyEntries);
            string output = "";

            foreach(string line in lines)
            {
                bool Matched = false;
                //look for functions
                int fIndex = 0;
                string pattern;
                while (fIndex<Functions.Count && !Matched)
                {
                    pattern = Functions[fIndex] + @"\([^\)]*\)";
                    if (Regex.Matches(line,pattern).Count>0)
                    {
                        Matched = true;
                        output += "f" + fIndex.ToString() + "-";
                        break;
                    }
                    fIndex++;
                }
                //look for reserved words
                int pIndex= 0;
                while (pIndex < Patterns.Count && !Matched)
                {
                    pattern = Patterns[pIndex];
                    if (Regex.Matches(line, pattern).Count > 0)
                    {
                        Matched = true;
                        output += "p" + pIndex.ToString() + "-";
                        break;
                    }
                    pIndex++;
                }
            }
            return output;
        }
        int MinLengthThreshold = 16;
        int MaxStructureLength = 100;

        override public void InitGroupComparison()
        {
        }

        override public string Name() { return "Structure similarity"; }

        override public void Process(string filename1, string filename2, string srcCode1, string srcCode2)
        {
            string structure1 = AnalyzeCodeStructure(srcCode1);
            string structure2 = AnalyzeCodeStructure(srcCode2);
            if (structure1.Length > MinLengthThreshold && structure1 == structure2)
            {
                double index = (double) (structure1.Length-MinLengthThreshold) / (double) MaxStructureLength;
                SimilarityIndex = Math.Max(0.0, index);
                LoggedMessages.Add("<p>Same structure comparing "
                        + "<a href=\"" + filename1 + "\">" + Path.GetFileName(filename1)
                        + "</a> and "
                        + "<a href=\"" + filename2 + "\">" + Path.GetFileName(filename2)
                        + "</a></p>");
                LoggedMessages.Add("<p>Pattern: " + structure1 + "</p>");
            }
        }

        override public double MaxIndexThreshold() { return 0.2; }
        override public double AccIndexThreshold() { return 1.0; }
    }
}
