using EF;
using PagedList;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Mvc;

namespace FikrGroupCms.Controllers
{
    [Authorize]
    public class Latest2Controller : Controller
    {
        private const string YoutubeLinkRegex = "(?:.+?)?(?:\\/v\\/|watch\\/|\\?v=|\\&v=|youtu\\.be\\/|\\/v=|^youtu\\.be\\/)([a-zA-Z0-9_-]{11})+";
        private static Regex regexExtractId = new Regex(YoutubeLinkRegex, RegexOptions.Compiled);
        // GET: Gallary
        // GET: Gallary
        public ActionResult Index(string searchString, int page = 1)
        {
            ViewBag.Section = "الفيديوهات";
            using (var db = new PersonalityDBEntities())
            {
                int pageSize = 5;
                var data = db.IndexTBs.Where(i => i.SectionId == 4).ToList();
                ViewBag.SearchString = searchString ?? "";
                if (searchString != null && searchString != "")
                {
                    data = data.Where(x => x.ArTitle.Contains(searchString)).ToList();
                }
                return Request.IsAjaxRequest()
                ? (ActionResult)PartialView("_PartialGallary2", data.ToPagedList(page, pageSize))
                : View(data.ToPagedList(page, pageSize));
            }
        }
        public string ExtractVideoIdFromUrl(string url)
        {
            //extract the id
            if (!url.Contains("https://www.youtube.com/embed/"))
            {
                var regRes = regexExtractId.Match(url);
                if (regRes.Success)
                {
                    return "https://www.youtube.com/embed/" + regRes.Groups[1].Value;
                }
                return null;
            }
            else
            {
                return url;
            }
        }
        [HttpGet]
        public ActionResult Create(int id = 0)
        {
            ViewBag.Section = "الفيديوهات";
            if (id == 0)
            {
                ViewBag.error = "";
            }
            else
            {
                ViewBag.error = "من فضلك قم باضافة رابط  فيديو";
            }
            return View();
        }
        [HttpPost, ValidateInput(false)]
        public ActionResult Create(IndexTB modelTb, HttpPostedFileBase file)
        {
            string abPath = "";
            using (var db = new PersonalityDBEntities())
            {
                //if (modelTb.Link != null && modelTb.Link != "")
                //{
                //    var uri = Request.Url.Scheme + "://" + Request.Url.Authority + Request.ApplicationPath.TrimEnd('/') + "/";
                //    string pic = DateTime.Now.ToString("yyyyMMddhhmmss") + System.IO.Path.GetExtension(file.FileName);
                //    string path = System.IO.Path.Combine(Server.MapPath("~/up/"), pic);
                //    abPath = "/up/" + pic;
                //    file.SaveAs(path);
                //}
                if (modelTb.Link != null && modelTb.Link != "")
                {

                    modelTb.SectionName = "Videos";
                    modelTb.SectionId = 4;
                    //modelTb.Image = abPath;
                    modelTb.Link = ExtractVideoIdFromUrl(modelTb.Link);
                    db.IndexTBs.Add(modelTb);
                    db.SaveChanges();
                    return RedirectToAction("index");
                }
                else
                {
                    return RedirectToAction("create", new { id = 99 });
                }

            }
        }
        public ActionResult Edit(int id)
        {
            ViewBag.Section = "الفيديوهات";
            using (var db = new PersonalityDBEntities())
            {
                var data = db.IndexTBs.Find(id);
                return View(data);
            }

        }
        [HttpPost, ValidateInput(false)]
        public ActionResult Edit(IndexTB modelTb, HttpPostedFileBase file)
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
                modelTb.Link = ExtractVideoIdFromUrl(modelTb.Link);
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
                    var data = db.IndexTBs.Find(id);
                    db.IndexTBs.Remove(data);
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