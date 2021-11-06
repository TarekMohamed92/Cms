using EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personality
{
    public partial class Index1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CallDefaultLang();
                LoadData();
            }
        }
        protected void CallDefaultLang()
        {
            if (Session["lang"] == "" || Session["lang"] == null)
            {
                Session["lang"] = "ar";
                // Label lblMasterLAng = (Label)Master.FindControl("lnklang");
                // lblMasterLAng.Text = "English";
            }
            else
            {
                if (Session["lang"] == "en")
                {
                    // Label lblMasterLAng = (Label)Master.FindControl("lnklang");
                    // lblMasterLAng.Text = "عربي";
                }
                else
                {
                    //Label lblMasterLAng = (Label)Master.FindControl("lnklang");
                    // lblMasterLAng.Text = "English";

                }
            }
            // ChangeLang();
        }

        public void LoadData()
        {
            using (var db = new PersonalityDBEntities())
            {
                if (Session["lang"] == "ar")
                {
                    //List<EF.Service> collection = db.Services.Take(6).ToList();
                    //List<Service> lstservices = new List<Service>();
                    //foreach (var item in collection)
                    //{
                    //    lstservices.Add(new Service() { Id = item.Id, ArTitle = item.ArTitle, EnTitle = item.EnTitle, ArDescription = item.ArDescription != null ? item.ArDescription.Length > 50 ? item.ArDescription.Substring(0, 40) + "..." : item.ArDescription + "..." : "",EnDescription= item.EnDescription != null ? item.EnDescription.Length > 50 ? item.EnDescription.Substring(0, 40)+"..." : item.EnDescription + "..." : "" });
                    //}
                    //lstServices.DataSource = lstservices;
                    //lstServices.DataBind();


                    List<EF.IndexTB> sliders = db.IndexTBs.Where(x => x.SectionId == 1).ToList();
                    lstSlider.DataSource = sliders;
                    lstSlider.DataBind();

                    //EF.IndexTB topWinner = db.IndexTBs.FirstOrDefault(x => x.SectionId == 2);
                    //header1.InnerHtml = topWinner.ArTitle;
                    //desc1.InnerHtml = topWinner.ArDescription;

                    //List<EF.JobsTB> news = db.JobsTBs.Where(x => x.SectionId == 1).ToList();
                    //lstTeam.DataSource = news;
                    //lstTeam.DataBind();

                    List<EF.IndexTB> consult = db.IndexTBs.Where(i => i.SectionId == 3).OrderByDescending(z=> z.Id).Skip(0).Take(6).ToList();
                    lstGallary.DataSource = consult;
                    lstGallary.DataBind();

                    List<EF.NewsTB> adv = db.NewsTBs.Where(x => x.SectionId == 1).ToList();
                    lstNews.DataSource = adv;
                    lstNews.DataBind();

                    List<EF.AboutTB> aboutTB = db.AboutTBs.ToList();
                    ListViewAvoutList.DataSource = aboutTB.Where(x=> x.SectionId == 2).ToList();
                    ListViewAvoutList.DataBind();
                    txtAboutTitle.InnerHtml = aboutTB.FirstOrDefault(x => x.SectionId == 1).ArTitle;
                    txtAboutDesc.InnerHtml = aboutTB.FirstOrDefault(x => x.SectionId == 1).ArDescription;
                }
                else
                {
                    //lstproduts.DataSource = null;
                    //lstproduts.DataBind();

                    //lstslider.DataSource = null;
                    //lstslider.DataBind();

                    //lstlstest.DataSource = null;
                    //lstlstest.DataBind();

                    //lstnews.DataSource = null;
                    //lstnews.DataBind();

                    //List<EF.ProductsTB> products = db.ProductsTBs.Take(3).ToList();
                    //lstprodutsen.DataSource = products;
                    //lstprodutsen.DataBind();

                    //List<EF.IndexTB> sliders = db.IndexTBs.Where(x => x.SectionId == 1).ToList();
                    //lstslideren.DataSource = sliders;
                    //lstslideren.DataBind();

                    //List<EF.IndexTB> lastest = db.IndexTBs.Where(x => x.SectionId == 2).ToList();
                    //lstlstesten.DataSource = lastest;
                    //lstlstesten.DataBind();

                    //List<EF.NewsTB> news = db.NewsTBs.Where(x => x.SectionId == 1).ToList();
                    //lstnewsen.DataSource = news;
                    //lstnewsen.DataBind();

                    //var staticData = db.LayoutTBs.Where(x => x.SectionId == 13).ToList();
                    //hstaticnews.InnerHtml = staticData.FirstOrDefault(x => x.Id == 24).EnTitle;
                }

            }
        }
    }

}