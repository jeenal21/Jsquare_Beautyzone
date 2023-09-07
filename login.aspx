<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="content">
 <asp:Panel ID="Panel1" runat="server" Height="441px" Width="974px">
<center>
   
           
             <table class="style1">
                 <tr>
                     <td colspan="2">
                         <h2>Login</h2>
                     </td>
                 </tr>
                
                  <tr>
                     <td class="style3">
                         <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
                     </td>
                     <td>
                         <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                  
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="Please  Eenter Your Name" ControlToValidate="txtname" ForeColor="Red" ValidationGroup="v1">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                  ControlToValidate="txtname" ErrorMessage="please enter only character" 
                  ValidationExpression="^[a-z A-Z]+$" ForeColor="Red"></asp:RegularExpressionValidator>
				   </td>
                 </tr>
                 <tr>
                     <td class="style3">
                         <asp:Label ID="lblpwd" runat="server" Text="Password"></asp:Label>
                     </td>
                     <td>
                         <asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
                  
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="please Enter Password" ControlToValidate="txtpwd" ForeColor="Red" ValidationGroup="v1">*</asp:RequiredFieldValidator>
                    </td>
                 </tr>
                 
                 <tr>
                     <td colspan="2">
                         <asp:Button ID="btnlogin" runat="server"  
                             Text="Login" onclick="btnlogin_Click" />
                     </td>
                 </tr>
                 <tr>
                 <td>
                  <asp:Label ID="lblmsg" runat="server" Text="" Font-Bold="true"></asp:Label>
                 </td></tr>
                  </table>
   
           
             </center>
    
    </asp:Panel>
    </div>
</asp:Content>

