<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>


   
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Page Content -->
    <!-- Items Starts Here -->
    <div class="featured-page">
      <div class="container">
        <div class="row">
          <div class="col-md-4 col-sm-12">
            <div class="section-heading">
              <div class="line-dec"></div>
              <h1>PRODUCT</h1>
            </div>
          </div>
          
        </div>
      </div>
    </div>

    <div>
        <asp:DataList ID="DataList1" align="center" runat="server"
        RepeatColumns="4" Height="537px" Width="682px" 
            RepeatDirection="Horizontal" Font-Bold="true" Font-Size="Large"  BorderColor="#CCCCCC" 
            BorderStyle="none" BorderWidth="1px" CellPadding="4" CellSpacing="2" 
            ForeColor="Black" GridLines="Horizontal" Font-Names="Comic 
            sans MS">
                                   
                        <ItemTemplate>
                        <%--<asp:Image ID="image2" runat ="server"  Width='100' Height='100' ImageUrl='<%#Eval("image","~/imgs/{0}") %>'/>--%>
                       <%-- <asp:Image ID="image2" runat ="server"  Width='100' Height='100' ImageUrl='<%#Eval("image") %>'/>--%>

                            <asp:Image ID="Image1" runat="server" Height="190px" BorderWidth="3px" 
                            ImageUrl='<%#Eval("image","~/img/{0}") %>' Width="190px" BorderColor="Black"/>
                            
       <br />Price:
            <asp:Label ID="lblprice" runat="server" Text='<%# Eval("price") %>'>
                </asp:Label><br />
      <%-- <a href="Detail.aspx?id='<%#Eval("fid") %>'"><%# Eval("itemname") %>Add to Cart </a>--%>

       <a href="details.aspx?id='<%#Eval("p_id") %>'">Detail </a>
       
                        </ItemTemplate>


        </asp:DataList>
        
    </div>
     
    
</asp:Content>


