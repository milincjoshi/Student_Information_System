<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fil_attendence.aspx.cs" Inherits="Professor_fil_attendence" %>

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
                <li><a href="Professor_home.aspx">Home</a></li>
                <li><a href="Professor_EditProfile.aspx">Edit Profile</a></li>
                <li><a href="Edit_Subjects.aspx">Edit Subjects</a></li>
                <li><a href="Professor_UploadDocs.aspx">Upload Material</a></li>
                <li class="active"><a href="fil_attendence.aspx">Fill Attendence</a></li>
                <li><a><asp:Button ID="logout" runat="server" Text="Logout" CssClass="forecolor_red" OnClick="logout_Click" /></a></li>
               </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>
          <!--nav bar ends-->
      <div class="forecolor_darkblue font_oranienbaum fontsize_30 ">Fill Attendence</div>
        <div class=" col-lg-12 margin_top10 padding_10">
            <div class="col-lg-12 background_lightblue forecolor_darkblue margin_top10 padding_10 fontsize_22 round_border">
                <div class="col-lg-12">
                    <div class="col-lg-2">Subject Name</div>
                    <div class="col-lg-3"><asp:TextBox ID="subject" runat="server" /></div>
                    <div class="col-lg-2">Date</div>
                    <div class="col-lg-3"><asp:TextBox ID="date" runat="server" TextMode="DateTimeLocal" /></div>
                </div>
                <div class="col-lg-12">
                    <div class="col-lg-2">Class Room No:</div>
                    <div class=" col-lg-3"><asp:TextBox ID="classno" runat="server"/></div>
                    <div class=" col-lg-2">Department</div>
                    <div class=" col-lg-3"><asp:DropDownList ID="dept" DataTextField="department_name" runat="server" OnSelectedIndexChanged="dept_SelectedIndexChanged" AutoPostBack="True"  /></div>
                </div>
            </div>
            <div class="col-lg-12 margin_top10 padding_10">
                <asp:GridView CssClass="table table-responsive table-bordered table-hover"
                     ID="attendence" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField ItemStyle-Width="10%" HeaderText="first Name" DataField="FName" />
                            <asp:BoundField ItemStyle-Width="10%" HeaderText="Last Name" DataField="LName" />
                            <asp:BoundField HeaderText="Enrollment No" DataField="enrollno" />
                            <asp:BoundField HeaderText =" ID" DataField ="Student_Id" />
                            <asp:TemplateField HeaderText="Attendence">
                                <ItemTemplate>
                                    <asp:RadioButtonList ID="rblist" runat="server">
                                            <asp:ListItem Text="Present" />
                                            <asp:ListItem Text="Absent" />
                                    </asp:RadioButtonList>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                </asp:GridView>
            </div>
            <div class="col-lg-12"><asp:Button Width="100%" CssClass="btn btn-primary" ID="fill" runat="server" Text="Submit" OnClick="fill_Click" /></div>
        </div>
    </div>
   
    </form>
</body>
</html>
