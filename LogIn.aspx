<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/VisitorMasterPage.master" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="Client_LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
<br />
<br />
<br />
<br />
	<div class="col-md-5" 
        
        style="margin:100px; margin-left:30%; padding:50px; background:linear-gradient(#fff4e4,#ffffff); border-radius:20px;box-shadow:0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19); text-align: left;">
				<form id="Form1" name="Form1" runat="server">
                    <asp:Label ID="lblEmail" runat="server" Text="E-mail "
                        style="font-size: large; font-weight: 700"></asp:Label>
                    <asp:TextBox ID="Email" runat="server" class="form-control" pattern="[A-Za-z0-9._%+-]+@[a-z0-9.-]+.[a-z]" title="Invalid E-mail"></asp:TextBox>
                    <br />
                    <br />
                   <asp:Label ID="Label1" runat="server" Text="Password "
                        style="font-size: large; font-weight: 700"></asp:Label>
                    <asp:TextBox ID="Password" runat="server" class="form-control" TextMode="Password" required="required"></asp:TextBox>
                    <br /> <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="BtnLogIn" runat="server" Text="Log-In" 
                        onclick="BtnLogIn_Click" Height="33px" Width="99px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
                        style="font-size: large"> </span>
                        <asp:Label ID="lblClient" runat="server" 
                             style="font-size: large; color: #000099"></asp:Label>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkForgot" runat="server" onclick="LinkForgot_Click">Forgot Password</asp:LinkButton>
                    </form>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</asp:Content>

