using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FikrGroupCms.Controllers
{
    public class successController : Controller
    {
        // GET: success
        public ActionResult Index(string trackid="",string TranID="",string PaymentID="",string RefID="")
        {
            return View();
        }
    }
}