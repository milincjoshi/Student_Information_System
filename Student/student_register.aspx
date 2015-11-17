<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_register.aspx.cs" Inherits="Student_stidemt_register" %>

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
        <header class="font_header forecolor_darkblue fontsize_40 text-center page-header">
       Student Information System
        </header>
    <div id="main div" class="col-lg-12 container font_oswald fontsize_24 forecolor_darkblue">
         <div class="col-lg-12">
                <div class="col-lg-3"></div>
                <div class="col-lg-3 text-uppercase font_oranienbaum fontsize_28"> Student Registration</div>
                <div class="col-lg-3">
                 </div>
                <div class="col-lg-3"></div>
        </div>
        <div  class="col-lg-12 col-md-12">&nbsp</div>
        <div class="col-lg-12">
                <div class="col-lg-3"></div>
                <div class="col-lg-3">Name</div>
                <div class="col-lg-3"><asp:TextBox id="studnt_name" runat="server" /> </div>
                <div class="col-lg-3">
                         <asp:RequiredFieldValidator ID="a1" ControlToValidate="studnt_name" runat="server" ErrorMessage="name required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="a2"  ValidationExpression="^[a-zA-Z]+$" ControlToValidate="studnt_name" runat="server" ErrorMessage="enter characters only"></asp:RegularExpressionValidator>
              
                </div>
        </div>
        <div class="col-lg-12">
                <div class="col-lg-3"></div>
                <div class="col-lg-3">Email id</div>
                <div class="col-lg-3"><asp:TextBox TextMode="Email" id="studnt_email" runat="server" /> </div>
                <div class="col-lg-3">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="studnt_email" runat="server" ErrorMessage="email required"></asp:RequiredFieldValidator>
                
                </div>
            <div class=" col-lg-12 col-md-12">&nbsp</div>
        </div>                
        <div class="col-lg-12">
                <div class="col-lg-3"></div>
                <div class="col-lg-3">Number</div>
                <div class="col-lg-3"><asp:TextBox TextMode="Phone" id="Studnt_no" runat="server" /> </div>
                <div class="col-lg-3">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="studnt_no" runat="server" ErrorMessage="number required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="^[0-9]{10,12}$" ControlToValidate="studnt_no" runat="server" ErrorMessage="enter 10 numbers"></asp:RegularExpressionValidator>
              
                </div>
            
        </div>       
        <div class="col-lg-12">
                <div class="col-lg-3"></div>
                <div class="col-lg-3">UserName</div>
                <div class="col-lg-3"><asp:TextBox ID="studnt_usrname" runat="server"/></div>
                <div class="col-lg-3">
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="studnt_usrname" runat="server" ErrorMessage="number required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationExpression="^[a-zA-Z]+$" ControlToValidate="studnt_usrname" runat="server" ErrorMessage="enter characters only"></asp:RegularExpressionValidator>
              
                </div>
    
        </div>   
        <div class="col-lg-12">
                <div class="col-lg-3"></div>
                <div class="col-lg-3">Password</div>
                <div class="col-lg-3"><asp:TextBox TextMode="Password" id="studnt_passwrd" runat="server" /> </div>
                <div class="col-lg-3">
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="studnt_passwrd" runat="server" ErrorMessage="number required"></asp:RequiredFieldValidator>
                    
                </div>
            
        </div>              
        <div style="margin-top:5px;" class="col-lg-12">
                <div class="col-lg-3"></div>
                <div class="col-lg-6">
                    <asp:Button CssClass="btn btn-block btn-primary" Width="100%"  ID="signup" runat="server" Text="Sign Up" OnClick="signup_Click" /></div> 
                <div class="col-lg-3"></div>
        </div>   
        <div class="col-lg-12 margin_top10">
                <div class="col-lg-3"></div>
                <div class="col-lg-6 forecolor_darkred fontsize_26"><asp:Label Text="Username alread exists. Think Different !" Visible="false" id="exists" runat="server" /> </div>
                <div class="col-lg-3"></div>
        </div>              
        
       
    </div>
    </form>
</body>
</html>
