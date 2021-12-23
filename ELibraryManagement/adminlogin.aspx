<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="ELibraryManagement.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        
                        <!--User Image -->
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="imgs/adminuser.png" />
                                </center>
                            </div>
                        </div>

                        <!--Login Text -->
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Admin Login</h3>
                                </center>
                            </div>
                        </div>

                        <!--horizontal line -->
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <!--Username Text Box -->
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" placeholder="Enter Admin ID" runat="server"></asp:TextBox> <br> 
                             </div>
                            </div>
                         </div>
                        <!--Password Text Box -->
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" placeholder="Enter Password" runat="server" TextMode="Password"></asp:TextBox> <br> 
                             </div>
                            </div>
                         </div>

                        <div class="form-group">
                            <asp:Button ID="Button1" class="btn btn-success w-100" runat="server" Text="Login" />   
                        </div>

                        

                 </div>
            </div>
                <a href ="Homepage.aspx">< Back to Home</a><br></br>
        </div>
      </div>
    </div>
</asp:Content>
