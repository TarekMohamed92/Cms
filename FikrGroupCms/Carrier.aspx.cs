using EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personality
{
    public partial class Carrier : System.Web.UI.Page
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
                var data = db.JobsTBs.Where(x => x.SectionId == 1).ToList();
                //htitle.InnerHtml = data.ArTitle;
                //ptextcareer.InnerHtml = data.ArDescription;
                //imgcareer.Src = data.Image;
                lstjobs.DataSource = data;
                lstjobs.DataBind();
                var section = db.JobsTBs.Where(x => x.SectionId == 2).FirstOrDefault();
                psectiondescription.InnerHtml = section.ArDescription;
                hsectiontitle.InnerHtml = section.ArTitle;
            }
        }
    }
}