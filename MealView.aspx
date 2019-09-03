<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="MealView.aspx.cs" Inherits="Admin_MealView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="col-md-8" 
        
        style="margin:100px; margin-left:-10%; padding:50px; background:linear-gradient(#ffc3a0,#ffafbd); border-radius:20px;box-shadow:0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19); text-align: left;">

        <section id="main-content">
	<section class="wrapper">
        <br /> 
    <br />
    <br />
		<div class="table-agile-info">
 <div class="panel panel-default">
    <div class="panel-heading">
     <h1 class="text-center"> Meal </h1>
    </div>
    <div>
      <table class="table" ui-jq="footable" ui-options='{
        "paging": {
          "enabled": true
        },
        "filtering": {
          "enabled": true
        },
        "sorting": {
          "enabled": true
        }}'>
        <thead>
          <tr>
          <th>Edit</th>
          <th>MealName</th> 
          <th>Price</th>  
          <th>Delete</th>       
                  
          </tr>
          </thead> 
          <asp:Repeater ID="Repeater1" runat="server" onitemcommand="Repeater1_ItemCommand">
          <ItemTemplate >
          <tbody >
          <tr data-expanded="true">
        
          <td><asp:ImageButton ID="ImageButton1" ImageUrl="~/Admin/images/edit.jpg" runat="server" Width="32" Height="32" CommandArgument='<%# Eval("MealID") %>' CommandName="btnedit"></asp:ImageButton></td>
          <td><%# Eval("MealName") %></td>
          <td><%# Eval("Price")%></td>
          <td><asp:ImageButton ID="ImageButton2" ImageUrl="~/Admin/images/delete-big.jpg" runat="server" Width="32" Height="32" CommandArgument='<%# Eval("MealID") %>' CommandName="btndelete"></asp:ImageButton></td>
          
          </tr>
          </tbody>
          </ItemTemplate>
          </asp:Repeater>
          </table> 
    </div> 
    </div> 
  </div> 
     </section> 
     </section>
     </div> 
</asp:Content>

