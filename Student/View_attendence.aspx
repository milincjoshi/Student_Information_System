<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_attendence.aspx.cs" Inherits="Student_View_attendance" %>

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
                <li><a href="student_home.aspx">Home</a></li>
                <li><a href="Student_EditProfile.aspx">Edit Profile</a></li>
                <li><a href="Student_SearchDocs.aspx">Search Material</a></li>
                <li class="active"><a href="View_attendence.aspx">View Attendence</a></li>
                <li><a><asp:Button ID="logout" runat="server" Text="Logout" CssClass="forecolor_red" OnClick="logout_Click" /></a></li>
               </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>
          <!--nav bar ends-->
        <div class=" forecolor_darkblue font_oranienbaum fontsize_26">
            <div class="pull-left">View Attendence</div>
            <div class="pull-right"><asp:Label ID="percentage" runat="server" /></div>
        </div>
        
            <div class="row margin_top10">
            <div class="col-lg-12">
                <div class="col-lg-2"><asp:Label ID="fname" runat="server" /></div>
                <div class="col-lg-2"><asp:Label ID="mname" runat="server" /></div>
                <div class="col-lg-2"><asp:Label ID="lname" runat="server" /></div>
                <div class="col-lg-2"><asp:Label ID="enrolmentno" runat="server" /></div>
            </div>
            <div class="col-lg-12">
                <asp:GridView CssClass="table table-responsive table-bordered table-hover"
                     AutoGenerateColumns="false" ID="attendence" runat="server">
                    <Columns>
                        <asp:BoundField HeaderText="Subject" DataField="subject" />
                        <asp:BoundField HeaderText="Date/Time" DataField="datetime" />
                        <asp:BoundField HeaderText="Professor" DataField="professor_username" />
                        <asp:BoundField HeaderText="Result" DataField="result" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
