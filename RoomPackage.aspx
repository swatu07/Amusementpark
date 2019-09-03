<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/VisitorMasterPage.master" AutoEventWireup="true" CodeFile="RoomPackage.aspx.cs" Inherits="Client_RoomPackage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
<br />
<br />
<br />
<br />
	<div class="w3ls-section news" id="services">
		<div class="container">
			<h3 class="w3ls-title">Room Packages</h3>
			<div class="news-agileinfo">
            
				<div class="news-w3row">
                <asp:Repeater ID="Repeater1" runat="server">
               <ItemTemplate>
            
					<div class="wthree-news-grids">
						<div class="col-md-2 col-xs-2 datew3-agileits">
                        
							<h4><img src='../Upload/<%# Eval("Image")%>' class="img-responsive" /></h4>
              		</div>
						<div class="col-md-10 col-xs-10 datew3-agileits-info ">
							<h5>Room Name <%# Eval("RoomName")%> </h5>
                            <h4><p><%# Eval("Description")%></p></h4>
                            <h6>Total Days <b><u><%# Eval("Days")%></u></b> & Nights <b><u><%# Eval("Nights")%></u></b> </h6>
                            <h6>Maximum Person  <b><u><%# Eval("Max_Person")%></u></b>  <h6>
                            <h6>Meal Plan: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%# Eval("MealName")%></h6>
                            <h6>Amount: <%# Eval("Amount")%> <h6>
						</div>
						<div class="clearfix"> </div>
					</div>
					</ItemTemplate>
                    <AlternatingItemTemplate>
                    <div class="wthree-news-grids news-grids-mdl" >
						<div class="col-md-3"></div>
						<div class="col-md-2 col-xs-2 datew3-agileits datew3-agileits-fltrt">
							<h4><img src='../Upload/<%# Eval("Image")%>' class="img-responsive" /></h4>
              			</div>
						<div class="col-md-7 col-xs-7 datew3-agileits-info datew3-agileits-info-fltlft" style="padding-left:200px">
		                    <h5>Room Name <%# Eval("RoomName")%> </h5>
                            <h4><p><%# Eval("Description")%></p></h4>
                            <h6>Total Days <b><u><%# Eval("Days")%></u></b> & Nights <b><u><%# Eval("Nights")%></u></b> </h6>
                            <h6>Maximum Person  <b><u><%# Eval("Max_Person")%></u></b>  <h6>
                            <h6>Meal Plan: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%# Eval("MealName")%></h6>
                            <h6>Amount: <%# Eval("Amount")%> <h6>
											</div>
						<div class="clearfix"> </div>
					</div>
                    
                    
                    
                    </AlternatingItemTemplate>
             </asp:Repeater>
              
					<div class="wthree-news-grids">
						
						<div class="clearfix"> </div>
					</div>
				
			</div>
              
		</div>
	</div>
</asp:Content>

