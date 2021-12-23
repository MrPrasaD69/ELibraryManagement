<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofileaspx.aspx.cs" Inherits="ELibraryManagement.userprofileaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container-fluid">
        <div class="row">
            <!-- LEFT SIDE CARD STARTS HERE -->
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        
                        <!--User Image -->
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/user_image.png" />
                                </center>
                            </div>
                        </div>

                        <!--Login Text -->
                        <div class="row">
                            <div class="col">
                                <center>
                                    <bold><h4>Your Profile</h4></bold>
                                    <span>Account Status -</span>
                                    <asp:Label class="badge bg-success" ID="Label1" runat="server" Text="Active"></asp:Label>
                                </center>
                            </div>
                        </div>

                        <!--horizontal line -->
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <!--Full Name-->
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Full Name</label>  
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" placeholder="Enter Full Name" runat="server"></asp:TextBox>  
                             </div>
                            </div>
                            <!--DOB-->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Date of Birth</label>  
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" placeholder="" TextMode="Date" runat="server"></asp:TextBox>
                             </div>
                            </div>
                        </div>

                        <!--Contact No-->
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Contact Number</label>  
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" placeholder="Your Number" TextMode="Phone" runat="server"></asp:TextBox>  
                             </div>
                            </div>

                            <!--Email-->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>EMAIL ID</label>  
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" placeholder="Your Email" TextMode="Email" runat="server"></asp:TextBox>
                             </div>
                            </div>
                        </div>

                        <!--State Selection-->
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>State</label>  
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"/>
                                        <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh"/>
                                        <asp:ListItem Text="Bihar" Value="Bihar"/>
                                        
                                    </asp:DropDownList> 
                             </div>
                            </div>

                            <!--City Selection-->
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>City</label>  
                                    <asp:TextBox class="form-control" ID="TextBox6" placeholder="Your City" runat="server"></asp:TextBox> 
                             </div>
                            </div>
                             
                            <!--Pin Code-->
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>PIN CODE</label>  
                                    <asp:TextBox class="form-control" ID="TextBox7" placeholder="Your Pin Code" TextMode="Number" runat="server"></asp:TextBox>
                             </div>
                            </div>
                        </div>

                        <!--Address-->
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>Full Address</label>  
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" placeholder="Enter Full Address" TextMode="MultiLine" runat="server"></asp:TextBox><br> 
                             </div>
                            </div>
                            
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                <span class="badge rounded-pill bg-primary">User Credentials</span>
                                    </center><br>
                            </div>                            
                        </div>

                        <!--New User ID and Password-->
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Your Username</label>  
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" placeholder="Username" runat="server" ReadOnly="True"></asp:TextBox> <br> 
                             </div>                              
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Your Password</label>  
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" placeholder="Username" TextMode="Password" runat="server" ReadOnly="True"></asp:TextBox><br> 
                             </div>                              
                            </div>  
                            
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>New Password</label>  
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" placeholder="New Password" TextMode="Password" runat="server"></asp:TextBox><br>
                             </div>                              
                            </div>
                        </div>

                       

                        <div class="form-group">
                            <asp:Button ID="Button1" class="btn btn-success w-100" runat="server" Text="Update" />   
                        </div>

                        

                 </div>
            </div>
                                      
          </div>
            <!-- LEFT SIDE CARD ENDS HERE -->



            <!-- RIGHT SIDE CARD STARTS HERE -->
             <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        
                        <!--User Image -->
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/books.png" />
                                </center>
                            </div>
                        </div>

                        <!--Login Text -->
                        <div class="row">
                            <div class="col">
                                <center>
                                    <bold><h4>Your Issued Books</h4></bold>
                                    
                                    <asp:Label class="badge bg-success" ID="Label2" runat="server" Text="Info about books Due Date"></asp:Label>
                                </center>
                            </div>
                        </div>

                        <!--horizontal line -->
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>

                       
                                                                                                                                 
                        
                 </div>
            </div>
                                      
          </div>
            <!-- RIGHT SIDE CARD ENDS HERE -->

       </div>

                <!-- JUST A HOME BUTTON/LINK -->
                <a href ="Homepage.aspx">< Back to Home</a><br></br>
        
            
      </div>

</asp:Content>
