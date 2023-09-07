<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="man_mk.aspx.cs" Inherits="admin_man_mk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"
    CellPadding="20" Font-Size="20px" ForeColor="Black" GridLines="None" 
          BackColor="LightGray" 
        BorderColor="Tan" BorderWidth="1px" CellSpacing="2" Width="100%" 
        onrowcancelingedit="GridView1_RowCancelingEdit" 
        onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
        onrowupdating="GridView1_RowUpdating">
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
    <asp:TemplateField HeaderText="MakeupId">
    <ItemTemplate>
        <asp:Label ID="Label1" runat="server" Text='<%#Eval("mk_id") %>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
      <asp:Label ID="Label1" runat="server" Text='<%#Eval("mk_id") %>'></asp:Label>
    </EditItemTemplate>
    
    </asp:TemplateField>

    <asp:TemplateField HeaderText="MakeupName">
    <ItemTemplate>
        <asp:Label ID="Label2" runat="server" Text='<%#Eval("mk_nm") %>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtcname" runat="server" Text='<%#Eval("mk_nm") %>'></asp:TextBox>
    
    </EditItemTemplate>
    
    </asp:TemplateField>
    <asp:CommandField HeaderText="EDIT"  ShowEditButton="true"/>
    <asp:CommandField HeaderText="DELETE"  ShowDeleteButton="true"/>
    </Columns>


    </asp:GridView>
</asp:Content>

