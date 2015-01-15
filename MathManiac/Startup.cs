using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MathManiac.Startup))]
namespace MathManiac
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
