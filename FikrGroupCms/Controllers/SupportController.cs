using EF;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FikrGroupCms.Controllers
{
    [Authorize]
    public class SupportController : Controller
    {
        // GET: Support
        public ActionResult Index()
        {
            ViewBag.Section = "خدمات الدعم";
            using (var db = new PersonalityDBEntities())
            {
                var data = db.Services.FirstOrDefault(x => x.SectionId == 3);
                return View(data);
            }

        }
        [HttpPost, ValidateInput(false)]
        public ActionResult Index(EF.Service modelTb, HttpPostedFileBase file)
        {
            //string abPath = "";
            using (var db = new PersonalityDBEntities())
            {
                db.Entry(modelTb).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
        }
    }
}