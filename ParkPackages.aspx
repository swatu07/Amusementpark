<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="ParkPackages.aspx.cs" Inherits="User_ParkPackages" %>

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
										<h3>Meal Plan: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%# Eval("MealName")%></h3>
										<h5><p><%# Eval("Description")%></p></h5>
                                        <h1>Rs.  <%# Eval("Amount")%> </h1>
                                        
                                        <asp:Button ID="Button1" runat="server" Text="BOOK" CommandArgument='<%# Eval("ParkPackageID") %>' CommandName="BtnBook" />
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
										<h3>Meal Plan: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%# Eval("MealName")%></h3>
										<h5><p><%# Eval("Description")%></p></h5>
                                        <h1>Rs.  <%# Eval("Amount")%> </h1>
                                        <asp:Button ID="BtnBook" runat="server" Text="BOOK" CommandArgument='<%# Eval("ParkPackageID") %>' CommandName="BtnBook" />
									</div>
								</div>
							</div> 
                                        </AlternatingItemTemplate>
                                         
                                        </asp:Repeater> 
                                        <div class="clearfix"> </div> 
							</div>
                            </div> 
</asp:Content>

