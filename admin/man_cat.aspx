<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="man_cat.aspx.cs" Inherits="admin_man_cat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 </asp:Content>

  
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" ShowFooter="true"
     CellPadding="20" Font-Size="20px" ForeColor="Black" GridLines="None" 
          BackColor="LightGray" 
        BorderColor="Tan" BorderWidth="1px" CellSpacing="2" Width="100%" 
        onrowcancelingedit="GridView1_RowCancelingEdit" 
        onrowdeleting="GridView1_RowDeleting" 
        onrowupdating="GridView1_RowUpdating" style="margin-left: 0px">
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

    <asp:TemplateField HeaderText="CategoryId">
    <ItemTemplate>
        <asp:Label ID="lblid" runat="server" Text='<%#Eval("c_id") %>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
      
      <asp:Label ID="lblid" runat="server" Text='<%#Eval("c_id") %>'></asp:Label>
    </EditItemTemplate>
    </asp:TemplateField>



    <asp:TemplateField HeaderText="CategoryName">
    <ItemTemplate>
        <asp:Label ID="Label2" runat="server" Text='<%#Eval("c_nm") %>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtcname" runat="server" Text='<%#Eval("c_nm") %>'></asp:TextBox>
    
    </EditItemTemplate>
      <FooterTemplate>
        <asp:TextBox ID="txtaddcnm" runat="server"></asp:TextBox>
    </FooterTemplate>


    
    </asp:TemplateField>
     <asp:TemplateField HeaderText="image">
        <ItemTemplate>
        <asp:Image ID="image" runat="server" ImageUrl='<%#Eval("path","~/img/{0}") %>' Height="55px" Width="55px" />
        </ItemTemplate>
         <EditItemTemplate>
             <asp:Image ID="img1" runat="server" ImageUrl='<%#Eval("path","~/img/{0}") %>' Height="55px" Width="55px" />
             <asp:FileUpload ID="img" runat="server" />
       </EditItemTemplate>
       <FooterTemplate>
           <asp:FileUpload ID="upload" runat="server" />

       </FooterTemplate>

</asp:TemplateField>
 
    <asp:CommandField HeaderText="DELETE"  ShowDeleteButton="true"/>

    <asp:TemplateField>
       <FooterTemplate>
           <asp:Button ID="btnadd" runat="server" Text="Add" OnClick="Add" Height="30" Width="70" />
       </FooterTemplate>



       </asp:TemplateField> 
    </Columns>

    </asp:GridView>
 
 </asp:Content>


