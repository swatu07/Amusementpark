<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="RateAdd.aspx.cs" Inherits="User_RateAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="col-md-5" 
        
        style="margin:100px; margin-left:30%; padding:50px; background:linear-gradient(#fff4e4,#ffffff); border-radius:20px;box-shadow:0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19); text-align: left;">
	           
									    <div class="col-md-7">
                                        <ul style="margin:50px;list-style:none">
                                            <asp:RadioButtonList ID="RadioButtonList1" style="color:#F2D924;font-size:32px;" runat="server">
                                            <asp:ListItem   Text="★"> </asp:ListItem>
                                                <asp:ListItem  Text="★★"> </asp:ListItem>
                                                    <asp:ListItem  Text="★★★"> </asp:ListItem>
                                                        <asp:ListItem  Text="★★★★"> </asp:ListItem>
                                                            <asp:ListItem  Text="★★★★★"> </asp:ListItem>
                                            </asp:RadioButtonList>
                                        </ul>
                                        <asp:Button ID="Rate" style="margin-left:40px" runat="server" Text="Rate" onclick="Rate_Click" />
                                        </div>
                     
                  
                        
   
		<div class="clearfix"> </div>
	</div>

</asp:Content>

