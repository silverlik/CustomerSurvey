using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AutoMapper;
using Survey.Context;

namespace Survey.AutoMapper
{
    public class HomeProfile: Profile
    {
        public override string ProfileName => "HomeProfile";

        protected override void Configure()
        {
            CreateMap<Question, Models.QuestionModel>();
            CreateMap<Answer, Models.AnswerModel>();
            CreateMap<Models.QuestionModel, Question>();
            CreateMap<Models.AnswerModel, Answer>();
        }
    }
}