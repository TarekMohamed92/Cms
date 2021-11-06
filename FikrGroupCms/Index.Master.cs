using EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personality
{
    public partial class Index : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }
        public void LoadData()
        {
            using (var db = new PersonalityDBEntities())
            {
                List<EF.LayoutTB> layout = db.LayoutTBs.Where(x => x.SectionId == 1).ToList();
                lstSocial.DataSource = layout;
                lstSocial.DataBind();
                lstSocial2.DataSource = layout;
                lstSocial2.DataBind();
                //List<EF.LayoutTB> links = db.LayoutTBs.Where(x => x.SectionId == 14).ToList();
                //lstLinks.DataSource = links;
                //lstLinks.DataBind();
                //List<EF.LayoutTB> footerData = db.LayoutTBs.Where(x => x.SectionId >= 8 && x.SectionId <= 12).ToList();
                List<EF.ContactsTB> footerData = db.ContactsTBs.ToList();
                contactMail.InnerHtml = footerData.FirstOrDefault(x => x.SectionId == 1).ArTitle;
                contactMail2.InnerHtml = footerData.FirstOrDefault(x => x.SectionId == 1).ArTitle;
                contactAddress.InnerHtml = footerData.FirstOrDefault(x => x.SectionId == 2).ArTitle;
                contactPhone.InnerHtml = footerData.FirstOrDefault(x => x.SectionId == 3).ArTitle;
                contactPhone2.InnerHtml = footerData.FirstOrDefault(x => x.SectionId == 3).ArTitle;
                //contactHeader.InnerHtml = footerData.FirstOrDefault(x => x.SectionId == 10).ArTitle;
                //contactDesc.InnerHtml = footerData.FirstOrDefault(x => x.SectionId == 10).ArDescription;
                //topHeader.InnerHtml = footerData.FirstOrDefault(x => x.SectionId == 9).ArTitle;
                topDesc.InnerHtml = footerData.FirstOrDefault(x => x.SectionId == 5).ArTitle;
                //get header Data
                //var headerdata = db.LayoutTBs.Where(i => i.SectionId >= 6 && i.SectionId <= 7).ToList();
                //head1title.InnerHtml = headerdata.FirstOrDefault(x => x.SectionId == 6).ArTitle;
                //head1desc.InnerHtml = headerdata.FirstOrDefault(x => x.SectionId == 6).ArDescription;
                //head2title.InnerHtml = headerdata.FirstOrDefault(x => x.SectionId == 7).ArTitle;
                //head2desc.InnerHtml = headerdata.FirstOrDefault(x => x.SectionId == 7).ArDescription;
                //var footerdata = db.LayoutTBs.Where(i => i.SectionId >= 9 && i.SectionId <= 12).ToList();
                //lstfooter.DataSource = footerdata;
                //lstfooter.DataBind();
                //var data = db.LayoutTBs.Where(i => i.SectionId >= 1 && i.SectionId <= 5).ToList();
                //facebookmaster.HRef = data.FirstOrDefault(x => x.SectionId == 1).Link;
                //twittermaster.HRef = data.FirstOrDefault(x => x.SectionId == 2).Link;
                //vkmaster.HRef = data.FirstOrDefault(x => x.SectionId == 3).Link;
                ////inst.HRef = data.FirstOrDefault(x => x.SectionId == 1).Link;
                //rssmaster.HRef = data.FirstOrDefault(x => x.SectionId == 5).Link;
                List<EF.ConsultantTB> consult = db.ConsultantTBs.Where(x => x.SectionId == 1).OrderByDescending(z => z.Id).Skip(0).Take(6).ToList();
                lstGallary.DataSource = consult;
                lstGallary.DataBind();
            }
        }

        protected void lnklang_ServerClick(object sender, EventArgs e)
        {
            //if (lnklang.Text.Contains("English"))//get arabic version
            //{
            //    Session["lang"] = "en";
            //}
            //else //get english
            //{
            //    Session["lang"] = "ar";
            //}
            //Response.Redirect(Request.RawUrl);
        }
    }
}