
<!--
# File Name : Sangroba_Assignment 10
# Student Name: Bidhya Sangroula
# email: sangroba@mail.uc.edu
# Assignment Number: Assignment 10
# Due Date:  04/10/2025
# Course #/Section: IS 3050 Section 001
# Semester/Year:   Spring/2025
# Brief Description of the assignment:
    This assignment creates a personal interest webpage using ASP.NET Web Forms, incorporating text, images, a bulleted list, a GridView, and a link to an external website.
# Brief Description of what this module does:
    The module displays a soccer-themed page with labeled sections, an image gallery, and a GridView showing favorite players. It binds data dynamically and includes a link to FIFA.com for further learning.
# Citations:
    https://stackoverflow.com/questions/74737328/gridview-and-showing-a-panel-c-sharp-and-asp-net
    https://stackoverflow.com/questions/14034960/how-to-make-linkbutton-function-as-hyperlink
# Anything else that's relevant:
-->
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="My Interest.aspx.cs" Inherits="Sangroba_Assignment10.My_Interest" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Interest - Soccer</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Header -->
            <header>
                <h1>Soccer</h1>
            </header>

            <!-- Intro Paragraph -->
            <p>Soccer, also known as football in many countries, is a sport I deeply enjoy. It brings people together and teaches teamwork and discipline.</p>

            <!-- Soccer Ball Image -->
            <asp:Image ID="imgSoccerBall" runat="server" ImageUrl="~/Images/soccer_ball.jpg" AlternateText="A soccer ball" Width="300px" />
            <br /><br />

            <!-- Reasons Title -->
            <h2>Some of the reasons why people love Soccer</h2>

            <!-- Reasons List -->
            <ul>
                <li>It's a global sport enjoyed by millions, which makes it accessible to people of all ages and backgrounds.</li>
                <li>It has a sense of community; watching and supporting your team fosters a strong sense of belonging.</li>
                <li>Soccer has many historic rivalries such as El Clasico (match between Barcelona and Real Madrid) which adds intensity to the sport and fuels fan passion.</li>
                <li>Soccer has cultural significance, serving as a symbol of national pride and transcending cultural and language barriers.</li>
            </ul>

            <!-- Favorite Team -->
            <h2>My Favorite Team</h2>
            <asp:Label ID="lblTeamDesc" runat="server" Text="FC Barcelona is my favorite team, and I have been a fan since I was young. Their rich history and incredible players inspire me every day." />
            <br /><br />
            <asp:Image ID="imgBarcelonaLogo" runat="server" ImageUrl="~/Images/fc_barcelona_logo.jpg" AlternateText="FC Barcelona Logo" Width="300px" />
            <br /><br />

            <!-- Favorite Players Title -->
            <h3>Some of my Favorite Soccer Players</h3>
            <!-- Players GridView -->
            <asp:GridView ID="gvPlayers" runat="server" AutoGenerateColumns="False" BorderWidth="1px">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Country" HeaderText="Country" />
                    <asp:BoundField DataField="Position" HeaderText="Position" />
                    <asp:TemplateField HeaderText="Photo">
                        <ItemTemplate>
                            <asp:Image ID="imgPlayer" runat="server" ImageUrl='<%# "~/Images/" + Eval("Photo") %>' Width="150px" AlternateText='<%# Eval("Name") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

            <!-- Position Info Section -->
            <details>
                <summary>Types of Position In Soccer</summary>
                <asp:Label ID="lblDefenders" runat="server" Text="Defenders: Defensive positions are made up of players who are primarily responsible for protecting their team's goal." /><br />
                <asp:Label ID="lblMidfielders" runat="server" Text="Midfielders: The midfielders are the link between the forwards and the defenders. They maintain control of the ball and must be able to run long distances and make quick decisions." /><br />
                <asp:Label ID="lblForwards" runat="server" Text="Forwards: A forward's primary responsibility is to score goals, but they also play a critical role in creating scoring opportunities for their teammates." /><br />
                <asp:Label ID="lblLearnMore1" runat="server" Text='<a href="https://www.soccer.com/guide/rules-of-soccer-guide" target="_blank">Learn more about the basic rules of soccer</a>.' /><br />
                <asp:Label ID="lblLearnMore2" runat="server" Text='<a href="https://www.soccer.com/guide/rules-of-soccer-guide" target="_blank">Learn more about positions of soccer</a>.' />
            </details>

            <br /><br />

            <!-- External Link Button -->
            <asp:LinkButton ID="lnkFifa" runat="server" OnClientClick="window.open('https://www.fifa.com', '_blank'); return false;">Visit FIFA.com</asp:LinkButton>
        </div>
    </form>
</body>
</html>
