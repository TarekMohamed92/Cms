using EF;
using PagedList;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FikrGroupCms.Controllers
{
    public class AboutController : Controller
    {
        // GET: Condition
        public ActionResult Index(string searchString, int page = 1)
        {
            ViewBag.Section = "مجالاتنا";
            using (var db = new PersonalityDBEntities())
            {
                int pageSize = 5;
                var data = db.AboutTBs.Where(i => i.SectionId == 2).ToList();
                ViewBag.SearchString = searchString ?? "";
                if (searchString != null && searchString != "")
                {
                    data = data.Where(x => x.ArTitle.Contains(searchString)).ToList();
                }
                return Request.IsAjaxRequest()
                ? (ActionResult)PartialView("_PartialSupport", data.ToPagedList(page, pageSize))
                : View(data.ToPagedList(page, pageSize));
            }
        }
        [HttpGet]
        public ActionResult Create(int id = 0)
        {
            ViewBag.Section = "مجالاتنا";
            if (id == 0)
            {
                ViewBag.error = "";
            }
            else
            {
                ViewBag.error = "من فضلك قم باختيار صورة";
            }
            return View();
        }
        [HttpPost, ValidateInput(false)]
        public ActionResult Create(EF.AboutTB modelTb, HttpPostedFileBase file)
        {
            string abPath = "";
            using (var db = new PersonalityDBEntities())
            {

                modelTb.SectionName = "Services";
                modelTb.SectionId = 2;
                modelTb.Image = abPath;
                db.AboutTBs.Add(modelTb);
                db.SaveChanges();
                return RedirectToAction("index");
            }
        }
        public ActionResult Edit(int id)
        {
            ViewBag.Section = "مجالاتنا";
            using (var db = new PersonalityDBEntities())
            {
                var data = db.AboutTBs.Find(id);
                return View(data);
            }

        }
        [HttpPost, ValidateInput(false)]
        public ActionResult Edit(EF.AboutTB modelTb, HttpPostedFileBase file)
        {
            string abPath = "";
            using (var db = new PersonalityDBEntities())
            {
                //if (file != null)
                //{
                //    var uri = Request.Url.Scheme + "://" + Request.Url.Authority + Request.ApplicationPath.TrimEnd('/') + "/";
                //    string pic = DateTime.Now.ToString("yyyyMMddhhmmss") + System.IO.Path.GetExtension(file.FileName);
                //    string path = System.IO.Path.Combine(Server.MapPath("~/up/"), pic);
                //    abPath = "/up/" + pic;
                //    file.SaveAs(path);
                //    modelTb.Image = abPath;
                //}
                db.Entry(modelTb).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("index");
            }
        }
        // GET: About
        public ActionResult AboutCompany()
        {
            ViewBag.Section = "عن الشركة";
            using (var db = new PersonalityDBEntities())
            {
                var data = db.AboutTBs.FirstOrDefault(x => x.SectionId == 1);
                return View(data);
            }

        }
        [HttpPost, ValidateInput(false)]
        public ActionResult AboutCompany(AboutTB modelTb, HttpPostedFileBase file)
        {
            string abPath = "";
            using (var db = new PersonalityDBEntities())
            {
                if (file != null)
                {
                    var uri = Request.Url.Scheme + "://" + Request.Url.Authority + Request.ApplicationPath.TrimEnd('/') + "/";
                    string pic = DateTime.Now.ToString("yyyyMMddhhmmss") + System.IO.Path.GetExtension(file.FileName);
                    string path = System.IO.Path.Combine(Server.MapPath("~/up/"), pic);
                    abPath = "/up/" + pic;
                    file.SaveAs(path);
                    modelTb.Image = abPath;
                }
                db.Entry(modelTb).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("AboutCompany");
            }
        }
        public ActionResult Section()
        {
            ViewBag.Section = "النص";
            using (var db = new PersonalityDBEntities())
            {
                var data = db.AboutTBs.FirstOrDefault(x => x.SectionId == 2);
                return View(data);
            }

        }
        [HttpPost, ValidateInput(false)]
        public ActionResult Section(AboutTB modelTb)
        {
            using (var db = new PersonalityDBEntities())
            {
                db.Entry(modelTb).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Section");
            }
        }
    }
}