using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AutoMapper;
using Survey.AutoMapper;
using Survey.Context;
using Survey.Models;
using Microsoft.AspNet.Identity.Owin;

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

        
        [HttpPost]
        public ActionResult SubmitSurvey(List<QuestionModel> model=null)
        {
            using (var db = new CustomerSurveyDbContext())
            {
                var data = db.Respons.ToList();
                var responseId = data.OrderByDescending(r => r.ResponseId).FirstOrDefault()?.ResponseId + 1;
                string response="";
              //  var user = HttpContext.GetOwinContext().Get<ApplicationSignInManager>();
                foreach (var m in model)
                {
                    
                    if (m.QuestionType == (int) QuestionTypes.Selection ||
                        m.QuestionType == (int) QuestionTypes.SingleChoice)
                    {
                        response = m.SelectedValue.ToString();

                    }
                    if (m.QuestionType == (int) QuestionTypes.MultipleChoice)
                    {
                        var answers = m.Answers.Where(a => a.Selected).Select(a => a.AnswerId.ToString());
                        response = string.Join(",", answers);
                        
                    }
                    if (m.QuestionType == (int) QuestionTypes.Commentary)
                    {
                        response = m.Comment;
                    }
                    db.Respons.Add(new Respons()
                    {
                        QuestionId = m.QuestionId + 1,
                        Response = response,
                        ResponseId = responseId??1,
                        UserName = ""
                    });
                }
                try
                    {
                        
                        db.SaveChanges();

                    }
                    catch(Exception e)
                        {
                            Console.Write(e.StackTrace);
                                throw;
                         }
                
                
                

            }
            return RedirectToAction("Index");
        }

        public ActionResult Statistics()
        {

            using (var db = new CustomerSurveyDbContext())
            {
               var model= new StatisticsModel();
                model.Respondents = db.Respons.Select(r => r.ResponseId).Distinct().Count();
                model.QuestionPopularAnswers = new Dictionary<string, string>();
                var questions = db.Questions.Count();
                var questionIds = db.Questions.Select(q => q.QuestionId);
                foreach (var id in questionIds)
                {
                    
                    model.QuestionPopularAnswers.Add(db.Questions.First(q=>q.QuestionId==id).QuestionTitle,
                        db.Respons.Where(r=>r.QuestionId==id).Count()+ " answers." );
                }
                
                return View(model);
            }
            
        }
        public ActionResult SaveUploadedFile()
        {
            bool isSavedSuccessfully = true;
            string fName = "";
            try
            {
                foreach (string fileName in Request.Files)
                {
                    HttpPostedFileBase file = Request.Files[fileName];
                    //Save file content goes here
                    fName = file.FileName;
                    if (file != null && file.ContentLength > 0)
                    {

                        var originalDirectory = new DirectoryInfo(string.Format("{0}Images\\WallImages", Server.MapPath(@"\")));

                        string pathString = System.IO.Path.Combine(originalDirectory.ToString(), "imagepath");

                        var fileName1 = Path.GetFileName(file.FileName);

                        bool isExists = System.IO.Directory.Exists(pathString);

                        if (!isExists)
                            System.IO.Directory.CreateDirectory(pathString);

                        var path = string.Format("{0}\\{1}", pathString, file.FileName);
                        file.SaveAs(path);

                    }

                }

            }
            catch (Exception ex)
            {
                isSavedSuccessfully = false;
            }


            if (isSavedSuccessfully)
            {
                return Json(new { Message = fName });
            }
            else
            {
                return Json(new { Message = "Error in saving file" });
            }
        }
    }
}