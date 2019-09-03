<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="PackageBook.aspx.cs" Inherits="Admin_PackageBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="col-md-8" 
        
        style="margin:100px; margin-left:-10%; padding:50px; background:linear-gradient(#ffc3a0,#ffafbd); border-radius:20px;box-shadow:0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19); text-align: left;">

        <section id="main-content">
	<section class="wrapper">
        <br />
    <br />
    <br />
		<div class="table-agile-info">
 <div class="panel panel-default" >
    <div class="panel-heading">
     <h1 class="text-center">PackageBook</h1>
     <br /> 
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
          
          <th>UserID</th> 
          <th>BookDate</th>  
          <th>RoomPackageID</th>  
          <th>Amount</th>  
          <th>CCNo</th>  
          <th>CCName</th>  
          <th>ExpDate</th>  
          <th>CVVNo</th>  
          <th>Adult</th>  
          <th>ParkPackageID</th>  
          <th>RoomParkPackageID</th>  
          <th>RoomID</th>  
          
                  
          </tr>
          </thead> 
          <asp:Repeater ID="Repeater1" runat="server">
          <ItemTemplate >
          <tbody >
          <tr data-expanded="true">
        
          
          <td><%# Eval("UserID") %></td>
          <td><%# Eval("BookDate")%></td>
          <td><%# Eval("RoomPackageID")%></td>
          <td><%# Eval("Amount")%></td>
          <td><%# Eval("CCNo")%></td>
          <td><%# Eval("CCName")%></td>
          <td><%# Eval("ExpDate")%></td>
          <td><%# Eval("CVVNo")%></td>
          <td><%# Eval("Adult")%></td>
          <td><%# Eval("ParkPackageID")%></td>
          <td><%# Eval("RoomParkPackageID")%></td>
          <td><%# Eval("RoomID")%></td>
          
          
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


