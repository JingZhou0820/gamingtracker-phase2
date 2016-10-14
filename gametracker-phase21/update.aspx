<%@ Page Title="Update" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="gametracker_phase21.courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server"> 
<!--Author: Jing Zhou & Hinaben Patel-->
<!--Date : 07/10/2016-->
<!--Project Name: Game Tracker-->
<!--Description: Update data page-->
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
                        <asp:Button ID="selectButton" runat="server" Text="Select" OnClick="selectButton_Click"  style="margin-top:30px"/>      

                    </td>
                </tr>
            </table>
                </div>
                <div class="jumbotron jum-transparent" style="padding:30px">
                    <asp:GridView ID="updateGridView" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-hover"
                        DataKeyNames="Sports_ID"  style="padding-top:30px" OnRowEditing="updateGridView_RowEditing">
                        <Columns>
                            <asp:BoundField DataField="Team_Name" HeaderText="Team Name" Visible="true" />
                            <asp:BoundField DataField="Week" HeaderText="Week" Visible="true" />
                            <asp:BoundField DataField="Point" HeaderText="Score" Visible="true" />
                            <asp:CommandField HeaderText="Edit" EditText="Edit" ShowEditButton="true" ButtonType="Link" ControlStyle-CssClass="btn btn-info btn-sm" />
                        </Columns>
                    </asp:GridView>
               
        </div>
    </div>
    </div>
</asp:Content>
