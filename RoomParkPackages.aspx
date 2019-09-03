<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="RoomParkPackages.aspx.cs" Inherits="User_RoomParkPackages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="special featured">
<div class="w3_agileits_services_grids">
                                <asp:Repeater ID="Repeater1" runat="server" onitemcommand="Repeater1_ItemCommand">
               <ItemTemplate>
            
								<div class="col-md-3 w3_agileits_services_grid hvr-overline-from-center">

									<div class="w3_agileits_services_grid_agile">
										<div class="w3_agileits_services_grid_1">
											<h4><img src='../Upload/<%# Eval("Image")%>' class="img-responsive"  style= height:300px; /></h4>
										</div>
										<h3>Room Name <%# Eval("RoomName")%> </h3>
                                        <h4><p><%# Eval("Description")%></p></h4>
                                        <h4>Total Days <b><u><%# Eval("Days")%></u></b> & Nights <b><u><%# Eval("Nights")%></u></b> </h4>
                                        <h4>Person  <b><u><%# Eval("Person")%></u></b>  <h4>
                                        <h4>Meal Plan: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><u><%# Eval("MealName")%></u></b></h4>
                                        <h3>Amount: <%# Eval("Amount")%> <h3>
                                            <asp:Button ID="BtnBook" runat="server" Text="BOOK" CommandArgument='<%# Eval("RoomParkPackageID") %>' CommandName="BtnBook"/>
									</div>
								</div>

								
                                		</ItemTemplate>
                                        <AlternatingItemTemplate>
                                        <div class="w3_agileits_services_grids">
								<div class="col-md-3 w3_agileits_services_grid hvr-overline-from-center">
									<div class="w3_agileits_services_grid_agile">
										<div class="w3_agileits_services_grid_1">
								            <h4><img src='../Upload/<%# Eval("Image")%>' class="img-responsive" style= height:300px; /></h4>
										</div>
										<h3>Room Name <%# Eval("RoomName")%> </h3>
                                        <h4><p><%# Eval("Description")%></p></h4>
                                        <h4>Total Days <b><u><%# Eval("Days")%></u></b> & Nights <b><u><%# Eval("Nights")%></u></b> </h4>
                                        <h4>Person  <b><u><%# Eval("Person")%></u></b>  <h4>
                                        <h4>Meal Plan: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><u><%# Eval("MealName")%></u></b></h4>
                                        <h3>Amount: <%# Eval("Amount")%> <h3>
                                            <asp:Button ID="BtnBook" runat="server" Text="BOOK" CommandArgument='<%# Eval("RoomParkPackageID") %>' CommandName="BtnBook"/>
									</div>
								</div>
							</div> 
                                        </AlternatingItemTemplate>
                                         
                                        </asp:Repeater> 
                                        <div class="clearfix"> </div> 
							</div>
                            </div> 

</asp:Content>

