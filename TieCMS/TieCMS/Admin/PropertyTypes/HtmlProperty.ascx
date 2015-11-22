<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HtmlProperty.ascx.cs" Inherits="TieCMS.Admin.PropertyTypes.HtmlProperty" %>
<div class="form-group">
    <label for="<%= this.Name %>"><%= this.Label %></label>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="8"></asp:TextBox>
</div>