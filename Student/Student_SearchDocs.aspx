<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_SearchDocs.aspx.cs" Inherits="Student_Student_SearchDocs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--Bootstrap reference-->
    <link href="../Bootstrap/css/bootstrap-theme.css" rel="stylesheet" />
    <link href="../Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../Bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="../Bootstrap/css/bootstrap.min.css" rel="stylesheet" />

      <link href="../Bootstrap/fonts/glyphicons-halflings-regular.eot" rel="stylesheet" />
    <link href="../Bootstrap/fonts/glyphicons-halflings-regular.svg" rel="stylesheet" />
    <link href="../Bootstrap/fonts/glyphicons-halflings-regular.ttf" rel="stylesheet" />
    <link href="../Bootstrap/fonts/glyphicons-halflings-regular.woff" rel="stylesheet" />


    <!--CSS Reference-->
    <link href="../mainCss.css" rel="stylesheet" />

    <title>Docs</title>
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
                <li><a href="student_home.aspx">Home</a></li>
                <li><a href="Student_EditProfile.aspx">Edit Profile</a></li>
                <li class="active"><a href="Student_SearchDocs.aspx">Search Material</a></li>
                <li><a href="View_attendence.aspx">View Attendence</a></li>
                <li><a><asp:Button ID="logout" runat="server" Text="Logout" CssClass="forecolor_red" OnClick="logout_Click" /></a></li>
               </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>
          <!--nav bar ends-->
        <div class="fontsize_30 font_oranienbaum forecolor_darkblue">Search and Download Documents</div>
    <div class="row margin_top10">
        <div class="col-lg-3"><asp:TextBox Width="90%" CssClass="input-lg" ID="search" runat="server" /><span class="glyphicon glyphicon-search" ></span></div>
        <div class="col-lg-9"><asp:Button CssClass="btn btn-primary margin_top10" ID="searchbtn" runat="server" Text="Search"  OnClick="searchbtn_Click"/></div>
        <div class="col-lg-12">
            <asp:DataList ID="docs" runat="server" RepeatColumns="4" CellSpacing="12">
                <ItemTemplate>
<div class="quote-container">
  <i class="pin"></i>
  <blockquote class="note yellow">
    <%# Eval("Doc_title") %>
    <cite class="author"><%# Eval("Professor_username") %></cite>
      <asp:Button CssClass="btn btn-info pull-left" CommandName="view" CommandArgument=' <%# Eval("Docs_Id") %> ' ID="view" runat="server" Text="View" OnClick="view_Click" />
      <asp:Button ImageUrl="~/images/pdf-icon.png" CssClass=" pull-right btn btn-info" CommandName="download" CommandArgument=' <%# Eval("Docs_Id") %> ' ID="download" runat="server" Text="Download" OnClick="download_Click" />
   </blockquote>
                                   
</div>

                      
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
    </div>
    </form>
</body>
</html>
