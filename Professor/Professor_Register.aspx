<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Professor_Register.aspx.cs" Inherits="Professor_Professor_Register" %>

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
    
    <title>Professor</title>

</head>
<body>
 <form id="form1" runat="server">
   <div class="container">
     <div class="font_header forecolor_darkblue page-header text-center fontsize_40">
         Student Information Center
     </div>
    <div class="row container font_oswald fontsize_24 forecolor_darkblue">
            <div class="col-lg-12">
            <div class="col-lg-3"></div>
            <div class="col-lg-3 text-uppercase font_oranienbaum fontsize_28"> Professor Registration</div>
            <div class="col-lg-3"></div>
            <div class="col-lg-3"></div>
    </div>
        <div class="col-lg-12 col-md-12">&nbsp</div>
    <div class="col-lg-12">
            <div class="col-lg-3"></div>
            <div class="col-lg-3">
                Name
                
            </div>
            <div class="col-lg-3"><asp:TextBox id="Profesor_name" runat="server" /> 
               
            </div>
            <div class="col-lg-3">
                 <asp:RequiredFieldValidator  Font-Size="16px" CssClass="col-lg-4" ID="namerequired" runat="server" ControlToValidate="Profesor_name" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator Font-Size="16px" CssClass="col-lg-4"  ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter characters only" ControlToValidate="Profesor_name" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
</div>
    </div>
    <div class="col-lg-12">
            <div class="col-lg-3"></div>
            <div class="col-lg-3">Email id</div>
            <div class="col-lg-3"><asp:TextBox TextMode="Email" id="Profesor_email" runat="server" />
                
            </div>
            <div class="col-lg-3">
                     <asp:RequiredFieldValidator Font-Size="16px"  CssClass="col-lg-4" ID="RequiredFieldValidator1" runat="server" ControlToValidate="Profesor_name" ErrorMessage="Email Required"></asp:RequiredFieldValidator>
          
            </div>
    </div>                
       <div class="col-lg-12 col-md-12">&nbsp</div>
    <div class="col-lg-12">
            <div class="col-lg-3"></div>
            <div class="col-lg-3">Number</div>
            <div class="col-lg-3"><asp:TextBox TextMode="Number" id="Profesor_no" runat="server" />
                
            </div>
            <div class="col-lg-3">
                 <asp:RequiredFieldValidator Font-Size="16px"  CssClass="col-lg-4" ID="RequiredFieldValidator2" runat="server" ControlToValidate="Profesor_no" ErrorMessage="Number Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator Font-Size="16px"  CssClass="col-lg-4"  ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter 10 numbers only" ControlToValidate="Profesor_no" ValidationExpression="^[0-9]{10,12}$"></asp:RegularExpressionValidator>
               
            </div>
    </div>       
    <div class="col-lg-12">
            <div class="col-lg-3"></div>
            <div class="col-lg-3">UserName</div>
            <div class="col-lg-3"><asp:TextBox ID="Profesor_usrname" runat="server"/>
               
            </div>
            <div class="col-lg-3">
                 <asp:RequiredFieldValidator Font-Size="16px"  CssClass="col-lg-4" ID="RequiredFieldValidator3" runat="server" ControlToValidate="Profesor_usrname" ErrorMessage="UserName Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator Font-Size="16px"  CssClass="col-lg-4"  ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter AlphaNumeric starting with  Character" ControlToValidate="Profesor_usrname" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>

            </div>
    </div>   
    <div class="col-lg-12">
            <div class="col-lg-3"></div>
            <div class="col-lg-3">Password</div>
            <div class="col-lg-3"><asp:TextBox TextMode="Password" id="Profesor_passwrd" runat="server" />
                
            </div>
            <div class="col-lg-3">
                     <asp:RequiredFieldValidator Font-Size="16px"  CssClass="col-lg-4" ID="RequiredFieldValidator4" runat="server" ControlToValidate="Profesor_passwrd" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
           
            </div>
    </div>
        <div class="col-lg-12 col-md-12">&nbsp</div>
    <div class="col-lg-12">
            <div class="col-lg-3"></div>
            <div class="col-lg-3">Institute</div>
            <div class="col-lg-3"><asp:TextBox id="institute" runat="server" /> 
                </div>
            <div class="col-lg-3">
                <asp:RequiredFieldValidator Font-Size="16px"  CssClass="col-lg-4" ID="RequiredFieldValidator5" runat="server" ControlToValidate="institute" ErrorMessage="Institute Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator  Font-Size="16px" CssClass="col-lg-4"  ID="RegularExpressionValidator6" runat="server" ErrorMessage="Enter characters only" ControlToValidate="institute" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
            
            </div>
    </div>              
    <div style="margin-top:5px;" class="col-lg-12">
            <div class="col-lg-3"></div>
            <div class="col-lg-6">
                <asp:Button CssClass="btn btn-block btn-primary" Width="100%"  ID="signup" runat="server" Text="Sign Up" OnClick="signup_Click"/></div> 
            <div class="col-lg-3"></div>
    </div>
    <div class="col-lg-12">
            <div class="col-lg-3"></div>
            <div class="col-lg-6 forecolor_darkred fontsize_26"><asp:Label Text="Username alread exists. Think Different !" Visible="false" id="exists" runat="server" /> </div>
            <div class="col-lg-3"></div>
    </div>                         
   </div>
  </div>
 </form>
</body>
</html>
