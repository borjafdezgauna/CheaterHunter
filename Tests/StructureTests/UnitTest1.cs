using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using CheaterHunter;
using System.IO;

namespace StructureTests
{
    [TestClass]
    public class UnitTest1
    {
        string getTestCaseFilename(int caseTestNum)
        {
            return "../../test-case-" + caseTestNum + ".m";
        }
        string getTestCaseComparisonFilename(int caseTestNum, int caseTestCompNum, bool positiveMatch)
        {
            if (positiveMatch)
                return "../../test-case-" + caseTestNum + "-positive-" + caseTestCompNum + ".m";
            else
                return "../../test-case-" + caseTestNum + "-negative-" + caseTestCompNum + ".m";
        }

        [TestMethod]
        public void ProgramComparisonTest()
        {
            int comparisonCount = 0;
            StructureSimilarityChecker structureChecker = new StructureSimilarityChecker();
            string prog1, prog2;
            bool file1Exists;
            string inputFile1, inputFile2;
            int testCase = 1;

            //positive matches

            inputFile1 = getTestCaseFilename(testCase);
            file1Exists = File.Exists(inputFile1);

            while (file1Exists)
            {

                bool file2Exists;
                int testCase2 = 1;
                prog1 = File.ReadAllText(inputFile1);

                //positive matches
                inputFile2 = getTestCaseComparisonFilename(testCase, testCase2, true);
                file2Exists = File.Exists(inputFile2);
                while (file2Exists)
                {
                    prog2 = File.ReadAllText(inputFile2);
                    structureChecker.Init(inputFile1, inputFile2);
                    structureChecker.Process(inputFile1, inputFile2, prog1, prog2);
                    comparisonCount++;
                    Assert.IsTrue(structureChecker.LastSimilarityIndex > 0.01);

                    testCase2++;
                    inputFile2 = inputFile2 = getTestCaseComparisonFilename(testCase, testCase2, true);
                    file2Exists = File.Exists(inputFile2);
                }

                //negative matches
                testCase2 = 1;
                inputFile2 = inputFile2 = getTestCaseComparisonFilename(testCase, testCase2, false);
                file2Exists = File.Exists(inputFile2);
                while (file2Exists)
                {
                    prog2 = File.ReadAllText(inputFile2);
                    structureChecker.Init(inputFile1, inputFile2);
                    structureChecker.Process(inputFile1, inputFile2, prog1, prog2);
                    comparisonCount++;
                    Assert.IsTrue(structureChecker.LastSimilarityIndex == 0.0);

                    testCase2++;
                    inputFile2 = inputFile2 = getTestCaseComparisonFilename(testCase, testCase2, false);
                    file2Exists = File.Exists(inputFile2);
                }

                testCase++;
                inputFile1 = getTestCaseFilename(testCase);
                file1Exists = File.Exists(inputFile1);
            }

            Console.WriteLine(comparisonCount + " files compared");
        }
        [TestMethod]
        public void StructureAnalysisTest()
        {
            StructureSimilarityChecker structureChecker = new StructureSimilarityChecker();
            structureChecker.Init("prog1_1", "prog1_2");

            Assert.AreEqual(structureChecker.AnalyzeCodeStructure(" for i=1:3\r\n")
                , structureChecker.AnalyzeCodeStructure(" for j= 1:3\r\n"));
            Assert.AreEqual(structureChecker.AnalyzeCodeStructure(" for i=1:3\r\n")
                , structureChecker.AnalyzeCodeStructure(" for   i=1:3\r\n"));
            Assert.AreEqual(structureChecker.AnalyzeCodeStructure(" if i==13")
                , structureChecker.AnalyzeCodeStructure("if i== maxNum\r\n"));
            Assert.AreEqual(structureChecker.AnalyzeCodeStructure("if i==1\r\nelseif i==2\r\nelse\r\nend")
                , structureChecker.AnalyzeCodeStructure(" if j==1\r\n  \r\nelseif j==2\r\nelse\r\nend"));
            Assert.AreEqual(structureChecker.AnalyzeCodeStructure("subplot(1, 1, 1);\r\nplot(x, y)\r\n")
                , structureChecker.AnalyzeCodeStructure("subplot(1, 1,1)\r\nplot( v, h); \r\n"));
            Assert.AreEqual(structureChecker.AnalyzeCodeStructure("x= x+1")
                , structureChecker.AnalyzeCodeStructure("z= z + 1"));
            
            Assert.AreNotEqual(structureChecker.AnalyzeCodeStructure("x= x+1")
                , structureChecker.AnalyzeCodeStructure("x= z +1"));
            Assert.AreNotEqual(structureChecker.AnalyzeCodeStructure("x(i)= 12")
                , structureChecker.AnalyzeCodeStructure("x(i)= x(i) +1"));

            Assert.AreNotEqual(structureChecker.AnalyzeCodeStructure("x= x+1")
                , structureChecker.AnalyzeCodeStructure("x= x + z"));
            Assert.AreNotEqual(structureChecker.AnalyzeCodeStructure("x= 2")
                , structureChecker.AnalyzeCodeStructure("x= 'alksdjf'"));

            Assert.AreEqual(structureChecker.AnalyzeCodeStructure("x= [1:3]")
                , structureChecker.AnalyzeCodeStructure("x= [1 2 3]"));
            Assert.AreNotEqual(structureChecker.AnalyzeCodeStructure("x= 1:3")
                , structureChecker.AnalyzeCodeStructure("x= 1"));
            Assert.AreNotEqual(structureChecker.AnalyzeCodeStructure("x= 1:3")
                , structureChecker.AnalyzeCodeStructure("x= [1 2 3]"));
            Assert.AreNotEqual(structureChecker.AnalyzeCodeStructure("x= 1:3")
                , structureChecker.AnalyzeCodeStructure("x= [1:3]"));
            Assert.AreNotEqual(structureChecker.AnalyzeCodeStructure("x= 1:3")
                , structureChecker.AnalyzeCodeStructure("x= {1 2 3}"));

            Assert.AreNotEqual(structureChecker.AnalyzeCodeStructure("x= m(:,3)")
                , structureChecker.AnalyzeCodeStructure("x= 1:1"));
            Assert.AreNotEqual(structureChecker.AnalyzeCodeStructure("x= m(:,3)")
                , structureChecker.AnalyzeCodeStructure("x= m(3,:)"));
            Assert.AreEqual(structureChecker.AnalyzeCodeStructure("x= m(:,3)")
                , structureChecker.AnalyzeCodeStructure("m= x(:,3)"));
            Assert.AreEqual(structureChecker.AnalyzeCodeStructure("x= m(:,3)")
                , structureChecker.AnalyzeCodeStructure("m= x(:,4)"));
        }
    }
}
