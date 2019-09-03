<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="User_EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<div class="col-md-5" 
        
        style="margin:100px; margin-left:30%; padding:50px; background:linear-gradient(#fff4e4,#ffffff); border-radius:20px;box-shadow:0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19); text-align: left;">
				
                    <asp:Label ID="lblUserName" runat="server" Text="User Name"
                        style="font-size: large; font-weight: 700"></asp:Label>
                    <asp:TextBox ID="TxtUserName" runat="server" class="form-control" ></asp:TextBox>
                    <br />
                    <br />
                   <asp:Label ID="lblMno" runat="server" Text="Mobile Number "
                        style="font-size: large; font-weight: 700"></asp:Label>
                    <asp:TextBox ID="TxtMNo" runat="server" class="form-control"></asp:TextBox>
                    <br /> <br />
                   <asp:Label ID="lblAddress" runat="server" Text="Address "
                        style="font-size: large; font-weight: 700"></asp:Label>
                    <asp:TextBox ID="TxtAddress" runat="server" class="form-control"></asp:TextBox>
                    <br /> <br />
                   <asp:Label ID="lblImg" runat="server" Text="Image "
                        style="font-size: large; font-weight: 700"></asp:Label>
                        <asp:Image ID="Image1" runat="server" Height=100px Width=100px />
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br /> <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnChange" runat="server" Text="Change" Height="39px" 
                        onclick="BtnChange_Click" Width="127px" />
				&nbsp;&nbsp;&nbsp;
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</asp:Content>

