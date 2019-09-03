<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="MealEdit.aspx.cs" Inherits="Admin_MealAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-md-8" 
        
        style="margin:100px; margin-left:-10%; padding:50px; background:linear-gradient(#fff4e4,#ffffff); border-radius:20px;box-shadow:0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19); text-align: left;">
	                 <section class="panel">
                    <br />
                    <br />
                    <br />
                    <header class="panel-heading">
                         <h1 align="center" >Meal</h1></header><div class="panel-body">
                            <div class="position-center">
                                <form role="form">
                                 <div class="form-group">
                                    <label for="MealName">MealName:</label>
                                    <asp:TextBox ID="TxtMealName" class="form-control" pattern="[A-Za-z+" title="Please Enter Alphabets..." runat="server"></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                    <label for="Price">Price</label>
                                    <asp:TextBox ID="TxtPrice" class="form-control" pattern="[0-9.]*" title="Please Enter Numeric..." runat="server"></asp:TextBox>
                                </div>
                               <asp:Button ID="Add" class="btn btn-info" runat="server" Text="SAVE" 
                                    onclick="Button1_Click"></asp:Button>
                            </form>
                            </div>

                        </div>
                    </section>

            </div>
</asp:Content>

