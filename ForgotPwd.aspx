<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPwd.aspx.cs" Inherits="Visitor_ForgotPwd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<div>
	<div class="col-md-5" 
        
        style="margin:100px; padding:50px; background:linear-gradient(#feada6,#f5efef); border-radius:20px;box-shadow:0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19); text-align: left;">
				<form id="Form1" name="Form1" runat="server">
                    <asp:Label ID="lblEmail" runat="server" Text="E-mail "
                        style="font-size: large; font-weight: 700"></asp:Label>
                    <asp:TextBox ID="TxtEmail" runat="server" class="form-control" pattern="[A-Za-z0-9._%+-]+@[a-z0-9.-]+.[a-z]" title="Invalid E-mail"></asp:TextBox>
                    <br />
                    <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                        ID="BtnCheck" runat="server" Text="Check" Height="30px" 
                        style="font-weight: 700" Width="124px" onclick="BtnCheck_Click" />
                    <br />
                    <br />
                <asp:Label ID="LblSQ" runat="server" Text="Security_Question" 
                        style="font-weight: 700; font-size: large"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="TxtSQ" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                <asp:Label ID="LblSA" runat="server" Text="Security_Answer" 
                        style="font-weight: 700; font-size: large"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="TxtSA" runat="server"></asp:TextBox>
                    
                    <br />
                    <br />
                    <br />
                <asp:Label ID="LblNew" runat="server" Text="New Password" 
                        style="font-weight: 700; font-size: large"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="TxtNewPwd" runat="server" TextMode="Password"></asp:TextBox>
                    
                    

                    <br />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnChange" runat="server" Text="Change" Height="30px" 
                        style="font-weight: 700" Width="124px" onclick="BtnChange_Click" />
                    
                    

                    </form>
				</div> 
			</div>
		
</body>
</html>
