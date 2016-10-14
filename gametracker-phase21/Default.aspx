<%@ Page Title="Students" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="gametracker_phase21.students" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--Author: Jing Zhou & Hinaben Patel-->
    <!--Date : 07/10/2016-->
    <!--Project Name: Game Tracker-->
    <!--Description: Home Page-->
    <div class="containter">
        <div class="row">
            <div class="col-md-offset-2 col-md-9" style="text-align: center">
                <h3 style="font-family: seasideresortnfregular; color: white; margin-top: 50px;">Week 
                    <asp:Label runat="server" Text="40" ID="weekNumber"></asp:Label>
                </h3>
                <table>
                    <tr>
                        <td style="width: 400px">


                            <div class="well well-sm" style="text-align: left; height: 250px; padding-left: 10px; border: hidden;color:white">
                                <div style="float: right; width: 267px;">
                                    <asp:Chart runat="server" ID="ctl00" DataSourceID="SqlDataSource1" Height="214px" Width="230px" Palette="None" PaletteCustomColors="Khaki">
                                        <Titles>
                                            <asp:Title Font="Times New Roman, 12pt, style=Bold, Italic" Name="Title1"
                                                Text="Acuumulated Score">
                                            </asp:Title>
                                        </Titles>
                                        <Series>
                                            <asp:Series Name="Series1" XValueMember="Team_Name" YValueMembers="Accumulated Score" YValuesPerPoint="2"></asp:Series>

                                        </Series>
                                        <ChartAreas>
                                            <asp:ChartArea Name="ChartArea1">
                                                <AxisY>
                                                    <MajorGrid Enabled="False" />
                                                </AxisY>
                                                <AxisX>
                                                    <MajorGrid Enabled="false" />
                                                </AxisX>
                                            </asp:ChartArea>
                                        </ChartAreas>
                                        <BorderSkin BackColor="Transparent" PageColor="Transparent" SkinStyle="Emboss" />
                                    </asp:Chart>

                                   
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GameConnectString %>" SelectCommand="SELECT Team_Name, SUM(Point) AS [Accumulated Score] FROM game_grades WHERE (Week &lt;= 40) GROUP BY Team_Name"></asp:SqlDataSource>

                       


                                </div>
                                <h5 style="padding-left: 5px; font-size: larger; color:white; width: 96px;">Cricket</h5>
                                
                                <br />
                               Bharat Cricket:  
                                <br/>
                                            <asp:Label Style="font-family: seasideresortnfregular;color:cornsilk" runat="server" Text="0" ID="bharatScore"></asp:Label>

                                <br />

                                <br>
                                Falcon-A: 
                                <br/>
                                            <asp:Label Style="font-family: seasideresortnfregular;color:cornsilk" runat="server" Text="0" ID="falconScore"></asp:Label>
                                </p>

                                   
                            </div>


                        </td>
                        <td style="width: 350px"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                    </tr>

                </table>




            </div>
        </div>
    </div>
    <!--error button left-->
    <div class="container">
        <div class="row">
            <div class="col-sm-1" style="left: 60px; top: 300px; position: fixed">


                <asp:ImageButton ID="leftArrow" runat="server" ImageUrl="Assets/images/leftarrow.png" CssClass="arrow" OnClick="leftArrow_Click" />
                </asp:imagebutton>
            </div>
            <div class="col-sm-offset-10 col-sm-1" style="top: 300px; position: fixed;">
                <asp:ImageButton ID="rightArrow" runat="server" ImageUrl="Assets/images/rightArrow.png" CssClass="arrow" OnClick="rightArrow_Click" />
                </asp:imagebutton>
            </div>
        </div>
    </div>

</asp:Content>
