<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="man_prod.aspx.cs" Inherits="admin_man_prod" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"
     CellPadding="0" Font-Size="20px" ForeColor="Black" GridLines="None" 
          BackColor="LightGray" 
        BorderColor="Tan" BorderWidth="1px" CellSpacing="0" Width="1%" 
        oonrowcancelingedit="GridView1_RowCancelingEdit" 
        onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
        onrowupdating="GridView1_RowUpdating" style="margin-right: 500px"
        ShowFooter="true" onselectedindexchanged="Add" ShowHeaderWhenEmpty="True">
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
    <asp:TemplateField HeaderText="ProductID">
    <ItemTemplate>
        <asp:Label ID="lblid" runat="server" Text='<%#Eval("p_id") %>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
     <asp:Label ID="lblid1" runat="server" Text='<%#Eval("p_id") %>'></asp:Label>
    </EditItemTemplate>
    </asp:TemplateField>
    
    
    
     <asp:TemplateField HeaderText="ProductName">
    <ItemTemplate>
        <asp:Label ID="lblpnm" runat="server" Text='<%#Eval("p_nm") %>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtnm" runat="server"  Text='<%#Eval("p_nm") %>'></asp:TextBox>
    </EditItemTemplate>
    <FooterTemplate>
        <asp:TextBox ID="txtaddname" runat="server"></asp:TextBox>
    </FooterTemplate>
    </asp:TemplateField>
    
     <asp:TemplateField HeaderText="categoryName">
    <ItemTemplate>
        <asp:Label ID="lblcnm" runat="server" Text='<%#Eval("cat_nm") %>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtcnm" runat="server"  Text='<%#Eval("cat_nm") %>'></asp:TextBox>
    </EditItemTemplate>
    <FooterTemplate>
        <asp:TextBox ID="txtaddcnm" runat="server"></asp:TextBox>
    </FooterTemplate>
    </asp:TemplateField>
    
    <asp:TemplateField HeaderText="SubcategoryName">
    <ItemTemplate>
        <asp:Label ID="lblscnm" runat="server" Text='<%#Eval("scat_nm") %>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtsnm" runat="server"  Text='<%#Eval("scat_nm") %>'></asp:TextBox>
    </EditItemTemplate>
    <FooterTemplate>
        <asp:TextBox ID="txtaddsnm" runat="server"></asp:TextBox>
    </FooterTemplate>
    </asp:TemplateField>

    <asp:TemplateField HeaderText="Price">
    <ItemTemplate>
        <asp:Label ID="lblprnm" runat="server" Text='<%#Eval("price") %>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtp" runat="server"  Text='<%#Eval("price") %>'></asp:TextBox>
    </EditItemTemplate>
    <FooterTemplate>
        <asp:TextBox ID="txtaddp" runat="server"></asp:TextBox>
    </FooterTemplate>
    </asp:TemplateField>

     <asp:TemplateField HeaderText="Details">
    <ItemTemplate>
        <asp:Label ID="lbldnm" runat="server" Text='<%#Eval("details") %>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtd" runat="server"  Text='<%#Eval("details") %>'></asp:TextBox>
    </EditItemTemplate>
    <FooterTemplate>
        <asp:TextBox ID="txtadddet" runat="server"></asp:TextBox>
    </FooterTemplate>
    </asp:TemplateField>
    
    <asp:TemplateField HeaderText="image">
        <ItemTemplate>
        <asp:Image ID="image" runat="server" ImageUrl='<%#Eval("image","~/img/{0}") %>' Height="55px" Width="55px" />
        </ItemTemplate>
         <EditItemTemplate>
             <asp:Image ID="img1" runat="server" ImageUrl='<%#Eval("img","~/img/{0}") %>' Height="55px" Width="55px" />
             <asp:FileUpload ID="img" runat="server" />
       </EditItemTemplate>
       <FooterTemplate>
           <asp:FileUpload ID="upload" runat="server" />

       </FooterTemplate>

</asp:TemplateField>


 <asp:TemplateField HeaderText="Brands">
    <ItemTemplate>
        <asp:Label ID="lblbnm" runat="server" Text='<%#Eval("brands") %>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtb" runat="server"  Text='<%#Eval("brands") %>'></asp:TextBox>
    </EditItemTemplate>
    <FooterTemplate>
        <asp:TextBox ID="txtaddbr" runat="server"></asp:TextBox>
    </FooterTemplate>
    </asp:TemplateField>
    


     <asp:CommandField HeaderText="EDIT"  ShowEditButton="true"/>
    <asp:CommandField HeaderText="DELETE"  ShowDeleteButton="true"/>
    
<asp:TemplateField>
       <FooterTemplate>
           <asp:Button ID="btnadd" runat="server" Text="Add" OnClick="Add" Height="30" Width="70" />
       </FooterTemplate>



       </asp:TemplateField> 
   

    
    
    
    
    
    
    </Columns>
    </asp:GridView>
</asp:Content>

