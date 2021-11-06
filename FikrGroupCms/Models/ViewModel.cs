using EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FikrGroupCms.Models
{
    public class ViewModel
    {
        public List<IndexTB> IndexTB { get; set; }
        public List<LayoutTB> LayoutTB { get; set; }
        public List<ContactsTB> ContactsTB { get; set; }
        public List<AboutTB> AboutTB { get; set; }
        public List<ProductsTB> ProductsTB { get; set; }
        public List<NewsTB> NewsTB { get; set; }
        public List<EF.Service> ServicesTB { get; set; }
        public List<TypeTB> TypeTB { get; set; }
        public string Page { get; set; }
    }
}