using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GestionStock.Startup))]
namespace GestionStock
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
