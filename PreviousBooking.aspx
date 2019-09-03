<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="PreviousBooking.aspx.cs" Inherits="User_PreviousBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
        <br />
        <br />
        <h2 align="center" >RoomParkPackage</h2>
        <thead>
          <tr>
          
          <th>BookDate</th> 
          <th>CurrentDate</th>
          <th>Amount</th>
          <th>Adult</th>
          <th>Days</th>
          <th>Nights</th>
          <th>RoomName</th>
          <th>MealName</th>
                    
                  
          </tr>
          </thead> 
          <asp:Repeater ID="Repeater1" runat="server">
          <ItemTemplate >
          <tbody >
          <tr data-expanded="true" >
          
          <td><%# Eval("BookDate") %></td>
          <td><%# Eval("CurrentDate") %></td>
          <td><%# Eval("Amount") %></td>
          <td><%# Eval("Adult") %></td>
          <td><%# Eval("Days") %></td>
          <td><%# Eval("Nights") %></td>
          <td><%# Eval("RoomName")%></td>
          <td><%# Eval("MealName")%></td>
          
          
          </tr>
          </tbody>
          </ItemTemplate>
          </asp:Repeater>
          </table> 
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
        <br />
        <br />
        <h2 align="center" >RoomPackage</h2>
        
        <thead>
          <tr>
          
          <th>BookDate</th> 
          <th>CurrentDate</th>
          <th>Amount</th>
          <th>Adult</th>
          <th>Days</th>
          <th>Nights</th>
          <th>RoomName</th>          
          <th>MealName</th>
          
                  
          </tr>
          </thead> 
          <asp:Repeater ID="Repeater2" runat="server">
          <ItemTemplate >
          <tbody >
          <tr data-expanded="true" >
          
          <td><%# Eval("BookDate") %></td>
          <td><%# Eval("CurrentDate") %></td>
          <td><%# Eval("Amount") %></td>
          <td><%# Eval("Adult") %></td>
          <td><%# Eval("Days") %></td>
          <td><%# Eval("Nights") %></td>
          <td><%# Eval("RoomName")%></td>          
          <td><%# Eval("MealName")%></td>
          
          
          </tr>
          </tbody>
          </ItemTemplate>
          </asp:Repeater>
          </table> 
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
        <br />
        <br />
        <h2 align="center" >ParkPackage</h2>
        
        <thead>
          <tr>
          
          <th>BookDate</th> 
          <th>CurrentDate</th>
          <th>Amount</th>
          <th>Adult</th>
          <th>MealName</th>
                    
                  
          </tr>
          </thead> 
          <asp:Repeater ID="Repeater3" runat="server">
          <ItemTemplate >
          <tbody >
          <tr data-expanded="true" >
          
          <td><%# Eval("BookDate") %></td>
          <td><%# Eval("CurrentDate") %></td>
          <td><%# Eval("Amount") %></td>
          <td><%# Eval("Adult") %></td>
          <td><%# Eval("MealName")%></td>          
          
          
          </tr>
          </tbody>
          </ItemTemplate>
          </asp:Repeater>
          </table> 
    </div> 
    
</asp:Content>

