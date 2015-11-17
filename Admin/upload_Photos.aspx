<%@ Page Language="C#" AutoEventWireup="true" CodeFile="upload_Photos.aspx.cs" Inherits="Admin_upload_Photos" %>

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

    <title>Upload Photos</title>
</head>
<body class="whitespace">
    <form id="form1" runat="server" enctype="multipart/form-data">
    <div>
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
                <li><a href="Admin_ApproveProfessor.aspx">Approve Professor</a></li>
                <li><a href="Admin_ApproveStudent.aspx">Approve Students</a></li>
                <li><a href="PhotoGallery.aspx">Photo Gallery</a></li>
                <li class="active"><a href="upload_Photos.aspx">Upload Photos</a></li>
                <li><a href="add_Edit_departments.aspx">Departments</a></li>               

                <li><a><asp:Button ID="Button1" runat="server" Text="Logout" CssClass="forecolor_red" OnClick="logout_Click" /></a></li>
               </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>
          <!--nav bar ends-->

        <div class=" container">
            <div class="page-header  font_modernsans fontsize_30 forecolor_darkgreen">
                 &nbsp;Upload Images for your Photo Gallery
            </div>
        <div class="row">
            <div class="col-lg-12 font_oswald">
                <div class="col-lg-6 font_modernsans forecolor_darkgreen fontsize_24"><a href="index.aspx">Go to Home Page</a></div>
                <div class="col-lg-5 font_modernsans forecolor_darkgreen fontsize_24"><a href="PhotoGallery.aspx">View Photo Gallery</a></div>
                <div class="col-lg-1"><asp:Button CssClass="btn btn-primary" ID="logout" runat="server" OnClick="logout_Click" Text="Logout" /></div>
            </div>
       <div class="col-lg-12">
        <div class="col-lg-2 font_oswald">Enter Image Title Here</div>
        <div class="col-lg-2"><asp:TextBox ID="category" runat="server" /></div>
        <div class="col-lg-7 margin_10top">
            <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="true"/>
        </div>
         <div class="col-lg-12">
         <asp:Button ID="Upload_Image" runat="server" OnClick="Upload_Image_Click" Text="Upload" />
         
              </div>
            </div>
            <div class="col-lg-12 border table-bordered margin_10top padding_10">
               
<asp:GridView OnRowCommand="Image_Results_RowCommand" OnRowDeleting="Image_Results_RowDeleting"
     BorderColor="#2c6700" 
    CssClass="table table-responsive table-bordered table-hover" ID="Image_Results" runat="server" AutoGenerateColumns="false">
    <Columns>
        <asp:BoundField HeaderText="Id" DataField="PhotoGallery_Id" ItemStyle-Width="10%" />
        <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <img class="margin_10top padding_10 border" src =" <%# Eval("Image_path") %>  " data-src=" holder.js/300x200 " height="150" width="250" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Delete" HeaderText="Delete Item" />
        <asp:TemplateField>
            <ItemTemplate>
                   <asp:Button CommandArgument='<%# Eval("PhotoGallery_Id") %>' CommandName="ViewProfile" OnClick="download_Click" CssClass="btn btn-primary" ID="download" runat="server" Width="100%" Text="Download" />
            </ItemTemplate>
        </asp:TemplateField>
        
    </Columns>
</asp:GridView>

            </div>
        </div>
       <!--file drag-->
       <!--file drag ends-->
    </div>
    </div>
    </form>


</body>
</html>
