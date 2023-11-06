<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BuyUsedCar.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sell & Buy Used Car</title>
    <link rel="icon" type="image/x-icon" href="Image/favicon.ico"/>
    <link rel="stylesheet" href="Style/Style.css" />
    <style>
        .container {
            padding-inline: 64px;
            display: flex;
            align-items:center;
            height: 100%;
            justify-content: space-around;
            flex-wrap: wrap;
        }

        .card {
            background-color: rgb(255, 255, 255, 0.85);
            position: relative;
            width: auto;
            height: auto;
            padding: 3em 2em;
            border-radius: 10px;
            margin: 24px;
        }

        #form1 {
            position: relative;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .content-box label {
            font-size: 0.8em;
        }

        .content-box {
            display: flex;
            gap: 16px;
            margin-top: 20px;
        }

        .input {
            padding-inline: 8px;
            margin-top: 4px;
            width: 240px;
            height: auto;
            padding-top: 16px;
            padding-bottom: 16px;
            border-radius: 5px;
            border: 1px #333231 solid;
            background-color: rgba(0,0,0,0);
            font-size: 1em;
        }

        .text {
            width: 40vw;
        }

         h1 {
             font-size: 4em;
             font-weight: bold;
             color: white;
             margin-bottom: 0.5em;
         }

         p {
             color:white;
             line-height: 1.5;
             width: 30vw;
             font-size: 1em;
             
         }

         .socials {
             display: flex;
             width: 23rem;
             justify-content: left;
             gap: 2em;
             margin-top: 30px;
             align-items: center;
         }

         .socials a .icon { 
             width: 24px;
         }

    </style>
</head>
<body>
    <div class="container">
        <div class="card">
            <form id="form1" runat="server">
                <h2 style="margin-bottom: 32px">Calculate Car Price</h2>
                <div class="content-box">
                    <div class="input-box">
                        <label>First Name</label><br />
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Your First Name" CssClass="input"></asp:TextBox>
                    </div>
                    <div>
                        <label></label><br />
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Your Last Name" CssClass="input"></asp:TextBox>
                    </div>
                </div>
                <div class="content-box">
                    <div class="input-box">
                        <label>Email</label><br />
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="Your Email" CssClass="input" Width="512px"></asp:TextBox>
                    </div>
                </div>
                <div class="content-box">
                    <div class="input-box">
                        <label>Phone Number</label><br />
                        <asp:TextBox ID="TextBox4" runat="server" placeholder="Your Phone Number" CssClass="input"></asp:TextBox>
                    </div>
                    <div>
                        <label>Hometown</label><br />
                        <asp:TextBox ID="TextBox5" runat="server" placeholder="Where do you live?" CssClass="input"></asp:TextBox>
                    </div>
                </div>
                <div class="content-box">
                    <div class="input-box">
                        <label>Car Model</label><br />
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="input" Width="532px">
                            <asp:ListItem Value="null">Choose Your Car Model</asp:ListItem>
                            <asp:ListItem Value="0">Proton X50</asp:ListItem>
                            <asp:ListItem Value="1">Honda Civic</asp:ListItem>
                            <asp:ListItem Value="2">Mercedes-AMG A45</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="content-box">
                    <div>
                        <label>Car Year</label><br />
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="input" Width="258px">
                            <asp:ListItem Value="null">Select Car Year</asp:ListItem>
                            <asp:ListItem>2021</asp:ListItem>
                            <asp:ListItem>2020</asp:ListItem>
                            <asp:ListItem>2019</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div>
                        <label>Car Transmission</label><br />
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="input" Width="258px">
                            <asp:ListItem Value="null">Select Car Transmission</asp:ListItem>
                            <asp:ListItem>Automatic</asp:ListItem>
                            <asp:ListItem>Manual</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div style="width: 100%; margin-top: 32px;">
                    <asp:CheckBox ID="CheckBox1" runat="server"/>
                    <label for="CheckBox1">Get latest new from us via email</label>
                </div>
            
                <asp:Button ID="Button1" runat="server" Text="Get Your Car Price" CssClass="button" OnClick="Button1_Click" />
            </form>
        </div>

        <div class="text">
            <h1>Sell & Buy Used Car</h1>
            <p>
                Discover our website for instant and accurate car value calculations.
                Whether you're buying, selling, or just curious, our user-friendly platform
                provides up-to-date car prices based on make, model, year, mileage, condition,
                and market trends. Make informed decisions with ease, and never second-guess
                car values again. Our commitment to transparency and reliability ensures you
                have the most trustworthy resource at your fingertips for all your
                automotive pricing needs. Join our community of satisfied users and
                experience the difference today.
            </p>
            <div class="socials">
                <a href="https://www.instagram.com/nadim.hairi/" target="_blank">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/instagram-logo.png" CssClass="icon" />
                </a>
                <a href="https://www.facebook.com/nadim.hairi.9/" target="_blank">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/facebook-logo.png" CssClass="icon" />
                </a>
                <a href="https://www.youtube.com/@nadimhairi6206" target="_blank">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/Image/youtube-logo.png" CssClass="icon" />
                </a>
                <a href="https://www.linkedin.com/in/nadim-hairi-b0a29a223/" target="_blank">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/Image/linkedin-logo.png" CssClass="icon" />
                </a>
            </div>
        </div>
    </div>
</body>
</html>
