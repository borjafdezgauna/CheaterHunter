using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Globalization;

namespace CheaterHunter
{
    class StringUtils
    {
        public static string RemoveDiacritics(string text)
        {
            var normalizedString = text.Normalize(NormalizationForm.FormD);
            var stringBuilder = new StringBuilder();

            foreach (var c in normalizedString)
            {
                var unicodeCategory = CharUnicodeInfo.GetUnicodeCategory(c);
                if (unicodeCategory != UnicodeCategory.NonSpacingMark)
                {
                    stringBuilder.Append(c);
                }
            }

            return stringBuilder.ToString().Normalize(NormalizationForm.FormC);
        }
        public static string NameFromFolder(string folder)
        {
            int dlm1 = folder.LastIndexOf('/');
            int dlm2 = folder.LastIndexOf('\\');
            int trimPos = 0;
            if (dlm1 > 0) trimPos = dlm1;
            if (dlm2 > 0) trimPos = Math.Max(dlm1, dlm2);
            string name = folder.Substring(trimPos + 1);
            int firstUnderscore = name.IndexOf('_');
            if (firstUnderscore > 0)
                name = name.Substring(0, firstUnderscore - 1);
            return name;
        }
        public static string NameFromFilename(string filename)
        {
            string dir = FolderFromFilename(filename);

            int firstUnderscore = dir.IndexOf('_');
            if (firstUnderscore > 0)
                dir = dir.Substring(0, firstUnderscore);
            return dir;
        }
        static string FolderFromFilename(string filename)
        {
            int dlm1 = filename.LastIndexOf('/');
            int dlm2 = filename.LastIndexOf('\\');
            int trimPos = 0;
            if (dlm1 > 0) trimPos = dlm1;
            if (dlm2 > 0) trimPos = Math.Max(dlm1, dlm2);

            if (trimPos > 0)
                return filename.Substring(0, trimPos);
            return filename;
        }
        public static string GroupFromName(string name)
        {
            int scorePos = name.LastIndexOf('-');
            int spacePos = name.IndexOf(' ');

            if (scorePos > 0 && (spacePos < 0 || spacePos > scorePos))
                return name.Substring(0, scorePos);
            return "";
        }
        public static string RemoveGroupFromName(string name)
        {
            int scorePos = name.LastIndexOf('-');
            int spacePos = name.IndexOf(' ');

            if (scorePos > 0 && (spacePos < 0 || spacePos > scorePos))
                return name.Substring(scorePos + 1);
            return name;
        }
        public static string RemoveFolderCharacters(string path)
        {
            return path.TrimStart('.', '/', '\\');
        }
    }
}
