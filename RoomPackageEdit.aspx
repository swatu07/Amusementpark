<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="RoomPackageEdit.aspx.cs" Inherits="Admin_RoomPackageAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<body>
<div class="col-md-8" 
        
        style="margin:100px; margin-left:-10%; padding:50px; background:linear-gradient(#fff4e4,#ffffff); border-radius:20px;box-shadow:0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19); text-align: left;">
	
                    <section class="panel">
                    <br />
                    <br />
                    <br />

                        <header class="panel-heading">
                         <h1 align="center"> RoomPackage </h1>
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <form role="form">
                                <div class="form-group">
                                    Room<br />
                                    <asp:DropDownList ID="DDLRoom" runat="server">
                                    </asp:DropDownList>
                                </div>
                                 <div class="form-group">
                                     Days
                                    <asp:TextBox ID="Days" class="form-control" pattern="[0-9]*" title="Please Enter Numeric..." runat="server"></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                     Nights
                                    <asp:TextBox ID="Nights" class="form-control" pattern="[0-9]*" title="Please Enter Numeric..." runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                     Meal<br />
                                     <asp:DropDownList ID="DDLMeal" runat="server">
                                     </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                     Amount
                                    <asp:TextBox ID="Amount" class="form-control" pattern="[0-9.]*" title="Please Enter Numeric..." runat="server"></asp:TextBox>
                                </div>
                               <div class="form-group">
                                     Description
                                    <asp:TextBox ID="Description" class="form-control" pattern="[A-Za-z0-9 ]+" title="Please Enter Alphabets..." runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                     Max_Person
                                    <asp:TextBox ID="Max_Person" class="form-control" pattern="[0-9]*" title="Please Enter Numeric..." runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                     Image
                                     <asp:Image ID="Image1" runat="server" Height="100" width="100"></asp:Image>
                                     <br />Change
                                    <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>
                                </div>

                               <asp:Button ID="Add" class="btn btn-info" runat="server" Text="SAVE" 
                                    onclick="Button1_Click"></asp:Button>
                            </form>
                            </div>

                        </div>
                    </section>

            </div>
           </body>
</asp:Content>

