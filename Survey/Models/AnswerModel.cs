namespace Survey.Models
{
    public class AnswerModel
    {
        public int QuestionId { get; set; } // QuestionId (Primary key)
        public int AnswerId { get; set; } // AnswerId (Primary key)
        public string Label { get; set; } // Label (Primary key) (length: 100)
        public bool Selected { get; set; }
       
        // Foreign keys
        public virtual QuestionModel QuestionModel { get; set; } // FK_Answers_Questions
    }
}