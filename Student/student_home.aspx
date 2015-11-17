<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_home.aspx.cs" Inherits="Student_student_home" %>

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
                <li><a href="Student_EditProfile.aspx">Edit Profile</a></li>
                <li><a href="Student_SearchDocs.aspx">Search Material</a></li>
                <li><a href="View_attendence.aspx">View Attendence</a></li>
                <li><a><asp:Button ID="logout" runat="server" Text="Logout" CssClass="forecolor_red" OnClick="logout_Click" /></a></li>
               </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>
          <!--nav bar ends-->
        <div class="row " style="margin-left:auto; margin-right:auto;">
<!--profile image and bio data-->
<div class="col-lg-12 col-md-12">
    <!--1) Profile IMage-->
    <div class="col-lg-12 col-md-12 background_lightgreen round_border">
        <div class="col-lg-4 col-md-4"></div>
        <div class="col-lg-4 col-md-4">
            <asp:Image  ImageAlign="Middle" CssClass="img-circle border_darkred_2px" id="img" runat="server"  width="200" height="200"  alt="Image Missing" />
        </div>
        <div class="col-lg-4 col-md-4"></div>
    </div>
    
    <div class=" col-lg-12 col-md-12 round_border background_lightblue background_mediumblue margin_top10">
        <div class="margin_top10">
      <!--Enrollment-->   
      <div class="col-lg-2 col-md-2 font_oranienbaum forecolor_darkred fontsize_24">Enrollment</div>
      <!--Enrollment-->   
      <div class="col-lg-10 col-md-10"><asp:Label CssClass=" font_oswald forecolor_darkblue fontsize_26 col-lg-6 col-md-6" ID="enrollmentno" runat="server" Text="Enrollment No" /> </div>   
      <!--Name-->
            <div class="col-lg-12 col-md-12">&nbsp</div>
      <div class="col-lg-2 col-md-2 font_oranienbaum forecolor_darkred fontsize_26">Name</div>
      <!--name-->
      <div class="col-lg-10 col-md-10">
           <asp:Label CssClass=" font_oswald forecolor_darkblue fontsize_26 col-lg-4 col-md-4" ID="first_name" runat="server" Text="First Name" /> 
           <asp:Label CssClass=" font_oswald forecolor_darkblue fontsize_26 col-lg-4 col-md-4" ID="Middle_name" runat="server" Text="Middle name" /> 
           <asp:Label CssClass=" font_oswald forecolor_darkblue fontsize_26 col-lg-4 col-md-4" ID="last_name" runat="server" Text="Last Name" />
      </div>
      <!--3.1 Mail--><div class="col-lg-12 col-md-12">&nbsp</div>
      <div class="col-lg-2 col-md-2 font_oranienbaum forecolor_darkred fontsize_26">Mail ID</div>
      <!--3.2 Mail-->
      <div class="col-lg-10 col-md-10"><asp:Label CssClass=" fontsize_26 font_oswald forecolor_darkblue col-lg-12 col-md-12" ID="mail_id" runat="server" Text="xyz@xyz.com"  /></div>
      <!--3.1 Mobile--><div class="col-lg-12 col-md-12">&nbsp</div>
      <div class="col-lg-2 col-md-2 font_oranienbaum forecolor_darkred fontsize_26">Mobile</div>
      <!--3.2 Mobile-->
      <div class="col-lg-10 col-md-10"><asp:Label CssClass=" fontsize_26 font_oswald forecolor_darkblue col-lg-12 col-md-12" ID="contactno" runat="server" Text="1234567890"  /></div>
      <!--4.1 college-->
    
    <!--6.1 bdate--><div class="col-lg-12 col-md-12">&nbsp</div>
    <div class="col-lg-2 col-md-2  font_oranienbaum forecolor_darkred fontsize_26">Birthdate</div>
    <!--6.2 bdate-->
    <div class="col-lg-10 col-md-10 "><asp:Label CssClass=" fontsize_26 font_oswald forecolor_darkblue col-lg-12 col-md-12" ID="bdate" runat="server" Text="11/11/1111" /></div>
    <!--Gender--><div class="col-lg-12 col-md-12">&nbsp</div>
    <div class="col-lg-2 col-md-2  font_oranienbaum forecolor_darkred fontsize_26">Gender</div>
    <!--Gender--> 
    <div class="col-lg-10 col-md-10"><asp:Label CssClass=" fontsize_26 font_oswald forecolor_darkblue col-lg-12 col-md-12" ID="gender" runat="server" Text="male"  /></div>
 
      <!--4.2 college--><div class="col-lg-12 col-md-12">&nbsp</div>
      <div class="col-lg-2 col-md-2 font_oranienbaum forecolor_darkred fontsize_26">College</div>
      <div class="col-lg-10 col-md-10"><asp:Label CssClass=" fontsize_26 font_oswald forecolor_darkblue col-lg-12 col-md-12" ID="college" runat="server" Text="xyz college" /></div>
   
      <!--5.2 school--><div class="col-lg-12 col-md-12">&nbsp</div>
      <div class="col-lg-2 col-md-2 font_oranienbaum forecolor_darkred fontsize_24">School</div>
      <div class="col-lg-10 col-md-10"><asp:Label CssClass=" fontsize_26 font_oswald forecolor_darkblue col-lg-12 col-md-12" ID="high_school" runat="server" Text="xyz high" /></div>
    
    
<!--Department-->
            <div class="col-lg-12 col-md-12">&nbsp</div>
    <div class="col-lg-2 col-md-2  font_oranienbaum forecolor_darkred fontsize_26">Department</div>
    <div class="col-lg-10 col-md-10"><asp:Label CssClass=" fontsize_26 font_oswald forecolor_darkblue col-lg-12 col-md-12" ID="department" runat="server" /></div>
      
<!--3 Languages-->
            <!--
                <div class="col-lg-12 col-md-12 font_oranienbaum fontsize_28 forecolor_darkred ">Languages</div>
                    <asp:DataList ID="student_languages" runat="server" RepeatColumns="6"
                         RepeatDirection="Horizontal"
                         CellPadding="2" CellSpacing="3">
                        <ItemTemplate>
                            <div class="col-lg-2 col-md-2 ">
                                    <%# Eval("Language1") %>
                            </div>
                         </ItemTemplate>
                    </asp:DataList>
           
                <div class="col-lg-12 col-md-4 font_oranienbaum fontsize_28 forecolor_darkred ">Skills</div>
                    <asp:DataList ID="student_skills" runat="server" RepeatColumns="6"
                         RepeatDirection="Horizontal"
                         CellPadding="2" CellSpacing="3">
                        <ItemTemplate>
                            <div class="col-lg-2 col-md-2 ">
                                    <%# Eval("Skill1") %>
                            </div>
                         </ItemTemplate>
                    </asp:DataList>
            
                 <div class="col-lg-12 col-md-12 font_oranienbaum fontsize_28 forecolor_darkred">Certificates</div>
                  <asp:DataList ID="student_certificates" runat="server" RepeatColumns="6"
                         RepeatDirection="Horizontal"
                         CellPadding="2" CellSpacing="3">
                        <ItemTemplate>
                            <div class="col-lg-2 col-md-2 ">
                                    <%# Eval("Certificate1") %>
                            </div>
                         </ItemTemplate>
                    </asp:DataList>-->
                </div>
           </div><!--inner container-->
        </div><!--row ends-->
      </div>
        </div><!--Container ends-->
    </form>
</body>
</html>
