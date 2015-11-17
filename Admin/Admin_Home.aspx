<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Home.aspx.cs" Inherits="Admin_Admin_Home" %>

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
                <li class="active"><a href="#">Home</a></li>
                <li><a href="Admin_ApproveProfessor.aspx">Approve Professor</a></li>
                <li><a href="Admin_ApproveStudent.aspx">Approve Students</a></li>
                <li><a href="PhotoGallery.aspx">Photo Gallery</a></li>
                <li><a href="upload_Photos.aspx">Upload Photos</a></li>
                <li><a href="add_Edit_departments.aspx">Departments</a></li>
                <li><a><asp:Button ID="logout" runat="server" Text="Logout" CssClass="forecolor_red" OnClick="logout_Click" /></a></li>
               </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>
          <!--nav bar ends-->

    </div>
    </form>
</body>
</html>
