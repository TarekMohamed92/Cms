using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FikrGroupCms.Startup))]
namespace FikrGroupCms
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
