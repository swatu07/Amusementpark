<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminChangePwd.aspx.cs" Inherits="Admin_AdminChangePwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="col-md-5" 
        
        style="margin:100px; padding:20px; background:linear-gradient(#fff4e4,#ffffff); border-radius:20px;box-shadow:0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19); text-align: left;">
    <asp:Label ID="Label1" runat="server" Text="lblold" 
        style="font-weight: 700; font-size: x-large; text-align: left;">Old Password  </asp:Label>
    <asp:TextBox ID="TxtOldPwd" runat="server" class="form-control" 
        TextMode="Password"></asp:TextBox><br /><br />
    <asp:Label ID="Label2" runat="server" Text="lblnew" 
        style="font-weight: 700; font-size: x-large; text-align: left;">New Password  </asp:Label>
    <asp:TextBox ID="TxtNewPwd" runat="server" class="form-control" 
        TextMode="Password"></asp:TextBox><br /><br />
    <asp:Label ID="Label3" runat="server" Text="lblcon" 
        style="font-weight: 700; font-size: x-large; text-align: left;">Confirm Password  </asp:Label>
    <asp:TextBox ID="TxtConfPwd" runat="server" class="form-control" 
        TextMode="Password"></asp:TextBox><br /><br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="BtnChange" runat="server" Text="Change" Height="39px" 
        onclick="BtnChange_Click" Width="148px" />
      
    <asp:Label ID="Label4" runat="server" Text=""></asp:Label>


</asp:Content>

