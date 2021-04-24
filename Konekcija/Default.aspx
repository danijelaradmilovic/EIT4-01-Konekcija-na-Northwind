<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Konekcija._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Prikaz
    </h2>
  <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="CustomerID" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None">
      <AlternatingRowStyle BackColor="White" />
      <Columns>
          <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" 
              SortExpression="CustomerID" />
          <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" 
              SortExpression="CompanyName" />
          <asp:BoundField DataField="ContactName" HeaderText="ContactName" 
              SortExpression="ContactName" />
          <asp:BoundField DataField="ContactTitle" HeaderText="ContactTitle" 
              SortExpression="ContactTitle" />
          <asp:BoundField DataField="Address" HeaderText="Address" 
              SortExpression="Address" />
          <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
      </Columns>
      <EditRowStyle BackColor="#2461BF" />
      <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
      <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
      <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
      <RowStyle BackColor="#EFF3FB" />
      <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
      <SortedAscendingCellStyle BackColor="#F5F7FB" />
      <SortedAscendingHeaderStyle BackColor="#6D95E1" />
      <SortedDescendingCellStyle BackColor="#E9EBEF" />
      <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
        SelectCommand="SELECT [CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City] FROM [Customers]">
    </asp:SqlDataSource>
</asp:Content>
