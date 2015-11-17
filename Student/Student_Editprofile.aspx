<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_Editprofile.aspx.cs" Inherits="Student_edit_profile" %>

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
                <li><a href="student_home.aspx">Home</a></li>
                <li class="active"><a href="Student_EditProfile.aspx">Edit Profile</a></li>
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
    
<div class="col-lg-12 col-md-12 background_lightgreen  round_border">
    <div class="col-lg-4 col-md-4"></div>
    <div class="col-lg-4 col-md-4">
        <asp:Image ImageAlign="Middle"  runat="server" ID="img" CssClass=" img-circle " Width="225" Height="200"  alt="Image Missing" />
   <asp:FileUpload CssClass="col-lg-12 col-md-12" ID="FileUpload1" runat="server" />
 
         </div>
    <div class="col-lg-4 col-md-4"></div>
 </div>
            <div class="col-lg-12 col-md-12">&nbsp</div>
            <div class="col-lg-12 col-md-12 background_lightgreen round_border ">
<div class="col-lg-2 col-md-2 font_oranienbaum forecolor_darkred fontsize_24 margin_top10">Enrollment</div>
<div class="col-lg-10  col-md-10  margin_top10">
<asp:TextBox CssClass="  font_oswald forecolor_darkblue fontsize_26 col-lg-6 col-md-6" ID="enrollmentno" runat="server" /> 
<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Enter 10 numbers" ControlToValidate="contactno" ValidationExpression="^[0-9]{10,10}$"></asp:RegularExpressionValidator>
<asp:RequiredFieldValidator ID="requiredEnroll" runat="server" ErrorMessage="Enrollment No required" ControlToValidate="enrollmentno"></asp:RequiredFieldValidator>
</div>   
   
<div class=" col-lg-4  col-md-4  font_oranienbaum   forecolor_darkred fontsize_22">First Name</div>
    <div  class=" col-lg-4  col-md-4 font_oranienbaum  forecolor_darkred fontsize_22">Middle Name</div>
    <div  class=" col-lg-4  col-md-4  font_oranienbaum forecolor_darkred fontsize_22">Last Name</div>
   
      
<div class="col-lg-12  col-md-12">
<asp:TextBox CssClass=" col-md-4   font_oswald forecolor_darkblue fontsize_26 col-lg-4" ID="first_name" runat="server" /> 
<asp:TextBox CssClass=" col-md-4   font_oswald forecolor_darkblue fontsize_26 col-lg-4" ID="Middle_name" runat="server" /> 
<asp:TextBox CssClass=" col-md-4   font_oswald forecolor_darkblue fontsize_26 col-lg-4" ID="last_name" runat="server" />

<asp:RegularExpressionValidator CssClass="col-lg-4  col-md-4 " ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter characters only" ControlToValidate="first_name" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
<asp:RegularExpressionValidator CssClass="col-lg-4 col-md-4 "  ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter characters only" ControlToValidate="Middle_name" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
<asp:RegularExpressionValidator CssClass="col-lg-4 col-md-4 "  ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter characters only" ControlToValidate="last_name" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>

<asp:RequiredFieldValidator CssClass="col-lg-4 col-md-4 "  ID="RequiredFieldValidator5" runat="server" ErrorMessage="first name required" ControlToValidate="first_name"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator CssClass="col-lg-4 col-md-4 "  ID="RequiredFieldValidator6" runat="server" ErrorMessage="middle required" ControlToValidate="Middle_name"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator CssClass="col-lg-4 col-md-4 "  ID="RequiredFieldValidator7" runat="server" ErrorMessage="last name required" ControlToValidate="last_name"></asp:RequiredFieldValidator>

</div>

<div class="col-lg-2  col-md-2 font_oranienbaum forecolor_darkred fontsize_26">Mail ID</div>
<div class="col-lg-10 col-md-10">
<asp:TextBox TextMode="Email" CssClass="   fontsize_26 font_oswald forecolor_darkblue " ID="mail_id" runat="server"  />
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Mail id required" ControlToValidate="mail_id"></asp:RequiredFieldValidator>
</div>
    <div class="col-lg-12 col-md-12">&nbsp</div>
<div class="col-lg-2 col-md-2 font_oranienbaum forecolor_darkred fontsize_26">Mobile</div>
<div class="col-lg-10 col-md-10">
<asp:TextBox TextMode="Phone" CssClass="  fontsize_26 font_oswald forecolor_darkblue " ID="contactno" runat="server"  />
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter 10 numbers" ControlToValidate="contactno" ValidationExpression="^[0-9]{10,12}$"></asp:RegularExpressionValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mobile no required" ControlToValidate="contactno"></asp:RequiredFieldValidator>
</div>
    <div class="col-lg-12 col-md-12">&nbsp</div>
<div class="col-lg-2 col-md-2 font_oranienbaum forecolor_darkred fontsize_26">College</div>
<div class="col-lg-10 col-md-10">
<asp:TextBox CssClass="   fontsize_26 font_oswald forecolor_darkblue " ID="college" runat="server"  />
<asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Enter character only" ControlToValidate="college" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="College name required" ControlToValidate="college"></asp:RequiredFieldValidator>
</div>
   <div class="col-lg-12 col-md-12">&nbsp</div>
<div class="col-lg-2 col-md-2 font_oranienbaum forecolor_darkred fontsize_24">School</div>
<div class="col-lg-10 col-md-10">
<asp:TextBox CssClass="   fontsize_26 font_oswald forecolor_darkblue " ID="high_school" runat="server" />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Enter character only" ControlToValidate="high_school" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="school name required" ControlToValidate="high_school"></asp:RequiredFieldValidator>

</div>
    <div class="col-lg-12 col-md-12">&nbsp</div>
<!--6.1 bdate-->
<div class="col-lg-2 col-md-2  font_oranienbaum forecolor_darkred fontsize_26">Birthdate</div>
<div class="col-lg-10 col-md-10 ">
<asp:TextBox TextMode="Date" CssClass="fontsize_26 font_oswald forecolor_darkblue " ID="bdate_date" runat="server"  />
</div>
    <div class="col-lg-12 col-md-12">&nbsp</div>
    <div class="col-lg-2 col-md-2   font_oranienbaum forecolor_darkred fontsize_26">Gender</div>
    <div class="col-lg-2 col-md-10"><asp:DropDownList CssClass=" fontsize_26 font_oswald forecolor_darkblue "
ID="gender" runat="server">
<asp:ListItem Text="Male" Value="0" />
<asp:ListItem Text="Female" Value="1"  />
</asp:DropDownList></div>
    <div class="col-lg-12 col-md-12">&nbsp</div>
<div class="col-lg-2 col-md-2  font_oranienbaum forecolor_darkred fontsize_26">Department</div>
<div class="col-lg-10 col-md-10">
<asp:DropDownList CssClass=" fontsize_26 font_oswald forecolor_darkblue "
ID="department" DataTextField="Department_name" runat="server">
</asp:DropDownList>
</div>
   

<div><asp:Button CssClass="col-lg-12 col-md-12  margin_top10 font_oswald fontsize_26 btn btn-primary" ID="save" runat="server" Text="Save" OnClick="save_Click" /></div>
   
<!--end here-->            
</div>
    </div>
       
    </form>
</body>
</html>
