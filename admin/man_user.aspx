<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="man_user.aspx.cs" Inherits="admin_man_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
     CellPadding="20" Font-Size="20px" ForeColor="Black" GridLines="None" 
          BackColor="LightGray" 
        BorderColor="Tan" BorderWidth="1px" CellSpacing="2" Width="100%">
        <AlternatingRowStyle BackColor="LightGray"  />
        <EmptyDataRowStyle BorderColor="Black" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <RowStyle BorderColor="Black" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="LightGray" />
        <SortedAscendingHeaderStyle BackColor="LightGray" />
        <SortedDescendingCellStyle BackColor="LightBlue" BorderColor="Black" />
        <SortedDescendingHeaderStyle BackColor="LightBlue" />
      
     <Columns>
    <asp:TemplateField HeaderText="UserId">
    <ItemTemplate>
        <asp:Label ID="Label1" runat="server" Text='<%#Eval("id") %>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtcid" runat="server" Text='<%#Eval("id") %>'></asp:TextBox>
    
    </EditItemTemplate>
    
    </asp:TemplateField>

    <asp:TemplateField HeaderText="UserName">
    <ItemTemplate>
        <asp:Label ID="Label2" runat="server" Text='<%#Eval("name") %>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtcname" runat="server" Text='<%#Eval("name") %>'></asp:TextBox>
    
    </EditItemTemplate>
    
    </asp:TemplateField>
    
    <asp:TemplateField HeaderText="password">
    <ItemTemplate>
        <asp:Label ID="Label2" runat="server" Text='<%#Eval("password") %>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtcname" runat="server" Text='<%#Eval("password") %>'></asp:TextBox>
    
    </EditItemTemplate>
    
    </asp:TemplateField>

    <asp:TemplateField HeaderText="city">
    <ItemTemplate>
        <asp:Label ID="Label2" runat="server" Text='<%#Eval("city") %>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtcname" runat="server" Text='<%#Eval("city") %>'></asp:TextBox>
    
    </EditItemTemplate>
    
    </asp:TemplateField>

    <asp:TemplateField HeaderText="Address">
    <ItemTemplate>
        <asp:Label ID="Label2" runat="server" Text='<%#Eval("address") %>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtcname" runat="server" Text='<%#Eval("address") %>'></asp:TextBox>
    
    </EditItemTemplate>
    
    </asp:TemplateField>

    <asp:TemplateField HeaderText="Contact">
    <ItemTemplate>
        <asp:Label ID="Label2" runat="server" Text='<%#Eval("contact") %>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtcname" runat="server" Text='<%#Eval("contact") %>'></asp:TextBox>
    
    </EditItemTemplate>
    
    </asp:TemplateField>

    <asp:TemplateField HeaderText="Email">
    <ItemTemplate>
        <asp:Label ID="Label2" runat="server" Text='<%#Eval("email") %>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtcname" runat="server" Text='<%#Eval("email") %>'></asp:TextBox>
    
    </EditItemTemplate>
    
    </asp:TemplateField>

    
    </Columns>


    </asp:GridView>

</asp:Content>

