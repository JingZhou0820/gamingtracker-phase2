<%@ Page Title="Signup" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="gametracker_phase21.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<!--Author: Jing Zhou & Hinaben Patel-->
<!--Date : 07/10/2016-->
<!--Project Name: Game Tracker-->
<!--Description: Sign up page-->
    <div class="conatainer">
        <div class="row">
            <div class="col-md-offset-4 col-md-6">
                <h1>Sing UP </h1>

                <div class="form-group">
                    <label for="FirstNameTextBox">First Name</label>
                    <asp:TextBox CssClass="form-control" ID="FirstNameTextBox" runat="server" required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="LastNameTextBox">Last Name</label>
                    <asp:TextBox CssClass="form-control" ID="LastNameTextBox" runat="server" required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="EmailTextBox">Email</label>
                    <asp:TextBox TextMode="Email" CssClass="form-control" ID="EmailTextBox" runat="server" required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="ContactNumberTextBox">Contact Number</label>
                    <asp:TextBox TextMode="Phone" CssClass="form-control" ID="ContactNumberTextBox" runat="server" required="true"></asp:TextBox>
                </div>

                <asp:Button ID="SendButton" CssClass="btn btn-primary btn-lg" runat="server" Text="Send" OnClick="SendButton_Click" />

            </div>
        </div>
    </div>

</asp:Content>
