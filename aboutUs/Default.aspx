<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
    }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            width: 180px;
            height: 208px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <h2>OUR TEAM</h2>
			<p>We are a team of George Brown College students who want to share our love of cooking with other people!</p>
			<table class="auto-style2">
                <tr>
                    <td>
                        <img alt="Dinosaur" class="auto-style4" src="../Images/29341183_1707532895993839_337740960_n.jpg"/>
                    </td>
                    <td>
                        <img alt="Dinosaur" class="auto-style4" src="../Images/29391729_1707532905993838_82131273_o.jpg" height="25" width="25"/>
                    </td>
                    <td>
                        <img alt="Dinosaur" class="auto-style4" src="../Images/29135040_1707532902660505_2021678500_n.jpg"/>
                    </td>
                    <td>
                        <img alt="Dinosaur" class="auto-style4" src="../Images/29345558_1707532922660503_1462466112_n.jpg" height="25" width="25"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Veronica Cheren</td>
                    <td class="auto-style3">Erika Kathleen Gilo</td>
                    <td class="auto-style3">Dakyung Lee</td>
                    <td class="auto-style3">Jamaeca Navarette</td>
                </tr>
                <tr>
                    <td>I own 5 dogs</td>
                    <td>I am not a robot</td>
                    <td>I own an island</td>
                    <td>I am THE ROBOT</td>
                </tr>
</table>
</asp:Content>

