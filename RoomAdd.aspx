<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="RoomAdd.aspx.cs" Inherits="Admin_RoomAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="col-md-8" 
        
        style="margin:100px; margin-left:-10%; padding:50px; background:linear-gradient(#feada6,#f5efef); border-radius:20px;box-shadow:0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19); text-align: left;">

                    <section class="panel">
                     <br />
                    <br />
                    <br />
                   
                        <header class="panel-heading">
                         <h1 align="center" > Room </h1>
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <form role="form">
                                <div class="form-group">
                                    Room Name
                                   <asp:TextBox ID="RoomName" class="form-control" pattern="[0-9]+" title="Please Enter Alphabets..." runat="server"></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                     RoomType<br />
                                     <asp:DropDownList ID="DDLRoomType" runat="server">
                                     </asp:DropDownList>
                                </div>
                                 <div class="form-group">
                                     Rate
                                    <asp:TextBox ID="Rate" class="form-control" pattern="[0-9.]*" title="Please Enter Numeric..." runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                     Image1
                                    <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>
                                </div>
                                <div class="form-group">
                                     Image2
                                 <asp:FileUpload ID="FileUpload2" runat="server"></asp:FileUpload>
                                </div>
                                <div class="form-group">
                                     Image3
                                    <asp:FileUpload ID="FileUpload3" runat="server"></asp:FileUpload>
                                </div>
                                <div class="form-group">
                                     Image
                                    <asp:FileUpload ID="FileUpload4" runat="server"></asp:FileUpload>
                                </div>
                               
                               <asp:Button ID="Add" class="btn btn-info" runat="server" Text="ADD" 
                                    onclick="Button1_Click"></asp:Button>
                            </form>
                            </div>

                        </div>
                    </section>


</asp:Content>

