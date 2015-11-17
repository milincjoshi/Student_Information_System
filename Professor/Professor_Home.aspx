<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Professor_Home.aspx.cs" Inherits="Professor_Professor_Home" %>

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
    <div class="container ">
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
                <li><a href="Professor_EditProfile.aspx">Edit Profile</a></li>
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
<div class=" background_lightblue round_border col-lg-12 col-md-12">
    <div class="col-lg-4 col-md-4"></div>
    <div class="col-lg-4 col-md-4">
         <asp:Image ImageAlign="Middle" runat="server" ID="img" CssClass=" img-circle"  width="200" height="200"  alt="Image Missing" />
    </div>
    <div class="col-lg-4 col-md-4"></div>

</div>

<div class="row ">
<div class="col-lg-12 col-md-12 background_lightblue round_border margin_top10 padding_10" style="margin-left:auto; margin-right:auto;">

      <div class="col-lg-2 col-md-2 font_oranienbaum forecolor_darkred fontsize_26">Enrollment</div>
      <div class="col-lg-10 col-md-10"><asp:Label CssClass=" font_oswald forecolor_darkblue fontsize_26 col-lg-6" ID="enrollmentno" runat="server" /> </div>   
   
     <div class="col-lg-12 col-md-12">&nbsp</div>  
    
    <div class="col-lg-2 col-md-2 font_oranienbaum forecolor_darkred fontsize_26">Name</div>
      <div class="col-lg-10 col-md-10">
           <asp:Label CssClass=" font_oswald forecolor_darkblue fontsize_26 col-md-4  col-lg-4" ID="first_name" runat="server" Text="Milin"/> 
           <asp:Label CssClass=" font_oswald forecolor_darkblue fontsize_26  col-md-4 col-lg-4" ID="Middle_name" runat="server" Text="Chetanbhai"/> 
           <asp:Label CssClass=" font_oswald forecolor_darkblue fontsize_26  col-md-4 col-lg-4" ID="last_name" runat="server" Text="Joshi"/>
      </div>
      <!--3.1 Mail-->  <div class="col-lg-12 col-md-12">&nbsp</div>  
    
      <div class="col-lg-2 col-md-2 font_oranienbaum forecolor_darkred fontsize_26">Mail ID</div>
      <!--3.2 Mail-->
      <div class="col-lg-10 col-md-10"><asp:Label CssClass=" fontsize_26 font_oswald forecolor_darkblue col-lg-12 col-md-12" ID="mail_id" runat="server" Text="milincjoshi@gmail.com" /></div>
      <!--3.1 Mobile-->
      <div class="col-lg-12 col-md-12">&nbsp</div>  
    
      <div class="col-lg-2 col-md-2 font_oranienbaum forecolor_darkred fontsize_26">Mobile</div>
      <!--3.2 Mobile-->
      <div class="col-lg-10 col-md-10"><asp:Label CssClass=" fontsize_26 font_oswald forecolor_darkblue col-md-12 col-lg-12" ID="contactno" runat="server" Text="09909802530" /></div>
      <!--4.1 college--><div class="col-lg-12 col-md-12">&nbsp</div> 
      <div class="col-lg-2 col-md-2 font_oranienbaum forecolor_darkred fontsize_26">College</div>
      <!--4.2 college-->
      <div class="col-lg-10 col-md-10"><asp:Label CssClass="fontsize_26 font_oswald forecolor_darkblue col-lg-12 col-md-12" ID="college" runat="server" Text="C.U.Shah College of Engineering and Technology" /></div>
     

<!--bdate div-->
    <div class="col-lg-12 col-md-12">&nbsp</div> 
    <!--6.1 bdate-->
    <div class="col-lg-2 col-md-2  font_oranienbaum forecolor_darkred fontsize_26">Birthdate</div>
    <!--6.2 bdate-->
    <div class="col-lg-10 col-md-10 "><asp:Label CssClass="fontsize_26 font_oswald forecolor_darkblue col-lg-12 col-md-12" ID="bdate_date" runat="server" Text="21/1/1992" /></div>
    <!--Gender--><div class="col-lg-12 col-md-12">&nbsp</div> 
    <div class="col-lg-2 col-md-2 font_oranienbaum forecolor_darkred fontsize_26">Gender</div>
    <!--Gender-->
    <div class="col-lg-10 col-md-10"><asp:Label CssClass=" fontsize_26 font_oswald forecolor_darkblue col-lg-12 col-md-12" ID="gender" runat="server" /></div>

<!--Department--><div class="col-lg-12 col-md-12">&nbsp</div> 

    <div class="col-lg-2 col-md-2  font_oranienbaum forecolor_darkred fontsize_26">Department</div>
    <div class="col-lg-10 col-md-10"><asp:Label CssClass=" fontsize_26 font_oswald forecolor_darkblue col-lg-12 col-md-12" ID="department" runat="server" /></div>

 <!--3 subjects--><div class="col-lg-12 col-md-12">&nbsp</div> 
                 <div class="col-lg-12 col-md-12 font_oranienbaum fontsize_28 forecolor_darkred">Subjects</div>
                  <asp:DataList CssClass="fontsize_26 font_oswald forecolor_darkblue"  ID="Professor_Subjects" runat="server" RepeatColumns="6"
                         RepeatDirection="Horizontal"
                         CellPadding="2" CellSpacing="3">
                        <ItemTemplate>
                            <div class="col-lg-2 col-md-2 ">
                                    <%# Eval("subject_name") %>
                            </div>
                         </ItemTemplate>
                    </asp:DataList>
          </div><!--12 ends-->
        </div><!--row ends-->
      </div><!--Container ends-->
    </form>
</body>
</html>
