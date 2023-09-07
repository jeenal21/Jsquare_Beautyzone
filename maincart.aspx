<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="maincart.aspx.cs" Inherits="maincart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      .register-but
        {
            width: 514px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <table border="1" 
        style="border:1px solid white; color: #000066; font-weight: 700;">
    <tr>
        <th style="color:#FFFFFF">Product Image</th>
        <th style="color:#FFFFFF">Product Name</th>
        <th style="color:#FFFFFF">Product Total</th>
        <th style="color:#FFFFFF">Remove</th>
    </tr>
        <asp:Repeater ID="Repeater1" runat="server" 
            onitemcommand="Repeater1_ItemCommand" >
        <ItemTemplate>
        <tr>
            <td style="color:#FFFFFF" style="border:1px solid RED">
                <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("image","~/img/{0}") %>' style="height:150px;width:150px;margin-top:20px;padding:20px" />
            </td>
            <td style="color:#FFFFFF" valign="middle" style="padding:10px;border:1px solid RED">
                <asp:Label ID="lblnm" runat="server" Text='<%#Eval("p_nm") %>' CssClass="hasti"></asp:Label>
            </td>
            <td style="color:#FFFFFF" style="padding:10px;border:1px solid RED">
                <asp:Label ID="lbltot" runat="server" Text='<%#Eval("total") %>' CssClass="hasti"></asp:Label>
            </td>
            <td style="color:#FFFFFF" style="padding:10px;border:1px solid RED">
               <%-- <asp:Button ID="btndelete" runat="server" Text="REMOVE FROM CART" onclick="btndelete_Click" />--%>
                
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="DELETE" CommandArgument='<%#Eval("p_id") %>'>REMOVE FROM CART</asp:LinkButton>
                       
                
            </td>
        </tr>
        </ItemTemplate>
        </asp:Repeater>
        <tr>
            <td style="color:#FFFFFF" colspan="3" align="center">
             <div style="color:#FFFFFF"  class="register-but">
                 <asp:Button ID="btnShopping" runat="server" Text="CONTINUE SHOPPING" 
                     onclick="btnShopping_Click" Width="207px" 
                     />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="btnCheck" runat="server" Text="CHECKOUT" onclick="btnCheck_Click" 
                     />
                     </div>
            </td>
        </tr>
    </table>
</center>

</asp:Content>

