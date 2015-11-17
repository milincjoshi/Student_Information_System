<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_Edit_departments.aspx.cs" Inherits="Admin_add_Edit_departments" %>

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
                <li><a href="#">Home</a></li>
                <li><a href="Admin_ApproveProfessor.aspx">Approve Professor</a></li>
                <li><a href="Admin_ApproveStudent.aspx">Approve Students</a></li>
                <li><a href="PhotoGallery.aspx">Photo Gallery</a></li>
                <li><a href="upload_Photos.aspx">Upload Photos</a></li>
                <li class="active"><a href="add_Edit_departments.aspx">Departments</a></li>

                <li><a><asp:Button ID="logout" runat="server" Text="Logout" CssClass="forecolor_red" OnClick="logout_Click" /></a></li>
               </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>
          <!--nav bar ends-->

        <div class="page-header forecolor_darkblue fontsize_40">Add/Edit Departments</div>
        

        <div class="row">
            <div class="col-lg-12">
                <div class="col-lg-3 fontsize_26">Add Department</div>
                <div class="col-lg-9">
                    <asp:TextBox ID="department" runat="server" />
                </div>
                <div class="col-lg-12 margin_top10" style="margin-left:auto;margin-right:auto;"  >
                    <asp:Button CssClass="btn btn-primary" OnClick="add_Click" Width="30%" ID="add" runat="server" Text="Add" />
                </div>
            </div>
            <div class="col-lg-12">
                <asp:GridView OnRowCommand="dept_RowCommand"  OnRowDeleting="dept_RowDeleting"
                    BorderColor="#2C6700" 
                    CssClass="table table-responsive table-bordered table-hover" 
                    ID="dept" runat="server" 
                    AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField HeaderText="Department_Id" DataField="department_id" ItemStyle-Width="10%" />
                            <asp:BoundField HeaderText="Department_name" DataField="department_name" />
                            <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Delete" HeaderText="Delete Item" />
                        </Columns>
                 </asp:GridView>
            </div>
        </div>
     

    </div>
    </form>
</body>
</html>
