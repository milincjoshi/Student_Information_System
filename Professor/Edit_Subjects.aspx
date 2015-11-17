<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Edit_Subjects.aspx.cs" Inherits="Professor_Eedit_Subjects" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

     <!--Bootstrap reference-->
    <link href="../Bootstrap/css/bootstrap-theme.css" rel="stylesheet" />
    <link href="../Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../Bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="../Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    
    <link href="../Bootstrap/fonts/glyphicons-halflings-regular.eot" rel="apple-touch-icon" />
    <link href="../Bootstrap/fonts/glyphicons-halflings-regular.svg" rel="apple-touch-icon" />
    <link href="../Bootstrap/fonts/glyphicons-halflings-regular.ttf" rel="apple-touch-icon" />
    <link href="../Bootstrap/fonts/glyphicons-halflings-regular.woff" rel="apple-touch-icon"  />

    <!--Bootstrap Mobile first-->
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!--CSS Reference-->
    <link href="../mainCss.css" rel="stylesheet" />

    <title> Professor Subjects</title>
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
                <li><a href="Professor_home.aspx">Home</a></li>
                <li><a href="Professor_EditProfile.aspx">Edit Profile</a></li>
                <li class="active"><a href="Edit_Subjects.aspx">Edit Subjects</a></li>
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
       
        <div class="col-lg-12 background_lightblue round_border padding_10">
            <div class="col-lg-3 fontsize_22 ">Enter Subject name</div>
            <div class="col-lg-2" ><asp:TextBox CssClass=" input-sm" ID="subject_name" runat="server" /></div>
            <div class="col-lg-2"><asp:Button CssClass="btn btn-primary" ID="add" runat="server" Text="Add Subject" OnClick="add_Click" /></div>
            
        </div>
        <h2 class="col-lg-12 font_oranienbaum forecolor_darkblue">Edit Subjects</h2>
        <!--Grid-->
        <div class="col-lg-12 forecolor_darkblue">
            <asp:GridView  Font-Size="26px" CellPadding="20" CellSpacing="20" CssClass="col-lg-12 table-hover table-bordered " ID="subjects_bound" runat="server" OnRowDeleting="subjects_bound_RowDeleting" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField ItemStyle-Width="200" ControlStyle-Font-Size="36px" ControlStyle-CssClass=" col-lg-6 col-md-6 font_oswald fontsize_40 forecolor_darkblue" ControlStyle-Width="100%" DataField="subject_name" />
                    <asp:ButtonField  ItemStyle-Width="200"  ControlStyle-CssClass= "col-lg-6 col-md-6 padding_10 margin_top10 btn-default" ControlStyle-Width="100%" ButtonType="Button" CommandName="Delete" Text="Delete" />
                </Columns>
            </asp:GridView>
        </div>
  
    </form>
</body>
</html>
