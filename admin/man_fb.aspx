<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="man_fb.aspx.cs" Inherits="admin_man_fb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
     CellPadding="20" Font-Size="20px" ForeColor="Black" GridLines="None" 
          BackColor="LightGray" 
        BorderColor="Tan" BorderWidth="1px" CellSpacing="2" Width="100%" 
        onrowdeleting="GridView1_RowDeleting">
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
        
        <asp:TemplateField HeaderText="FeedbackId">
    <ItemTemplate>
        <asp:Label ID="Labelf" runat="server" Text='<%#Eval("f_id") %>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:Label ID="Labelfb" runat="server" Text='<%#Eval("f_id") %>'></asp:Label>
    
    </EditItemTemplate>
    
    </asp:TemplateField>

     <asp:TemplateField HeaderText="UserName">
    <ItemTemplate>
        <asp:Label ID="Labelfn" runat="server" Text='<%#Eval("u_nm") %>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtfname" runat="server" Text='<%#Eval("u_nm") %>'></asp:TextBox>
    
    </EditItemTemplate>
    
    </asp:TemplateField>
    
    <asp:TemplateField HeaderText="feedback">
    <ItemTemplate>
        <asp:Label ID="Labelfb" runat="server" Text='<%#Eval("feedback") %>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtfb" runat="server" Text='<%#Eval("feedback") %>'></asp:TextBox>
    
    </EditItemTemplate>
    
    </asp:TemplateField>

    
     
    <asp:CommandField HeaderText="DELETE"  ShowDeleteButton="true"/>
        </Columns>
    </asp:GridView>
</asp:Content>

