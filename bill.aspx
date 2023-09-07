<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="bill.aspx.cs" Inherits="bill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center>
    <table border="1" 
        style="border:1px solid white; font-weight: 700; color: #FFFFFF;">
    <tr>
    
        <th colspan="3" align="center" style= "color:#FFFFFF">
           <center> <h3> WELCOME,<asp:Label ID="lbluser" runat="server" Text=""></asp:Label></h3></center>
        </th>
    </tr>
    <tr>
        <th style= "color:#FFFFFF">Product Image</th>
        <th style= "color:#FFFFFF">Product Name</th>
        <th style= "color:#FFFFFF">Product Total</th>
    </tr>
        <asp:Repeater ID="Repeater1" runat="server" >
        <ItemTemplate>
        <tr>
            <td style="border:1px solid white:" style= "color:#FFFFFF">
            
                <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("image","~/img/{0}") %>' style="height:150px;width:150px;margin-top:20px;padding:20px" />
            </td>
            <td valign="middle" style="padding:10px;border:1px solid white" style= "color:#FFFFFF">
                <asp:Label ID="lblnm" runat="server" Text='<%#Eval("p_nm") %>' CssClass="hasti"></asp:Label>
            </td>
            <td style="padding:10px;border:1px solid white" >
                <asp:Label ID="lbltot" runat="server" Text='<%#Eval("total") %>' CssClass="hasti"></asp:Label>
            </td>
        </tr>
        </ItemTemplate>
        </asp:Repeater>
        <tr>
            <td colspan="2" align="right" style="padding:10px;border:1px solid white;color:#FFFFFF">
                <asp:Label ID="Label1" runat="server" Text="GRAND TOTAL:" CssClass="hasti"></asp:Label>
            </td>
            <td align="left" style="padding:10px;border:1px solid white">
                <asp:Label ID="Label2" runat="server" Text="" CssClass="hasti"></asp:Label>
            </td>
        </tr>

         <tr>
            <td colspan="3" align="center" style= "color:#FFFFFF">
             <div class="register-but">
                <asp:Button ID="btnCheck" runat="server" Text="PRINT RECIEPT" 
                    onclick="btnCheck_Click" />
                    </div>
            </td>
        </tr>
    </table>
</center>
</asp:Content>

