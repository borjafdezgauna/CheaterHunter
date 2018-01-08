using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
namespace CheaterHunter
{
    public abstract class CodeComparer
    {
        public abstract void Process(string filename1, string filename2, string srcCode1, string srcCode2);
        public abstract double MaxIndexThreshold();
        public abstract double AccIndexThreshold();
        public abstract string Name();
        public abstract void InitGroupComparison();

        public double LastSimilarityIndex = 0.0;
        public double SimilarityIndex
        {
            get { return LastSimilarityIndex; }
            set
            {
                LastSimilarityIndex = value;
                if (value > MaxSimilarityIndex)
                    MaxSimilarityIndex = value;
                AccSimilarityIndex += value;
            }
        }
        public double AccSimilarityIndex = 0.0;
        public double MaxSimilarityIndex = 0.0;

        protected List<string> LoggedMessages = new List<string>();

        public void Init(string name1, string name2)
        {
            LoggedMessages.Clear();
            SimilarityIndex = 0.0;
            MaxSimilarityIndex = 0.0;
            AccSimilarityIndex = 0.0;
            //call the subclass's initialization method
            InitGroupComparison();
        }
        public bool Suspicious()
        {
            return MaxSimilarityIndex > MaxIndexThreshold() || AccSimilarityIndex > AccIndexThreshold();
        }
        
        public List<string> Results()
        {
            return LoggedMessages;
        }
    }
}
