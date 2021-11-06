using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using EF;
using FikrGroupCms.Models;
using System.Net;
using System.Text.RegularExpressions;
using System.Net.Http;
using System.Text;
using System.IO;

namespace FikrGroupCms.Controllers
{
    public class HomeController : BaseController
    {
        private static readonly HttpClient client = new HttpClient();

        public ActionResult Index()
        {
            ViewModel data = new ViewModel();
            using (var db = new PersonalityDBEntities())
            {
                var collecion = db.NewsTBs.ToList();
                List<NewsTB> newsTb = new List<NewsTB>();
                foreach (var item in collecion)
                {
                    newsTb.Add(new NewsTB() { Id = item.Id, EnTitle = item.EnTitle, ArTitle = item.ArTitle, EnDescription = StripHTML(item.EnDescription).Length > 50 ? StripHTML(item.EnDescription).Substring(0, 49) : StripHTML(item.EnDescription), ArDescription = StripHTML(item.ArDescription).Length > 50 ? StripHTML(item.ArDescription).Substring(0, 49) : StripHTML(item.ArDescription), Date = item.Date, Image = item.Image });
                }
                data.IndexTB = db.IndexTBs.ToList();
                data.AboutTB = db.AboutTBs.ToList();
                data.ServicesTB = db.Services.ToList();
                data.ProductsTB = db.ProductsTBs.Include("TypeTB").ToList();
                data.NewsTB = newsTb;
                data.TypeTB = db.TypeTBs.ToList();
                ViewBag.Page = "Index";
            }
            return View(data);
        }
        public ActionResult Payment(int id = 0, int str = 0)
        {
            int _min = 1000;
            int _max = 9999;
            Random _rdm = new Random();
            int ordNum = _rdm.Next(_min, _max);
            //// using System.Net;
            //ServicePointManager.Expect100Continue = true;
            //ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
            //// Use SecurityProtocolType.Ssl3 if needed for compatibility reasons
            //var request = (HttpWebRequest)WebRequest.Create("https://www.knetpaytest.com.kw/CGW302/servlet/PaymentInitHTTPServlet");
            //string successUrl = "http://www.csfss-kw.com/Response.aspx";
            //string errorUrl = "http://www.csfss-kw.com/error.aspx";
            //var postData = "id=365101";
            //postData += "&password=365101";
            //postData += "&action=1";
            //postData += "&amt=" + id.ToString();
            //postData += "&currencycode=414";
            //postData += "&langid=ENG";
            //postData += "&responseURL="+ successUrl;
            //postData += "&errorURL="+errorUrl;
            //postData += "&trackId="+ (new Random().Next(10000000) + 1).ToString(); ;
            //var data = Encoding.ASCII.GetBytes(postData);

            //request.Method = "POST";
            //request.ContentType = "application/x-www-form-urlencoded";
            //request.ContentLength = data.Length;

            //using (var stream = request.GetRequestStream())
            //{
            //	stream.Write(data, 0, data.Length);
            //}

            //var response = (HttpWebResponse)request.GetResponse();

            //var responseString = new StreamReader(response.GetResponseStream()).ReadToEnd();
            //return Redirect("https://www.knetpaytest.com.kw:443/CGW302/hppaction?formAction=com.aciworldwide.commerce.gateway.payment.action.HostedPaymentPageAction&?PaymentID="+ responseString.Split(':')[0]);
            var url = myfatoorhDAL.CreateInvoice(id, ordNum, str);
            return Redirect(url);
        }
        public ActionResult Default()
        {
            return Redirect("~/Index.aspx");
        }
        public ActionResult About()
        {
            //ViewBag.Message = "Your application description page.";
            ViewModel data = new ViewModel();
            using (var db = new PersonalityDBEntities())
            {
                //data.IndexTB = db.IndexTBs.ToList();
                data.AboutTB = db.AboutTBs.ToList();
                //data.ServicesTB = db.Services.ToList();
                //data.ProductsTB = db.ProductsTBs.Include("TypeTB").ToList();
                //data.NewsTB = db.NewsTBs.ToList();
                //data.TypeTB = db.TypeTBs.ToList();
                //ViewBag.Page = "Index";
            }
            return View(data);

            //            return View();
        }
        public ActionResult Service()
        {
            //ViewBag.Message = "Your application description page.";
            ViewModel data = new ViewModel();
            using (var db = new PersonalityDBEntities())
            {
                data.AboutTB = db.AboutTBs.ToList();
            }
            return View(data);
        }
        public ActionResult Works()
        {
            //ViewBag.Message = "Your application description page.";
            ViewModel data = new ViewModel();
            using (var db = new PersonalityDBEntities())
            {
                //data.IndexTB = db.IndexTBs.ToList();
                //data.AboutTB = db.AboutTBs.ToList();
                //data.ServicesTB = db.Services.ToList();
                data.ProductsTB = db.ProductsTBs.Include("TypeTB").ToList();
                //data.NewsTB = db.NewsTBs.ToList();
                data.TypeTB = db.TypeTBs.ToList();
                //ViewBag.Page = "Index";
            }
            return View(data);

            //            return View();
        }
        public ActionResult News()
        {
            //ViewBag.Message = "Your application description page.";
            ViewModel data = new ViewModel();

            using (var db = new PersonalityDBEntities())
            {
                var collecion = db.NewsTBs.ToList();
                List<NewsTB> newsTb = new List<NewsTB>();
                foreach (var item in collecion)
                {
                    newsTb.Add(new NewsTB() { Id = item.Id, EnTitle = item.EnTitle, ArTitle = item.ArTitle, EnDescription = StripHTML(item.EnDescription).Length > 50 ? StripHTML(item.EnDescription).Substring(0, 49) : StripHTML(item.EnDescription), ArDescription = StripHTML(item.ArDescription).Length > 50 ? StripHTML(item.ArDescription).Substring(0, 49) : StripHTML(item.ArDescription), Date = item.Date, Image = item.Image });
                }
                //data.IndexTB = db.IndexTBs.ToList();
                //data.AboutTB = db.AboutTBs.ToList();
                //data.ServicesTB = db.Services.ToList();
                //data.ProductsTB = db.ProductsTBs.Include("TypeTB").ToList();
                data.NewsTB = newsTb;
                //data.TypeTB = db.TypeTBs.ToList();
                //ViewBag.Page = "Index";
            }
            return View(data);

            //            return View();
        }
        public string StripHTML(string input)
        {
            return Regex.Replace(input, "<.*?>", " ");
        }
        public ActionResult NewsDetails(int id)
        {
            //ViewBag.Message = "Your application description page.";
            //ViewModel data = new ViewModel();
            using (var db = new PersonalityDBEntities())
            {
                //data.IndexTB = db.IndexTBs.ToList();
                //data.AboutTB = db.AboutTBs.ToList();
                //data.ServicesTB = db.Services.ToList();
                //data.ProductsTB = db.ProductsTBs.Include("TypeTB").ToList();
                //data.NewsTB = db.NewsTBs.ToList();
                //data.TypeTB = db.TypeTBs.ToList();
                //ViewBag.Page = "Index";
                var data = db.NewsTBs.Find(id);
                return View(data);

            }

            //            return View();
        }
        public ActionResult Contact(int id = 0)
        {
            ViewModel data = new ViewModel();
            //ViewBag.Message = "Your contact page.";
            using (var db = new PersonalityDBEntities())
            {
                ViewBag.suc = "none";
                ViewBag.ero = "none";
                if (id == 99)
                {
                    ViewBag.suc = "block";
                }
                if (id == 13)
                {
                    ViewBag.ero = "block";
                }
                //data.IndexTB = db.IndexTBs.ToList();
                //data.AboutTB = db.AboutTBs.ToList();
                //data.ServicesTB = db.Services.ToList();
                //data.ProductsTB = db.ProductsTBs.Include("TypeTB").ToList();
                //data.NewsTB = db.NewsTBs.ToList();
                data.ContactsTB = db.ContactsTBs.ToList();
                data.LayoutTB = db.LayoutTBs.ToList();
                //ViewBag.Page = "Index";
                //var data = db.NewsTBs.Find(id);
                //return View(data);

            }
            return View(data);
        }
        [HttpPost]
        public ActionResult Contact(string name, string email, string subject, string message)
        {
            try
            {
                //ViewModel data = new ViewModel();
                //ViewBag.Message = "Your contact page.";
                using (var db = new PersonalityDBEntities())
                {
                    var data = db.ContactsTBs.FirstOrDefault(x => x.SectionId == 1);
                    string body = "From: " + name + "\n";
                    body += "Email: " + email + "\n";
                    body += "Subject: " + subject + "\n";
                    body += "Message: \n" + message + "\n";
                    // smtp settings
                    var smtp = new System.Net.Mail.SmtpClient();
                    {
                        smtp.Host = "smtp.gmail.com";
                        smtp.Port = 587;
                        smtp.EnableSsl = true;
                        smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                        smtp.Credentials = new NetworkCredential("sowadenasmtp@gmail.com", "123456789Ss");
                        smtp.Timeout = 70000;
                    }
                    // Passing values to smtp object
                    smtp.Send(email, data.ArTitle, subject, body);
                    //data.IndexTB = db.IndexTBs.ToList();
                    //data.AboutTB = db.AboutTBs.ToList();
                    //data.ServicesTB = db.Services.ToList();
                    //data.ProductsTB = db.ProductsTBs.Include("TypeTB").ToList();
                    //data.NewsTB = db.NewsTBs.ToList();
                    //data.ContactsTB = db.ContactsTBs.ToList();
                    // data.LayoutTB = db.LayoutTBs.ToList();
                    //ViewBag.Page = "Index";
                    //var data = db.NewsTBs.Find(id);
                    //return View(data);

                }
                return RedirectToAction("Contact", new { id = 99 });
            }
            catch (Exception)
            {

                return RedirectToAction("Contact", new { id = 13 });
            }
        }
        /// <summary>
        /// Dashboard
        /// </summary>
        /// <returns></returns>
        public ActionResult Dashboard()
        {
            using (var db = new PersonalityDBEntities())
            {
                ViewBag.dt1 = db.ProductsTBs.Count();
                ViewBag.dt2 = db.NewsTBs.Count();
                ViewBag.dt3 = db.Services.Count();
            }
            return View();
        }
    }
}