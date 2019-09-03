<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="Room.aspx.cs" Inherits="User_Room" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="about-bottom" style="margin:50px;padding:50px" >
        <asp:Repeater ID="Repeater1" runat="server">
               <ItemTemplate>
            
				 <div class="col-md-5" style="margin:20px; padding:20px;background:liner-gradient (#eeeeee,#ffffff);border-radius:20px;box-shadow:0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);">
										<div class="col-md-6" >
                                          
											<h4><img src='../Upload/<%# Eval("Image")%>' class="img-responsive" style="Height:300px;width:250px" /></h4>

                                       </div>
                                       	<div class="col-md-6" style="padding:30px">
                                    
                                            <h3 style="padding:10px"><%# Eval("RoomName") %></h3>
                                            <h3 style="padding:10px"><%# Eval("RoomTypeName") %></h3>
                                            <h3 style="padding:10px">Rate: <%# Eval("Rate") %></h3>
										</div>
                                        <div class="clearfix">
                                        </div>
                                        <div style="margin-top:30px">
                                        <div class="col-md-4">
		                                     <img src='../Upload/<%# Eval("Image1")%>' class="img-responsive" style="Height:200px;width:180px" />
                                        </div>                        

                                        <div class="col-md-4">
		                                     <img src='../Upload/<%# Eval("Image2")%>' class="img-responsive" style="Height:200px;width:180px" />
                                        </div>                        
                                        <div class="col-md-4">
		                                     <img src='../Upload/<%# Eval("Image3")%>' class="img-responsive" style="Height:200px;width:180px" />
                                        </div>                        

                                        </div>

                  </div> 
                              
	</ItemTemplate> 
                        
    </asp:Repeater> 
		<div class="clearfix"> </div>
	</div>
</asp:Content>

