/*
# File Name : Sangroba_Assignment10
# Student Name: Bidhya Sangroula
# email: sangroba@mail.uc.edu
# Assignment Number: Assignment 10
# Due Date:  04/10/2025
# Course #/Section: IS 3050 Section 001
# Semester/Year:   Spring/2025
# Brief Description of the assignment:
    Creates an ASP.NET Web Forms page about a personal interest using text, images, and a GridView.
# Brief Description of what this module does:
    Binds a list of soccer players to a GridView on first page load.
# Citations:
# Anything else that's relevant:
*/
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