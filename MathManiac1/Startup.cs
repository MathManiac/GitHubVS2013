using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MathManiac1.Startup))]
namespace MathManiac1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
