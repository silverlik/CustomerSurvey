using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Survey.Models
{
    public class StatisticsModel
    {
        public int Respondents { get; set; }
        public Dictionary<string, string> QuestionPopularAnswers { get; set; } 
    }
}