<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="result.aspx.cs" Inherits="BuyUsedCar.result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sell & Buy Used Car</title>
    <link rel="icon" type="image/x-icon" href="Image/favicon.ico"/>
    <link rel="stylesheet" href="Style/Style.css" />
    <style>
        .container {
            padding: 0;
            height: 100%;
            width: 100%;
        }

        .card {
            background-color: rgb(255, 255, 255, 0.85);
            width: 80%;
            height: 80%;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            position:absolute;
            border-radius: 12px;
        }

        .card-content {
            width: 90%;
            height: 75%;
            display: flex;
            align-items: center;
            justify-content: space-around;
            margin: auto;
        }

        .table-cell {
            padding: 16px 24px;
            font-size: 1.4em;
        }

        .car-content {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 1.5em;
        }

        .car-content__text, .car-content__text #Label5{
            font-size: 2em;
            color: #333231;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card">
            <h1 style="text-align:center; padding:50px 0 0 0;"><asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></h1>
            <div class="card-content">
                <form id="form1" runat="server">
                    <asp:Table ID="Table1" runat="server"
                        GridLines="Both"
                        HorizontalAlign="Left" CssClass="table">
                        <asp:TableRow>
                            <asp:TableCell CssClass="table-cell" colspan="2" HorizontalAlign="Center" BackColor="#cccccc">
                                <b>Car Information</b>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="table-cell">
                                <b>Car Name</b>
                            </asp:TableCell>
                            <asp:TableCell CssClass="table-cell">
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="table-cell">
                                <b>Car Year</b>
                            </asp:TableCell>
                            <asp:TableCell CssClass="table-cell">
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="table-cell">
                                <b>Car Transmission</b>
                            </asp:TableCell>
                            <asp:TableCell CssClass="table-cell">
                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="table-cell">
                                <b>Car Price</b>
                            </asp:TableCell>
                            <asp:TableCell CssClass="table-cell">
                                RM <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>

                </form>
                <div class="car-content">
                    <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl="~/Image/0.png" />
                    <h1 class="car-content__text">RM <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></h1>
                </div>
            </div>
            <h2 style="text-align:center;"><a href="index.aspx" style="color:#1586db;">Calculate Again</a></h2>
        </div>
    </div>
</body>
</html>
