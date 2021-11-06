using EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FikrGroupCms
{
    public partial class gallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            LoadData();
        }
        public void LoadData()
        {
            using (var db = new PersonalityDBEntities())
            {
                List<EF.IndexTB> collection = db.IndexTBs.Where(i => i.SectionId == 3 || i.SectionId == 4).ToList();
                lstGallary.DataSource = collection;
                lstGallary.DataBind();

                //List<EF.AdvertismentTB> adv = db.AdvertismentTBs.Where(x => x.SectionId == 1).ToList();
                //lstAdvertise.DataSource = adv;
                //lstAdvertise.DataBind();

                //List<EF.LayoutTB> social = db.LayoutTBs.Where(x => x.SectionId == 1).ToList();
                //lstSocial.DataSource = social;
                //lstSocial.DataBind();
            }
        }
    }
}