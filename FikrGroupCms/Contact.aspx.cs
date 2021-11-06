using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EF;
using System.Net;

namespace Personality
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                message.InnerHtml = "";
                phone.Value = "";
                name.Value = "";
                email.Value = "";
                LoadData();
            }
        }
        public void LoadData()
        {
            using (var db = new PersonalityDBEntities())
            {
                //get header Data
                List<EF.ContactsTB> data = db.ContactsTBs.ToList();
                spnAddress.InnerHtml = data.FirstOrDefault(x => x.SectionId == 2).ArTitle;
                spnPhones.InnerHtml = data.FirstOrDefault(x => x.SectionId == 3).ArTitle;
                spnEmail.InnerHtml = data.FirstOrDefault(x => x.SectionId == 1).ArTitle;
                //List<EF.AdvertismentTB> adv = db.AdvertismentTBs.Where(x => x.SectionId == 1).ToList();
                //lstAdvertise.DataSource = adv;
                //lstAdvertise.DataBind();

                //List<EF.LayoutTB> social = db.LayoutTBs.Where(x => x.SectionId == 1).ToList();
                //lstSocial.DataSource = social;
                //lstSocial.DataBind();

                //var data = db.LayoutTBs.Where(i => i.SectionId >= 1 && i.SectionId <= 6).ToList();
                //w3_contact_facebook.HRef = data.FirstOrDefault(x => x.SectionId == 1).Link;
                //w3_contact_twitter.HRef = data.FirstOrDefault(x => x.SectionId == 2).Link;
                //w3_contact_instagram.HRef = data.FirstOrDefault(x => x.SectionId == 4).Link;
                //w3_contact_google.HRef = data.FirstOrDefault(x => x.SectionId == 6).Link;
                ////inst.HRef = data.FirstOrDefault(x => x.SectionId == 1).Link;
                //w3_contact_rss.HRef = data.FirstOrDefault(x => x.SectionId == 5).Link;
            }
        }

        protected void contactbtn_ServerClick(object sender, EventArgs e)
        {
            using (var db = new PersonalityDBEntities())
            {
                string fromAddress = email.Value;
                string toAddress = db.ContactsTBs.FirstOrDefault(x => x.SectionId == 1).ArTitle;
                //string subject = "سبب اخر";
                string body = "From: " + name.Value + "\n";
                body += "Email: " + email.Value + "\n";
                body += "Phone: " + phone.Value + "\n";
                body += "Message: \n" + message.InnerHtml + "\n";
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
                smtp.Send(fromAddress, toAddress, phone.Value, body);
                message.InnerHtml = "";
                phone.Value = "";
                name.Value = "";
                email.Value = "";
            }
        }
    }
}