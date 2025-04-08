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
            <asp:Label ID="lblHeader" runat="server" Text="Soccer" Font-Size="XX-Large" Font-Bold="True" />
            <br /><br />

            <!-- Intro Paragraph -->
            <asp:Label ID="lblIntro" runat="server" Text="Soccer, also known as football in many countries, is a sport I deeply enjoy. It brings people together and teaches teamwork and discipline." />
            <br /><br />

            <!-- Soccer Ball Image -->
            <asp:Image ID="imgSoccerBall" runat="server" ImageUrl="~/Images/soccer_ball.jpg" AlternateText="A soccer ball" Width="300px" />
            <br /><br />

            <!-- Reasons Title -->
            <asp:Label ID="lblReasonsHeader" runat="server" Text="Some of the reasons why people love Soccer" Font-Size="Large" Font-Bold="True" />

            <!-- Reasons List -->
            <asp:BulletedList ID="blReasons" runat="server">
                <asp:ListItem>It's a global sport enjoyed by millions, which makes it accessible to people of all ages and backgrounds.</asp:ListItem>
                <asp:ListItem>It has a sense of community; watching and supporting your team fosters a strong sense of belonging.</asp:ListItem>
                <asp:ListItem>Soccer has many historic rivalries such as El Clasico (match between Barcelona and Real Madrid) which adds intensity to the sport and fuels fan passion.</asp:ListItem>
                <asp:ListItem>Soccer has cultural significance, serving as a symbol of national pride and transcending cultural and language barriers.</asp:ListItem>
            </asp:BulletedList>

            <!-- Favorite Team -->
            <asp:Label ID="lblFavoriteTeam" runat="server" Text="My Favorite Team" Font-Size="Large" Font-Bold="True" />
            <br />
            <asp:Label ID="lblTeamDesc" runat="server" Text="FC Barcelona is my favorite team, and I have been a fan since I was young. Their rich history and incredible players inspire me every day." />
            <br /><br />
            <asp:Image ID="imgBarcelonaLogo" runat="server" ImageUrl="~/Images/fc_barcelona_logo.jpg" AlternateText="FC Barcelona Logo" Width="300px" />
            <br /><br />

            <!-- Favorite Players Title -->
            <asp:Label ID="lblFavPlayers" runat="server" Text="Some of my Favorite Soccer Players" Font-Size="Large" Font-Bold="True" />

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
