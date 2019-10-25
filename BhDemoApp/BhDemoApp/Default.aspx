<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BhDemoApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1 class=" text-center">Vehicle Speed Check</h1>
    <div class="row">
        <div class="col-md-6">
            
            <form>
                <div class="form-group">
                    <label for="inputVehicleName">Vehicle Name</label>
                    <input type="text" class="form-control" id="inputVehicleName" runat="server" autocomplete="off" placeholder="Vehicle Name" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="inputVehicleName" Display="Dynamic" ForeColor="Red" ErrorMessage="Name can not be empty"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="inputRegNo">Registration No.</label>
                    <input type="text" class="form-control" autocomplete="off" runat="server" id="inputRegNo" placeholder="Registration No." />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="inputRegNo" Operator="DataTypeCheck" Type="Integer" Display="Dynamic" ForeColor="Red" ErrorMessage="Invalid Input"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="inputRegNo" Display="Dynamic" ForeColor="Red" ErrorMessage="Reg no. can not be empty"></asp:RequiredFieldValidator>
                    <br/>
                    <asp:Button ID="createButton" class="btn btn-primary" runat="server" Text="Create" OnClick="createButton_Click" />
                </div>
                <div class="form-group">
                    <label for="inputSpeed">Speed</label>
                    <input type="text" class="form-control" autocomplete="off" runat="server" id="inputSpeed" placeholder="Speed" />
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="inputSpeed" Operator="DataTypeCheck" Type="Integer" Display="Dynamic" ForeColor="Red" ErrorMessage="Invalid Input"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="inputSpeed" Display="Dynamic" ForeColor="Red" ErrorMessage="Speed can not be empty"></asp:RequiredFieldValidator>
                    <br/>
                    <asp:Button ID="enterButton" class="btn btn-primary" runat="server" Text="Enter" OnClick="enterButton_Click" />
                </div>
            </form>
        </div>
        
        <br/>
        
        <div class="col-md-6">
            <label>Maximum Speed</label>&nbsp;<asp:Label ID="maxSpeedLabel" runat="server"></asp:Label>
            <br/>
            <label>Minimum Speed</label>&nbsp;<asp:Label ID="minSpeedLabel" runat="server"></asp:Label>
            <br/>
            <label>Average Speed</label>&nbsp;<asp:Label ID="avgSpeedLabel" runat="server"></asp:Label>
            <br/>
            <asp:Button ID="checkButton" class="btn btn-info" runat="server" Text="Check" OnClick="checkButton_Click" />
        </div>

    </div>

</asp:Content>
