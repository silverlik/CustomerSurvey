using System.Collections.Generic;
using Survey.Context;

namespace Survey.Models
{
    public class QuestionModel
    {
       
        public int QuestionId { get; set; } // QuestionId (Primary key)
        public string QuestionTitle { get; set; } // QuestionTitle (length: 200)
        public int QuestionType { get; set; } // QuestionType
        public string Comment { get; set; }
        // Reverse navigation
        public virtual IList<AnswerModel> Answers { get; set; }
        public int SelectedValue { get; set; }

// Many to many mapping

        public QuestionModel()
        {
            Answers = new List<AnswerModel>();
        }
    }
}