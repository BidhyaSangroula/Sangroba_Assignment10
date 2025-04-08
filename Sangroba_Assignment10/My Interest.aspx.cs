using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sangroba_Assignment10
{
    public partial class My_Interest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var players = new[]
                {
            new { Name = "Lionel Messi", Country = "Argentina", Position = "Forward", Photo = "messi.jpg" },
            new { Name = "Neymar Jr.", Country = "Brazil", Position = "Forward", Photo = "neymar.jpg" },
            new { Name = "Ronaldinho", Country = "Brazil", Position = "Midfielder", Photo = "ronaldinho.jpg" }
                };  

                gvPlayers.DataSource = players;
                gvPlayers.DataBind();
            }
        }
    }
}