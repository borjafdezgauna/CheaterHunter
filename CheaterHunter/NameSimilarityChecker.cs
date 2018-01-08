using System;
using System.Collections.Generic;
using System.IO;
using System.Text.RegularExpressions;

namespace CheaterHunter
{
    class NameSimilarityChecker: CodeComparer
    {
        List<string> VariablePatterns = new List<string>();
        string FunctionPattern= @"function \[*\s*([^=\s\]]*)\s*\]*\s*=\s*[^(\s]*\s*\(([^)]*)\)";
        string ParameterPattern = @"([^\s,])+";
        List<string> Output = new List<string>();
        List<string> MatchedVariables = new List<string>();

        public NameSimilarityChecker()
        {
            VariablePatterns.Add(@"(\w+)\s*=");
            VariablePatterns.Add(@"for\s(\w+)\s*=");
        }

        List<string> ParseParameterList(string parameters)
        {
            List<string> parameterList = new List<string>();

            foreach(Match match in Regex.Matches(parameters,ParameterPattern))
            {
                parameterList.Add(match.Groups[0].Value);
            }
            return parameterList;
        }
        List<string> ParseParameterNames(string srcCode)
        {
            List<string> Parameters = new List<string>();
            string outputs, inputs;

            foreach (Match match in Regex.Matches(srcCode, FunctionPattern))
            {
                inputs = match.Groups[1].Value;
                Parameters.AddRange(ParseParameterList(inputs));
                outputs = match.Groups[2].Value;
                Parameters.AddRange(ParseParameterList(outputs));
            }

            return Parameters;
        }
        List<string> ParseVariableNames(string srcCode)
        {
            List<string> Parameters = ParseParameterNames(srcCode);
            List<string> Variables = new List<string>();
            string VarName;
            foreach(string pattern in VariablePatterns)
            {
                foreach (Match match in Regex.Matches(srcCode, pattern))
                {
                    VarName = match.Groups[1].Value;
                    if (!Parameters.Exists(name=>name==VarName) && !Variables.Exists(name => (name==VarName)))
                        Variables.Add(VarName);
                }
            }
            return Variables;
        }
        const int VariableMaxLength = 10;
        const int MinNameLengthThreshold = 4;
        double VariableUniquenessIndex(string s)
        {
            double length = (double) Math.Min(VariableMaxLength, s.Length);
            double uniquenessIndex= (double)(length) / (double) VariableMaxLength;
            uniquenessIndex *= uniquenessIndex;
            return uniquenessIndex;
        }
        override public void InitGroupComparison()
        {
            MatchedVariables.Clear();
        }

        double CompareVariableLists(string filename1, string filename2, List<string> list1, List<string> list2)
        {
            double similarityIndex = 0.0;
            foreach(string VarName in list1)
            {
                if (VarName.Length>= MinNameLengthThreshold && list2.Exists(name => VarName==name)
                    && !MatchedVariables.Exists(name => VarName == name))
                {
                    LoggedMessages.Add("<p>Variable name matched comparing " 
                        + "<a href=\"" + filename1 +"\">" + Path.GetFileName(filename1)
                        + "</a> and "
                        + "<a href=\"" + filename2 + "\">" + Path.GetFileName(filename2)
                        + "</a>:"
                        + VarName + "</p>");
                    MatchedVariables.Add(VarName);
                    similarityIndex += VariableUniquenessIndex(VarName);
                }
            }
            return similarityIndex;
        }

        override public void Process(string filename1, string filename2, string srcCode1, string srcCode2)
        {
            List<string> VariablesInSrc1 = ParseVariableNames(srcCode1);
            List<string> VariablesInSrc2 = ParseVariableNames(srcCode2);

            SimilarityIndex= CompareVariableLists(filename1, filename2, VariablesInSrc1, VariablesInSrc2);
        }

        override public string Name() { return "Name similarity"; }

        override public double MaxIndexThreshold() { return 2.0; }
        override public double AccIndexThreshold() { return 4.0; }
    }
}
