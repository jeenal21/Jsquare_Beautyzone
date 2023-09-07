<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="details.aspx.cs" Inherits="details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<div class="product mt-5">
 <div class="featured-page">
      <div class="container">
        <div class="row">
          <div class="col-md-4 col-sm-12">
            <div class="section-heading">
              <div class="line-dec"></div>
              <h1>PRODUCT DETAILS</h1>
            </div>
          </div>
          
        </div>
      </div>
    </div>
				
				<div class="product-top">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            Height="350px" Width="340px" BackColor="#CC6600" BorderColor="Black" 
            BorderStyle="Double" BorderWidth="5px" CellPadding="4" CellSpacing="2" 
            ForeColor="Black" Font-Bold="true" >
            <FooterStyle BackColor="#CCCCCC" />
            <RowStyle BackColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="black" HorizontalAlign="Center" />
            <Fields>
           
                <asp:TemplateField HeaderText="PRODUCT NAME">
                    <ItemTemplate>
                        <center>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("p_nm") %>' >
                            </asp:Label></center>
                        <br />
                    </ItemTemplate>
                    <FooterStyle Font-Bold="True" />
                </asp:TemplateField>
                
                 
                <asp:TemplateField HeaderText="PRICE">
                    <ItemTemplate>
                         <center> <asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>'></asp:Label></center>
                    </ItemTemplate>
                    <FooterStyle Font-Bold="True" />
                </asp:TemplateField>

                <asp:TemplateField HeaderText="DETAILS">
                    <ItemTemplate>
                         <center> <asp:Label ID="Label3" runat="server" Text='<%# Eval("details") %>'></asp:Label></center>
                    </ItemTemplate>
                    <FooterStyle Font-Bold="True" />
                </asp:TemplateField>

                <asp:TemplateField HeaderText="BRANDS">
                    <ItemTemplate>
                         <center> <asp:Label ID="Label3" runat="server" Text='<%# Eval("brands") %>'></asp:Label></center>
                    </ItemTemplate>
                    <FooterStyle Font-Bold="True" />
                </asp:TemplateField>

                <asp:TemplateField HeaderText="">
                    <ItemTemplate>
                         <center>
                            <a href="cart.aspx?id=<%#Eval("p_id") %>">CLICK HERE TO ADD  CART</a> 
                            
                             </center>
                    </ItemTemplate>
                    <FooterStyle Font-Bold="True" />
                </asp:TemplateField>
            </Fields>
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <HeaderTemplate>
               <center><asp:Image ID="Image1" runat="server"  ImageUrl='<%#Eval("image","~/img/{0}") %>' Height="200px" Width="211px"/></center> 
            </HeaderTemplate>
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        </asp:DetailsView>
         <div class="clearfix"> </div>
         
       
				</div>
                </div>
                <%--<div>
                  <a href="cart.aspx?id=<%#Eval("pid") %>">
                    <asp:Label ID="Label9" runat="server" Text="CLICK HERE TO ADD TO CART" style="font-size:18px;font-weight:bold;color:Red;text-decoration:underline"></asp:Label>
                    </a>
                </div>--%>
                </center>
</asp:Content>

