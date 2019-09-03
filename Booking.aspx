<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="User_Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
<div style="margin:auto; width:500px; padding:50px; background:linear-gradient(#fff4e4,#ffffff); border-radius:20px;box-shadow:0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19); text-align: left;">
    <div class="col-md-5"> <asp:Label ID="lblBookDate" runat="server" Text="Booking Date" 
        style="font-weight: 700"></asp:Label>
   </div>
    <div class="col-md-7">
    <asp:TextBox ID="TxtBookDate" runat="server" Type="Date"></asp:TextBox>
    </div>
 <br />
 
 <br />
    <div class="col-md-5"><asp:Label ID="lblCCNo" runat="server" Text="CCNo" style="font-weight: 700"></asp:Label>
    </div> 
    <div class="col-md-7">
    <asp:TextBox ID="TxtCCNo" runat="server" pattern="[0-9]{16}"></asp:TextBox>
    </div> 
    <br />
    <br />
    <div class="col-md-5"><asp:Label ID="lblCCName" runat="server" Text="CCName" style="font-weight: 700"></asp:Label>
    </div> 
    <div class="col-md-7"><asp:TextBox ID="TxtCCName" runat="server" pattern="[A-Za-z ]*" ></asp:TextBox>
    </div> 
    <br />
    <br />
    <div class="col-md-5"><asp:Label ID="lblExpDate" runat="server" Text="ExpireDate" 
        style="font-weight: 700"></asp:Label>
    </div> 
    <div class="col-md-7"><asp:TextBox ID="TxtEDate" runat="server" pattern="[0-9][0-9]/[0-9][0-9][0-9][0-9]"></asp:TextBox>
    </div> 
    <br />
    <br />
    <div class="col-md-5"><asp:Label ID="lblCVVNo" runat="server" Text="CVVNo" style="font-weight: 700"></asp:Label>
    </div> 
    <div class="col-md-7"><asp:TextBox ID="TxtCVVNo" runat="server" pattern="[0-9]{3}"></asp:TextBox>
    </div> 
    <br />
    <br />
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
    <ContentTemplate>
    <div class="col-md-5"> 
    <asp:Label ID="lblAdult" runat="server" Text="Adult" style="font-weight: 700"></asp:Label>
 
   </div>
    <div class="col-md-7">
    <asp:TextBox ID="TxtAdult" runat="server" AutoPostBack="true" 
            ontextchanged="TxtAdult_TextChanged" ></asp:TextBox><asp:Label ID="LblErr" runat="server"
                Text="" ForeColor="Red"></asp:Label>
    </div>
        <asp:HiddenField ID="txtprice" runat="server" />
        <br />
    <br />
       <div class="col-md-5"> 
       <asp:Label ID="lblAmount" runat="server" Text="Amount" style="font-weight: 700"></asp:Label>
 
   </div>
    <div class="col-md-7">
    <asp:TextBox ID="TxtAmount" runat="server" ReadOnly="true"></asp:TextBox>
    </div>
    </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="BtnBook" runat="server" Text="BOOK" onclick="BtnBook_Click" />
    </a>
</asp:Content>

