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
    [Authorize]
    public class ServiceController : Controller
    {
        // GET: Slider
        public ActionResult Index(string searchString, int page = 1)
        {
            ViewBag.Section = "ارقامنا";
            using (var db = new PersonalityDBEntities())
            {
                int pageSize = 5;
                var data = db.Services.Where(i => i.SectionId == 1).ToList();
                ViewBag.SearchString = searchString ?? "";
                if (searchString != null && searchString != "")
                {
                    data = data.Where(x => x.ArTitle.Contains(searchString)).ToList();
                }
                return Request.IsAjaxRequest()
                ? (ActionResult)PartialView("_PartialService", data.ToPagedList(page, pageSize))
                : View(data.ToPagedList(page, pageSize));
            }
        }
        [HttpGet]
        public ActionResult Create(int id = 0)
        {
            ViewBag.Section = "ارقامنا";
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
        public ActionResult Create(EF.Service modelTb, HttpPostedFileBase file)
        {
            string abPath = "";
            using (var db = new PersonalityDBEntities())
            {

                //if (file != null)
                //{
                    //var uri = Request.Url.Scheme + "://" + Request.Url.Authority + Request.ApplicationPath.TrimEnd('/') + "/";
                    //string pic = DateTime.Now.ToString("yyyyMMddhhmmss") + System.IO.Path.GetExtension(file.FileName);
                    //string path = System.IO.Path.Combine(Server.MapPath("~/up/"), pic);
                    //abPath = "/up/" + pic;
                    //file.SaveAs(path);
                    modelTb.SectionName = "Services";
                    modelTb.SectionId = 1;
                    modelTb.Image = abPath;
                    db.Services.Add(modelTb);
                    db.SaveChanges();
                    return RedirectToAction("index");
                //}
                //else
                //{
                //    return RedirectToAction("create", new { id = 99 });
                //}
            }
        }
        public ActionResult Edit(int id)
        {
            ViewBag.Section = "ارقامنا";
            using (var db = new PersonalityDBEntities())
            {
                var data = db.Services.Find(id);
                return View(data);
            }
        }
        [HttpPost, ValidateInput(false)]
        public ActionResult Edit(EF.Service modelTb, HttpPostedFileBase file)
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
                return RedirectToAction("index");
            }
        }
        public JsonResult Delete(int id)
        {
            try
            {
                using (var db = new PersonalityDBEntities())
                {
                    var data = db.Services.Find(id);
                    db.Services.Remove(data);
                    db.SaveChanges();
                    return Json(true, JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception)
            {

                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }
    }
}