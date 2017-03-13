using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Survey.Models
{
    public class ResponseModel
    {
        public int QuestionId { get; set; } // QuestionId
        public string Response { get; set; } // Response (length: 300)
        public int ResponseId { get; set; } // ResponseId (Primary key)
        public string UserName { get; set; } // UserName (length: 50)
    }
}