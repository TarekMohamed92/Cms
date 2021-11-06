using EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FikrGroupCms
{
    public partial class service_details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    try
                    {
                        int i = int.Parse(Request.QueryString["id"].ToString());
                        LoadData(i);
                    }
                    catch (Exception)
                    {
                        Response.Redirect("~/Default.aspx");
                        return;
                    }
                }
                else
                {
                    Response.Redirect("~/index.aspx");
                    return;
                }
            }


        }

        private void LoadData(int id)
        {
            using (var db = new PersonalityDBEntities())
            {
                // var data = db.Services.FirstOrDefault(x => x.Id == id);
                List<EF.Service> collection = db.Services.Where(x => x.Id == id).ToList();
                lstServices.DataSource = collection;
                lstServices.DataBind();

                List<EF.AdvertismentTB> adv = db.AdvertismentTBs.Where(x => x.SectionId == 1).ToList();
                lstAdvertise.DataSource = adv;
                lstAdvertise.DataBind();

                List<EF.LayoutTB> social = db.LayoutTBs.Where(x => x.SectionId == 1).ToList();
                lstSocial.DataSource = social;
                lstSocial.DataBind();
            }
        }
    }
}