using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Survey.Startup))]
namespace Survey
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
