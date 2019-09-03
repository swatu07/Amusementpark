<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="RideAdd.aspx.cs" Inherits="Admin_RideAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="col-md-8" 
        
        style="margin:100px; margin-left:-10%; padding:50px; background:linear-gradient(#fdfcfb,#e2d1c3); border-radius:20px;box-shadow:0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19); text-align: left;">
                    <section class="panel">
                    <br />
                    <br />
                    <br />
                        <header class="panel-heading">
                         <h1 align="center"> Ride </h1> </header><div class="panel-body">
                            <div class="position-center">
                                <form role="form">
                                 <div class="form-group">
                                    <label for="RideName">RideName:</label>
                                    <asp:TextBox ID="TxtRideName" class="form-control" pattern="[A-Za-z ]+" title="Please Enter Alphabets..." runat="server"></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                    <label for="Description">Description</label>
                                    <asp:TextBox ID="TxtDescription" class="form-control" pattern="[A-Za-z0-9 ]+" title="Please Enter Alphabets..." runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="Image">Image</label>
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                </div>
                                <div class="form-group">
                                    <label for="Age">Age</label>
                                    <asp:TextBox ID="TxtAge" class="form-control" pattern="[0-9]*" title="Please Enter Numeric..." runat="server"></asp:TextBox>
                                </div>
                               <asp:Button ID="Add" class="btn btn-info" runat="server" Text="ADD" 
                                    onclick="Button1_Click"></asp:Button>
                            </form>
                            </div>

                        </div>
                    </section>

</asp:Content>

