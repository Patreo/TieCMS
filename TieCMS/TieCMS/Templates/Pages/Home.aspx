<%@ Page Language="C#" MasterPageFile="~/Templates/Masters/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TieCMS.Templates.Pages.Home" %>
<%@ Register Assembly="Tie.Core" Namespace="Tie.Controls" TagPrefix="tie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <tie:DynamicForm ID="DynamicForm1" runat="server" />
    <asp:Button ID="btn" runat="server" Text="Button" />
</asp:Content>
