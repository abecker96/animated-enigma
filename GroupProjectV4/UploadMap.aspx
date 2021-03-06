<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UploadMap.aspx.cs" Inherits="GroupProjectV4.UploadMap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 662px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style5">
                &nbsp;<asp:Label ID="MapNameLabel" runat="server" Text="Map Name: "></asp:Label>
                <asp:TextBox ID="MapNameTxtBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="MapNameValidator" runat="server" ControlToValidate="MapNameTxtBox" ErrorMessage="*" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Label ID="mapNameTakenLabel" runat="server" ForeColor="#CC3300" Text="*Map name taken or invalid" Visible="False"></asp:Label>
            </td>
            <td><asp:Panel ID="frmConfirmation" Visible="False" Runat="server">
</asp:Panel></td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="UploadMapLabel" runat="server" Text="Upload a map:"></asp:Label>
                <INPUT ID="mapFile" type="file" NAME="mapFile" runat="server" /><asp:RequiredFieldValidator ID="MapFileValidator" runat="server" ControlToValidate="mapFile" ErrorMessage="*" ForeColor="#CC3300"></asp:RequiredFieldValidator>            </td>
            <td>
    <asp:Label id="mapUploadResult" Runat="server" ForeColor="#CC3300"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Button ID="UploadButton" type="submit" runat="server" Text="Upload" OnClick="UploadButton_Click" />
            </td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
