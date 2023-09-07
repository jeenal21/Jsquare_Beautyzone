<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="makeup.aspx.cs" Inherits="makeup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center>
				<center>
				<h2>MAKEUP</h2>
                </center>
                 <asp:DataList ID="DataList1" runat="server" 
                                RepeatColumns="5" Height="200px" Width="250px" 
            RepeatDirection="Horizontal" BackColor="#CCCCCC" BorderColor="#999999" 
            BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
            ForeColor="Black" GridLines="Both" Font-Names="Comic sans MS">
                                   <FooterStyle BackColor="#CCCCCC" />
                                   <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                   <ItemStyle BackColor="White" />
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Height="190px" BorderWidth="3px" 
                                        ImageUrl='<%# Eval("image") %>' Width="190px" BorderColor="Black" />
                                         <a href="details.aspx?id=<"> <%# Eval("pname") %> </a>
                                   
                                </ItemTemplate>
                                   <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            </asp:DataList>
                            <div class="clearfix"> </div>
				
                
                </center>
</asp:Content>

