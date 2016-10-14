<%@ Page Title="Delete" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="gametracker_phase21.departments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--Author: Jing Zhou & Hinaben Patel-->
<!--Date : 07/10/2016-->
<!--Project Name: Game Tracker-->
<!--Description: Delete data page-->
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
                        <asp:Button ID="selectButton" runat="server" Text="Select"   style="margin-top:30px" OnClick="selectButton_Click"/>      

                    </td>
                </tr>
            </table>
                <asp:Label ID="errorInformation" runat="server" Text="" style="color:brown;padding-left:30px"></asp:Label>
                </div>
                <div class="jumbotron jum-transparent" style="padding:30px;display:none" runat="server" id="detailInformation">
                    <asp:GridView ID="deleteGridView" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-hover"
                        DataKeyNames="Sports_ID"  style="padding-top:30px" OnRowDeleting="updateGridView_RowDeleting" >
                        <Columns>
                            <asp:BoundField DataField="Team_Name" HeaderText="Team Name" Visible="true" />
                            <asp:BoundField DataField="Week" HeaderText="Week" Visible="true" />
                            <asp:BoundField DataField="Point" HeaderText="Score" Visible="true" />
                            <asp:CommandField HeaderText="Delete" EditText="delete" ShowDeleteButton="true" ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />
                        </Columns>
                    </asp:GridView>
               
        </div>
    </div>
    </div>
</asp:Content>

