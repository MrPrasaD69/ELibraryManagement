<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="ELibraryManagement.userlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Main_App_Css/UserLoginStyle.css" rel="stylesheet" />

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        
                        <!--User Image -->
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="imgs/user_image.png" />
                                </center>
                            </div>
                        </div>

                        <!--Login Text -->
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>USER LOGIN</h3>
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
                                    <label>MEMBER ID</label>  
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" placeholder="Enter Member ID" runat="server"></asp:TextBox>  
                             </div>
                            </div>
                         </div>
                        <!--Password Text Box -->
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>PASSWORD</label>  
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" placeholder="Enter Password" runat="server" TextMode="Password"></asp:TextBox>  
                             </div>
                            </div>
                         </div>

                        <div class="form-group">
                            <asp:Button ID="Button1" class="btn btn-success w-100" runat="server" Text="Login" />   
                        </div>

                        <div class="form-group">
                            <a href="usersignup.aspx"><input id="Button2" class ="btn btn-primary btn-block w-100" type="button" value="Sign Up" /></a>
                        </div>

                 </div>
            </div>
                <a href ="Homepage.aspx">< Back to Home</a><br> </br>
        </div>
      </div>
    </div>
</asp:Content>
