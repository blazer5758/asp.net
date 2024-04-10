<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section id="main-content">
        <section class="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-4 col-md-offset-4">
                                <h1>Registration Form</h1>
                            </div>
                        </header>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label runat="server" AssociatedControlID="txtempname"><b>Employee Name</b></asp:Label><br />
                                        <asp:TextBox runat="server" required="required" Enabled="true" name="BrandName" ID="txtempname" Class="form-control input-sm" placeholder="Employee Name"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-md-offset-1">
                                <div class="form-group">
                  <asp:Label runat="server" AssociatedControlID="txtdob"><b>DOB</b></asp:Label><br />
                  <asp:TextBox runat="server" required="required" TextMode="Date" Enabled="true" name="BrandName" ID="txtdob" Class="form-control input-sm" placeholder="DOB"></asp:TextBox>
                                </div>
                            </div>
                                 <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                             <asp:Label runat="server" AssociatedControlID="txtdepartment"><b>Department</b></asp:Label><br />
                             <asp:TextBox runat="server" required="required" Enabled="true" name="BrandName" ID="txtdepartment" Class="form-control input-sm" placeholder="Department"></asp:TextBox>
                        </div>
</div>
                            </div>
                        <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                <div class="form-group">
                                    <asp:Label runat="server" AssociatedControlID="txtcountry"><b>Country</b></asp:Label><br />
                                    <asp:DropDownList ID="txtcountry" CssClass="form-control input-sm" runat="server">
<asp:ListItem Text="India" />
<asp:ListItem Text="UK based" />
<asp:ListItem Text="US based" />
 </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4 col-md-offset-1">
                                <div class="form-group">
                                    <asp:Label runat="server" AssociatedControlID="txtaddress"><b>Address</b></asp:Label><br />
                                    <asp:Textbox runat="server" required="required" Enabled="true" name="BrandName" ID="txtaddress" Class="form-control input-sm" placeholder="Address"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                <div class="form-group">
                                 <asp:Label runat="server" AssociatedControlID="txtcontact"><b>Contact</b></asp:Label><br />
                                 <asp:Textbox runat="server" required="required" TextMode="Number" Enabled="true" name="BrandName" ID="txtcontact" Class="form-control input-sm" placeholder="Contact"></asp:TextBox>   
                                </div>
                            </div>
<div class="col-md-4 col-md-offset-1">
    <div class="form-group">
        <asp:Label runat="server" AssociatedControlID="txtgender"><b>Gender</b></asp:Label><br />
        <asp:RadioButtonList CssClass="form-group" ID="txtgender" runat="server">
<asp:ListItem Text="Male" />
<asp:ListItem Text="Female" />
 <asp:ListItem Text="Other"  />
  </asp:RadioButtonList>
    </div>
</div>
   </div>
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <asp:Button Text="Save" ID="btnsave" CssClass="btn btn-primary" Width="200" runat="server" />
    </div>
</div>
                    </section>
                </div>
            </div>
        </section>
    </section>
    </asp:Content>
