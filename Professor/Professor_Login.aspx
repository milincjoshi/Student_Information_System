<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Professor_Login.aspx.cs" Inherits="Professor_Professor_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <!--Bootstrap Reference-->
    <link href="../Bootstrap/css/bootstrap-theme.css" rel="stylesheet" />
    <link href="../Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../Bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="../Bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!--CSS Reference-->
    <link href="../mainCss.css" rel="stylesheet" />
    
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
    <div class=" page-header fontsize_40 text-center font_header">
     Student Information Center   
    </div>
        <div class="container font_oswald fontsize_24 forecolor_darkblue">
        <div class="col-lg-12 col-md-12">
            <div class="col-lg-12 col-md-12 text-center">Professor Login</div>
        </div><div class="col-lg-12 col-md-12">&nbsp</div>
        <div class="col-lg-12 col-md-12 margin_top10">       
            <div class="col-lg-3 col-md-3"></div>
            <div class="col-lg-3 col-md-3">Username</div>
            <div class="col-lg-3 col-md-3"><asp:TextBox ID="Professor_username" runat="server" /></div>
            <div class="col-lg-3 col-md-3"></div>
        </div><div class="col-lg-12 col-md-12">&nbsp</div>
        <div class="col-lg-12 col-md-12">       
            <div class="col-lg-3 col-md-3"></div>
            <div class="col-lg-3 col-md-3">Password</div>
            <div class="col-lg-3 col-md-3"><asp:TextBox TextMode="Password" ID="Professor_password" runat="server" /></div>
            <div class="col-lg-3 col-md-3"></div>
        </div><div class="col-lg-12 col-md-12">&nbsp</div>
        <div class="col-lg-12 col-md-12">       
            <div class="col-lg-3 col-md-3"></div>
            <div class="col-lg-6 col-md-6"><asp:Button CssClass="btn btn-primary" ID="login" runat="server"
                         Text="Login" OnClick="login_Click"
                         Width="100%" /></div>
            <div class="col-lg-3 col-md-3"></div>
        </div><div class="col-lg-12 col-md-12">&nbsp</div>
        <div class="col-lg-12 col-md-12">       
            <div class="col-lg-3 col-md-3 "></div>
            <div class="col-lg-6 col-md-6 ">
                <asp:Button CssClass="btn btn-primary" ID="SignUp" runat="server" Width="100%" Text=" Professor SignUp" OnClick="SignUp_Click" /></div>
            <div class="col-lg-3 col-md-3 "></div>
        </div>
        <div class="col-lg-12 col-md-12">       

            <div class="col-lg-3 col-md-3 "></div>
            <div class="col-lg-6 col-md-6 "><asp:Label ID="wrong" runat="server" Text="Invalid username/password" Visible="false" /></div>
            <div class="col-lg-3 col-md-3 "></div>
        </div>
        <div class="col-lg-12 col-md-12">       
            <div class="col-lg-3 col-md-3 "></div>
            <div class="col-lg-6 col-md-6 "><asp:Label ID="approval" runat="server" Text="You're not yet approved by Admin. Please be patient." Visible="false" /></div>
            <div class="col-lg-3 col-md-3 "></div>
        </div>
        
        </div>

    
  
    </form>
</body>
</html>
