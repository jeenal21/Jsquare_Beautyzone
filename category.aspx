<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:DataList ID="DataList1" align="center" runat="server" 
                                RepeatColumns="3" Height="537px" Width="682px" 
            RepeatDirection="Horizontal" Font-Bold="true" Font-Size="Large" BackColor="white" BorderColor="#CCCCCC" 
            BorderStyle="none" BorderWidth="1px" CellPadding="4" CellSpacing="2" 
            ForeColor="Black" GridLines="Horizontal" Font-Names="Comic 
            sans MS" mcommand="DataList1_ItemCommand"  >
            
                                   <FooterStyle BackColor="#CCCCCC" />
                                   <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                   <ItemStyle BackColor="White" />
                                <ItemTemplate>
                                   <asp:Image ID="Image1" runat="server" Height="190px" BorderWidth="3px" 
                                        ImageUrl='<%# Eval("path","~/img/{0}") %>' Width="190px" BorderColor="Black" />
                                   <br />

                                  <a href="product.aspx?name='<%#Eval("c_nm") %>'"><%# Eval("c_nm") %></a>
                                </ItemTemplate>
                                   <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            </asp:DataList>

</asp:Content>

