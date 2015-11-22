<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TextProperty.ascx.cs" Inherits="TieCMS.Admin.PropertyTypes.TextProperty" %>
<div class="form-group">
    <label for="<%= this.Name %>"><%= this.Label %></label>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4"></asp:TextBox>
</div>