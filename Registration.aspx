<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/VisitorMasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Client_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
<br />
<br />
<br />
<br />
	
		<div class="w3ls-section contact" id="contact">
		<div class="container">        
      	<h3 class="w3ls-title">Registration</h3>
			<div class="contact-form">
            <h2>Already User Please Click Here<a href ="LogIn.aspx ">LogIn</a></h2>
				<div class="col-md-7 contact-right">
					<form name="Form1" runat="server">
                    <asp:Label ID="lbluname" runat="server" Text="User Name " 
                        style="font-size: large; font-weight: 700"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TxtUserName" runat="server" class="form-control" pattern="[A-Za-z]+" title="InValid Name..."></asp:TextBox>
                    <br /> <br /> 
                    <asp:Label ID="lblemail" runat="server" Text="E-mail "
                        style="font-size: large; font-weight: 700"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TxtEmail" runat="server" class="form-control" pattern="[A-Za-z0-9._%+-]+@[a-z0-9.-]+.[a-z]" title="Invalid E-mail"></asp:TextBox>
                    <br /> <br /> 
                    <asp:Label ID="lblpwd" runat="server" Text="Password "
                        style="font-size: large; font-weight: 700"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" required=""></asp:TextBox>
                    <br /> <br /> 
                    <asp:Label ID="lblmno" runat="server" Text="Mobile Number "
                        style="font-size: large; font-weight: 700"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TxtMobileNumber" runat="server" class="form-control" pattern="[0-9]*" title="InValid Number..."></asp:TextBox>
                    <br /> <br /> 
                    <asp:Label ID="lbladd" runat="server" Text="Address "
                        style="font-size: large; font-weight: 700"></asp:Label>
                    <asp:TextBox ID="TxtAddress" runat="server" class="form-control" Rows="10" Columns="20" required=""></asp:TextBox>
                    <br /> <br /> 
                    <asp:Label ID="lblsq" runat="server" Text="Security Question "
                        style="font-size: large; font-weight: 700"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DDLSQ" runat="server">
                        <asp:ListItem>What is your Number</asp:ListItem>
                        <asp:ListItem>What is your fav color</asp:ListItem>
                        <asp:ListItem>What is your first Number</asp:ListItem>
                        <asp:ListItem>What is your Father&#39;s Name</asp:ListItem>
                    </asp:DropDownList>
                    <br /> <br /> 
                    <asp:Label ID="lblsa" runat="server" Text="Security Answer "
                        style="font-size: large; font-weight: 700" required=""></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:TextBox ID="TxtSecurityAnswer" runat="server" class="form-control"></asp:TextBox>
                    <br /> <br /> 
                    <asp:Label ID="lblimg" runat="server" Text="Image "
                        style="font-size: large; font-weight: 700"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br /> <br /> 
                    <asp:Button ID="BtnRegister" runat="server" Text="Register" 
                        onclick="BtnRegister_Click"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnReset" runat="server" Text="Reset" 
                        onclick="BtnReset_Click" />
                    </form>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</asp:Content>

