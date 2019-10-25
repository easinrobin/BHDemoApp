<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="BhDemoApp.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <h1 class=" text-center">Registration</h1>
    <div class="row">
        <div class="col-md-6">
            
            <form>
                <div class="form-group">
                    <label for="FirstName">FirstName</label>
                    <input type="text" class="form-control" id="inputVehicleName" runat="server" autocomplete="off" placeholder="FirstName" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="inputVehicleName" Display="Dynamic" ForeColor="Red" ErrorMessage="Name can not be empty"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="LastName">LastName</label>
                    <input type="text" class="form-control" autocomplete="off" runat="server" id="inputRegNo" placeholder="LastName" />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="inputRegNo" Operator="DataTypeCheck" Type="Integer" Display="Dynamic" ForeColor="Red" ErrorMessage="Invalid Input"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="inputRegNo" Display="Dynamic" ForeColor="Red" ErrorMessage="Reg no. can not be empty"></asp:RequiredFieldValidator>   
                </div>
                
                <div class="form-group">
                    <label for="EmailID">EmailID</label>
                    <input type="text" class="form-control" id="Text2" runat="server" autocomplete="off" placeholder="EmailID" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="inputVehicleName" Display="Dynamic" ForeColor="Red" ErrorMessage="Name can not be empty"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="DateOfBirth">DateOfBirth</label>
                    <input type="text" class="form-control" id="Text3" runat="server" autocomplete="off" placeholder="DateOfBirth" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="inputVehicleName" Display="Dynamic" ForeColor="Red" ErrorMessage="Name can not be empty"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="Password">Password</label>
                    <input type="text" class="form-control" id="Text1" runat="server" autocomplete="off" placeholder="Password" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="inputVehicleName" Display="Dynamic" ForeColor="Red" ErrorMessage="Name can not be empty"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="ConfirmPassword">ConfirmPassword</label>
                    <input type="text" class="form-control" autocomplete="off" runat="server" id="inputSpeed" placeholder="ConfirmPassword" />
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="inputSpeed" Operator="DataTypeCheck" Type="Integer" Display="Dynamic" ForeColor="Red" ErrorMessage="Invalid Input"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="inputSpeed" Display="Dynamic" ForeColor="Red" ErrorMessage="Speed can not be empty"></asp:RequiredFieldValidator>
                    <br/>
                    <asp:Button ID="createButton" class="btn btn-primary" runat="server" Text="Create" OnClick="createButton_Click" />
                </div>
            </form>
        </div>
        
        <br/>
        
        

    </div>
</asp:Content>
