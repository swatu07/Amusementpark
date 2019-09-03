<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="ReviewAdd.aspx.cs" Inherits="User_ReviewAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-md-5" 
        
        style="margin:100px; margin-left:30%; padding:50px; background:linear-gradient(#fff4e4,#ffffff); border-radius:20px;box-shadow:0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19); text-align: left;">
	
       
            	 					    <div class="col-md-7">
                                             <asp:Label ID="Lblreview" runat="server" Text="Review" 
                                                 style="font-weight: 700; font-size: x-large"></asp:Label>
                                             <br />
                                             <br />
                                            <asp:TextBox ID="TxtReview" runat="server" TextMode="MultiLine" Rows="5" Columns="55"></asp:TextBox>
                                            <br /> <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="BtnReview" runat="server" Text="Review" 
                                                onclick="BtnReview_Click" Height="45px" Width="131px" />
                                        </div>
                     
                  
                        
   
		<div class="clearfix"> </div>
	</div>

</asp:Content>

