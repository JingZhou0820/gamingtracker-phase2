<%@ Page Title="Insert" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="insert.aspx.cs" Inherits="gametracker_phase21.enrollments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<!--Author: Jing Zhou & Hinaben Patel-->
<!--Date : 07/10/2016-->
<!--Project Name: Game Tracker-->
<!--Description: Insert new data page-->

    <div class="container" style="color:black">
    <div class="row">
        <div class="col-md-offset-3 col-md-7" style="margin-top:50px">
            <div class="jumbotron jum-transparent">
            <table >
                <tr >
                    <td style="padding:30px">
                        <label for="sportsCaegory">Sports category: </label>
                        <select id="sportsCategory" runat="server">
                            <option value="cricket">cricket </option>
                            <option value="basketball">basketball </option>
                        </select>
                    </td>
                    <td>
                        <label for="week">Week: </label>
                        <select id="week" runat="server">
                            <option value="40">week 40 </option>
                            <option value="41">week 41 </option>
                            <option value="42">week 42 </option>
                            <option value="43">week 43 </option>
                        </select>
                    </td>
                    <td>    
                        <label></label>
                        <asp:Button ID="selectButton"  runat="server" Text="Select"   style="margin-top:30px" OnClick="selectButton_Click"/>      

                    </td>
                </tr>
            </table>
                <asp:Label ID="reminderInformation" runat="server" Text="" style="padding-left:30px;color:yellow"></asp:Label>
                </div>
                <div class="jumbotron jum-transparent" id="detailAddform" runat="server" style="display:none">
                    <table style="width:100%">
                        <tr>    
                            <td style="padding-left:200px;padding-top:20px"> 
                                <asp:Label ID="categoryandweekLabel" runat="server"  style="font-size:large;color:black;" ></asp:Label>
                            </td>
                           
                        </tr>

                    </table>
                    
                    <div class="form-group" >
                    <label for="teamNameTextBox">Team Name: </label>
                    <select runat="server" class="form-control" id="teamnameTextBox"></select>
                </div>
                <div class="form-group">
                    <label for="scoreBox">Score</label>
                    <asp:TextBox CssClass="form-control" ID="scoreBox" runat="server" TextMode="number" value="0" min="0" max="100"></asp:TextBox>
                </div>
                    <asp:Button ID="AddButton" runat="server" Text="Add" OnClick="AddButton_Click" style="margin-bottom:20px"  /> 
                    <asp:Button ID="CancelButoon" runat="server" Text="Cancel" style="margin-bottom:20px" OnClick="CancelButoon_Click" />
                    
        </div>
    </div>
    </div>
</asp:Content>

