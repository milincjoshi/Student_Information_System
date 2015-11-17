<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Professor_EditProfile.aspx.cs" Inherits="Professor_Professor_EditProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

      
    <!--Bootstrap reference-->
    <link href="../Bootstrap/css/bootstrap-theme.css" rel="stylesheet" />
    <link href="../Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../Bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="../Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    
    <!--Bootstrap Mobile first-->
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!--CSS Reference-->
    <link href="../mainCss.css" rel="stylesheet" />

    <title></title>
</head>
<body>
     <form id="form1" runat="server">
 <!--nav bar ends-->
    <div class="container">
        <!--Nav bar-->
    <div class="navbar-wrapper">
      <div class="container">
        <nav class="navbar  navbar-static-top navbar-right" role="navigation">
          <div class="container border_darkred_2px">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="student_home.aspx"> Student Information System </a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav navbar-right ">
                <li><a href="#">Home</a></li>
                <li class="active"><a href="Professor_EditProfile.aspx">Edit Profile</a></li>
                <li><a href="Edit_Subjects.aspx">Edit Subjects</a></li>
                <li><a href="Professor_UploadDocs.aspx">Upload Material</a></li>
                <li><a href="fil_attendence.aspx">Fill Attendence</a></li>
                <li><a><asp:Button ID="logout" runat="server" Text="Logout" CssClass="forecolor_red" OnClick="logout_Click" /></a></li>
               </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>
          <!--nav bar ends-->
        
        <div class="row">
<!--profile image and bio data-->
<div class="col-lg-12 col-md-12 background_lightgreen round_border">
    <!--1) Profile IMage-->
    <div class="col-lg-4 col-md-4"></div>
    <div class="col-lg-4 col-md-4">
        <asp:Image  runat="server" ID="img" CssClass="img-circle col-lg-12" Width="225" Height="200"  alt="Upload Image" />
        <asp:FileUpload CssClass="col-lg-12 col-md-12" ID="FileUpload1" runat="server" />
    </div>
    <div class="col-lg-4 col-md-4"></div>
</div>
<div class="col-lg-12 col-md-12 background_lightblue round_border margin_top10 padding_10">
      <!--Enrollment-->   
      <div class="col-lg-2 col-md-2 font_oranienbaum forecolor_darkred fontsize_24">Enrollment</div>
      <!--Enrollment-->   
      <div class="col-lg-10 col-md-10"><asp:Label CssClass=" font_oswald forecolor_darkblue fontsize_26 col-lg-6 col-md-6" ID="enrollmentno" runat="server" /> </div>   
      <!--Name-->
    <div class="col-lg-12 col-md-12">&nbsp</div>
      <div class="col-lg-2 col-md-2 font_oranienbaum forecolor_darkred fontsize_26">Name</div>
      <!--name-->
      <div class="col-lg-10 col-md-10">
           <asp:TextBox CssClass=" font_oswald forecolor_darkblue fontsize_26 col-lg-4 col-md-4" ID="first_name" runat="server" /> 
           <asp:TextBox CssClass=" font_oswald forecolor_darkblue fontsize_26 col-lg-4 col-md-4" ID="Middle_name" runat="server" /> 
           <asp:TextBox CssClass=" font_oswald forecolor_darkblue fontsize_26 col-lg-4 col-md-4" ID="last_name" runat="server"/>
      </div>
      <!--3.1 Mail--><div class="col-lg-12 col-md-12">&nbsp</div>
      <div class="col-lg-2 col-md-2 font_oranienbaum forecolor_darkred fontsize_26">Mail ID</div>
      <!--3.2 Mail-->
      <div class="col-lg-10 col-md-10"><asp:TextBox CssClass=" fontsize_26 font_oswald forecolor_darkblue " ID="mail_id" runat="server" /></div>
      <!--3.1 Mobile--><div class="col-lg-12 col-md-12">&nbsp</div>
      <div class="col-lg-2 col-md-2 font_oranienbaum forecolor_darkred fontsize_26">Mobile</div>
      <!--3.2 Mobile-->
      <div class="col-lg-10 col-md-10"><asp:TextBox CssClass=" fontsize_26 font_oswald forecolor_darkblue " ID="contactno" runat="server"  /></div>
      <!--4.1 college--><div class="col-lg-12 col-md-12">&nbsp</div>
      <div class="col-lg-2 col-md-2 font_oranienbaum forecolor_darkred fontsize_26">College</div>
      <!--4.2 college-->
      <div class="col-lg-10 col-md-10"><asp:TextBox CssClass="fontsize_26 font_oswald forecolor_darkblue " ID="college" runat="server" /></div>
    
    <!--6.1 bdate--><div class="col-lg-12 col-md-12">&nbsp</div>
    <div class="col-lg-2 col-md-2 float_left font_oranienbaum forecolor_darkred fontsize_26">Birthdate</div>
    <!--6.2 bdate-->
    <div class="col-lg-10 col-md-10 float_left ">
        <asp:TextBox TextMode="Date" CssClass="fontsize_26 font_oswald forecolor_darkblue " ID="bdate_date" runat="server"  /></div>
    <!--Gender--><div class="col-lg-12 col-md-12">&nbsp</div>
    <div class="col-lg-2 col-md-2 float_left font_oranienbaum forecolor_darkred fontsize_26">Gender</div>
    <!--Gender--> 
    <div class="col-lg-10 col-md-10"><asp:DropDownList CssClass=" fontsize_26 font_oswald forecolor_darkblue " ID="gender" runat="server" >
                            <asp:ListItem Text="Male" Value="0" />
                            <asp:ListItem Text="Female" Value="1" />
                          </asp:DropDownList></div>

    <div class="col-lg-12 col-md-12">&nbsp</div>
<div class="col-lg-2 col-md-2 float_left font_oranienbaum forecolor_darkred fontsize_26">Department</div>
<div class=" col-lg-10 col-md-10">
<asp:DropDownList CssClass="fontsize_26 font_oswald forecolor_darkblue "
        ID="department" DataTextField="Department_name" runat="server">
</asp:DropDownList>
</div>
            <div class="col-lg-12 col-md-12 "><asp:Button CssClass=" btn btn-primary fontsize_26 margin_top10 col-lg-12 col-md-12" ID="save" runat="server" Text="Save" OnClick="save_Click" /></div>
        </div>
            </div><!--row ends-->
            
      </div><!--Container ends-->
    </form>
</body>
</html>
