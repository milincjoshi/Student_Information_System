<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Professor_UploadDocs.aspx.cs" Inherits="Professor_Professor_UploadDocs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <!--Bootstrap reference-->
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
                <li><a href="Edit_Subjects.aspx">Edit Subjects</a></li>
                <li class="active"><a href="Professor_UploadDocs.aspx">Upload Material</a></li>
                <li><a href="fil_attendence.aspx">Fill Attendence</a></li>
                <li><a><asp:Button ID="logout" runat="server" Text="Logout" CssClass="forecolor_red" OnClick="logout_Click" /></a></li>
               </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>
        </div>
          <!--nav bar ends-->
      
    <div class="container">
        <div class="col-lg-12 padding_10 background_lightblue round_border fontsize_22">
                <div class="col-lg-3 font_oswald">Enter Doc Title Here</div>
                <div class="col-lg-3"><asp:TextBox ID="doc_title" runat="server" /></div>
                <div class="col-lg-6 margin_10top">
                    <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="true"/>
                </div>
        </div>
 <div class="col-lg-12 margin_top10 padding_10">
   <asp:Button CssClass="btn btn-primary" Width="100%" ID="Upload_doc" runat="server" OnClick="Upload_doc_Click" Text="Upload" />
 </div>



       <div class="col-lg-12 margin_top10"><asp:Label ID="professor" runat="server" /></div>
        <div class="col-lg-12">
<asp:GridView OnRowCommand="docs_RowCommand" OnRowDeleting="docs_RowDeleting"
BorderColor="#2C6700" 
CssClass="table table-responsive table-bordered table-hover" ID="docs" runat="server" AutoGenerateColumns="False">
<Columns>
<asp:BoundField HeaderText="Id" DataField="docs_id" ItemStyle-Width="10%" >
<ItemStyle Width="10%"></ItemStyle>
    </asp:BoundField>
    <asp:BoundField HeaderText="Document Details" DataField="doc_title" />
    <asp:BoundField HeaderText="File Name" DataField="filename" />
    <asp:BoundField HeaderText="Size" DataField="doc_name" />
<asp:ButtonField ControlStyle-CssClass="btn btn-default" ButtonType="Button" CommandName="Delete" Text="Delete" HeaderText="Delete Item" />
 <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="lnkDownload_Click"
                            CommandArgument='<%# Eval("Docs_Id") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
    
    </Columns>
</asp:GridView>
        </div>
    </div>
 
    </form>
</body>
</html>
