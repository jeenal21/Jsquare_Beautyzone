<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<form id="form2" runat="server">--%>
     <div class="container">
        <div class="row">
          <div class="col-md-5 col-sm-12">
    <center> 
    <table border="1" style="border:1px" class="mt-5">

        <asp:Repeater ID="Repeater1" runat="server">
          
        <ItemTemplate>
        
        <tr >
       
            <td style="Border:2px #999999" >
                <asp:Image ID="Image1" runat="server" ImageUrl='<%#bind("image","~/img/{0}") %>' style="height:300px;width:300px;margin-top:20px;padding:20px" />
            </td>
            <td valign="middle" style="padding:10px; border:1px  ">
                <asp:Label ID="lblnm" runat="server" Text='<%#Eval("p_nm") %>' CssClass="hasti"></asp:Label>
            </td>
            <td style="padding:10px;border:1px ">
                <asp:Label ID="lblsize" runat="server" Text='<%#Eval("brands") %>' CssClass="hasti"></asp:Label>
            </td>
            <td style="padding:10px;border:1px ">
                <asp:Label ID="lblprice" runat="server" Text='<%#Eval("price") %>' CssClass="hasti"></asp:Label>
            </td>
            <td style="padding:10px;border:1px "> 
                <asp:TextBox ID="txtqty" runat="server" style="width:50px" ></asp:TextBox>
            </td>
            <%--<td style="padding:10px;border:1px ">
                <asp:Label ID="lbltot" runat="server" Text=""></asp:Label>
            </td>--%>
            </tr>
           
            <tr>
            <td style="padding:10px;border:1px ">
             <div class="register-but">
                 <asp:Button ID="btnADD" runat="server" Text="Order" BorderColor="#663300" CommandName="CART" CommandArgument='<%#Eval("p_id") %>'  ForeColor="#663300"  BorderStyle="Groove" />
                </td>
                <%--<td style="padding:10px;border:1px ">
                 <asp:Button ID="btnrefresh" runat="server" Text="Refresh"  BorderColor="#663300"  ForeColor="#663300"  BorderStyle="Groove" OnClick="refresh" />--%>
            </div>
            <%--</td>--%>

        </tr>
        </ItemTemplate>
       
        </asp:Repeater>
        
    </table> 
</center><br /><br /><br />
</div></div></div>
    <%--</form>--%>
</asp:Content>

