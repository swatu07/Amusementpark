<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="Rides.aspx.cs" Inherits="User_Rides" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="about-bottom" style="margin:50px;padding:50px" >
        <asp:Repeater ID="Repeater1" runat="server" 
            onitemcommand="Repeater1_ItemCommand">
            
               <ItemTemplate>
            
				 <div class="col-md-5" style="margin:20px; padding:20px;background:liner-gradient (#eeeeee,#ffffff);border-radius:20px;box-shadow:0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);">
										<div class="col-md-6" >
                                          
											<h4><img src='../Upload/<%# Eval("Image")%>' class="img-responsive" style="Height:300px;width:250px" /></h4>
                                            <h3 style="color:#F2D924"><%# GetStar (Eval("Rate").ToString()) %><span style="color:#aaaaaa"><%# GetBStar (Eval("Rate").ToString()) %></span>
                                       </div>
                                       	<div class="col-md-6" style="padding:30px">
                                    
                                            <h3 style="padding:10px"><%# Eval("RideName") %></h3>
                                            <h4 style="padding:10px"><%# Eval("Description") %></h4>
                                            <h4 style="padding:10px">Age: <%# Eval("Age") %></h4>
                                             
										</div>                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="Review" runat="server" Text="Review" CommandArgument='<%# Eval("RideId") %>' CommandName="btnreview" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="Rate" runat="server" Text="Rate" CommandArgument='<%# Eval("RideId") %>' CommandName="btnrate" />
                  </div> 
                              
	</ItemTemplate> 
                        
    </asp:Repeater> 
		<div class="clearfix"> </div>
	</div>
    </asp:Content>

