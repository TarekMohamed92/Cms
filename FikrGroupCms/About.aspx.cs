using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EF;
using System.Data.Entity;

namespace Personality
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadData();
        }
        public void LoadData()
        {
            using (var db = new PersonalityDBEntities())
            {
                var data = db.AboutTBs.Where(x => x.SectionId == 1).FirstOrDefault();
                htitle.InnerHtml = data.ArTitle;
                ptext.InnerHtml = data.ArDescription;
                //imgcareer.Src = data.Image;
                //var section = db.AboutTBs.Where(x => x.SectionId == 2).FirstOrDefault();
                //psectiondescription.InnerHtml = section.ArDescription;
                //hsectiontitle.InnerHtml = section.ArTitle;
            }
        }
    }
}