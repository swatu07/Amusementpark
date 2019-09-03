<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Rate.aspx.cs" Inherits="Admin_Rate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="col-md-8" 
        
        style="margin:100px; margin-left:-10%; padding:50px; background:linear-gradient(#ffc3a0,#ffafbd); border-radius:20px;box-shadow:0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19); text-align: left;">

<section id="main-content">
<section class="wrapper">
    <br />
    <br />
    <br />
 <div class="panel panel-default">
    <div class="panel-heading">
     <h1 class="text-center"> Rate </h1>
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
          <th>User</th> 
          <th>Rate</th> 
                  
          </tr>
          </thead> 
          <asp:Repeater ID="Repeater1" runat="server">
          <ItemTemplate >
          <tbody >
          <tr data-expanded="true">
            
          <td><%# Eval("UserName") %></td>
          <td><%# Eval("Rate") %></td>
          
          
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

