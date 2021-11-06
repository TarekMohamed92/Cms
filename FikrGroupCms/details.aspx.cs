using EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personality
{
    public partial class details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int i = int.Parse(Request.QueryString["id"].ToString());
                LoadData(i);
            }
        }
        private void LoadData(int id)
        {
            using (var db = new PersonalityDBEntities())
            {
                // var data = db.Services.FirstOrDefault(x => x.Id == id);
                List<EF.NewsTB> collection = db.NewsTBs.Where(x => x.Id == id).ToList();
                ListView1.DataSource = collection;
                ListView1.DataBind();

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