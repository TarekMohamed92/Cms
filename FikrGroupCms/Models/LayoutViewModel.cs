using EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FikrGroupCms.Models
{
    public class BaseController : Controller
    {
        public BaseController()
        {
            using (var db = new PersonalityDBEntities())
            {
                var collecion = db.NewsTBs.ToList();
                List<NewsTB> newsTb = new List<NewsTB>();
                foreach (var item in collecion)
                {
					try
					{
						newsTb.Add(new NewsTB() { Id = item.Id, EnTitle = item.EnTitle, ArTitle = item.ArTitle, EnDescription = item.EnDescription.Length > 50 ? item.EnDescription.Substring(0, 49) : item.EnDescription, ArDescription = item.ArDescription.Length > 50 ? item.ArDescription.Substring(0, 49) : item.ArDescription, Date = item.Date, Image = item.Image });
					}
					catch (Exception)
					{

						//throw;
					}
                }
                ViewBag.MasterNews = newsTb.OrderByDescending(x => x.Id).Take(3).ToList();
                ViewBag.MasterImages = db.ProductsTBs.OrderByDescending(x => x.Id).Take(6).ToList();
                ViewBag.MasterContact = db.ContactsTBs.ToList();
                ViewBag.MasterAbouts = db.AboutTBs.ToList();
                ViewBag.MasterSocial = db.LayoutTBs.Where(x=> x.SectionId == 1).ToList();
            }
        }
    }
}