using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FullFrameworkAspNetWebFormsTesting.Startup))]
namespace FullFrameworkAspNetWebFormsTesting
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
