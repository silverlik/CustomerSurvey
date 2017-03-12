using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AutoMapper;
using Survey.AutoMapper;
using Survey.Context;
using Survey.Models;

namespace Survey.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            using (var db = new CustomerSurveyDbContext())
            {
                var data = db.Questions.ToList();
                
                
               // Mapper.CreateMap()Initialize(config => );
                Mapper.CreateMap<Question, QuestionModel>().ForMember(dest => dest.Comment, opt => opt.Ignore());
                Mapper.CreateMap<Answer, AnswerModel>().ForMember(dest=>dest.Selected, opt=>opt.Ignore());
                var model = Mapper.Map<List<Question>, List<QuestionModel>>(data);

                return View(model);
            }
        }

        public ActionResult About()
        {
            ViewBag.Message = "Customer Survey Page. " +
                              "Use the Survey Monkey’s questionnaire example (see https://www.surveymonkey.com/r/customer-satisfaction-survey-template) to create a simple customer survey website."+
                              " Use the questions and options from the above form. "+
                              "Results should be processed into a database (or datastore)."+
                              " There should also be a small reporting page where we can see the results of the questions and some simple statistics.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}