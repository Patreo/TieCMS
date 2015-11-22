<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StringProperty.ascx.cs" Inherits="TieCMS.Admin.PropertyTypes.StringProperty" %>
<div class="form-group">
    <label for="<%= this.Name %>"><%= this.Label %></label>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
</div>
