<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Panel ID="Panel1" runat="server" Height="441px" Width="974px">
         <center>
                
                <form id="regi" class="sign-up">
                    <table class="style1">
                        <tr>
                            <td colspan="3"> 
                                <br ><br ><br ><h2> Registration </h2>
                                </br>
                               </br>
                                </br>
                               
                            </td>

                        </tr>


                       <tr>
                     <td class="style3">
                         <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
                     </td>
                     <td>
                         <asp:TextBox ID="txtname" runat="server"></asp:TextBox> 
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                             ErrorMessage="RequiredFieldValidator" ControlToValidate="txtname" 
                             ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                             ErrorMessage="please enter only character" ControlToValidate="txtname" 
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
                             ControlToValidate="txtpwd" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                 </tr>

                   <tr>
                     <td class="style3">
                         <asp:Label ID="lblcity" runat="server" Text="City"></asp:Label>
                     </td>
                     <td>
                         <asp:TextBox ID="txtcity" runat="server" ></asp:TextBox>
                   
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                             ControlToValidate="txtcity" ForeColor="Red" >*</asp:RequiredFieldValidator>
					  </td>
                 </tr>

                  <tr>
                     <td class="style3">
                         <asp:Label ID="lbladdress" runat="server" Text="Address"></asp:Label>
                     </td>
                     <td>
                         <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                             ControlToValidate="txtaddress" ForeColor="Red">*</asp:RequiredFieldValidator>
                     </td>
                    
                 </tr>

                 
                 <tr>
                     <td class="style3">
                         <asp:Label ID="lblmob" runat="server" Text="Contact"></asp:Label>
                     </td>
                     <td>
                         <asp:TextBox ID="txtcontact" runat="server" ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                             ControlToValidate="txtcontact" ForeColor="Red">*</asp:RequiredFieldValidator>
                     </td>
                     
                 </tr>

                 <tr>
                     <td class="style3">
                         <asp:Label ID="lblemail" runat="server" Text="Email"></asp:Label>
                     </td>
                     <td>
                         <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ErrorMessage="Please Enter Your Email Address" ControlToValidate="txtemail" ForeColor="Red">*</asp:RequiredFieldValidator>
						<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"  ForeColor="Red"
                 ControlToValidate="txtemail" ErrorMessage="Enter Proper Email Address" 
                 ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                 </tr>
                 
                   <tr>
                     <td colspan="2">
                         <asp:Button ID="btnregi" runat="server"  
                             Text="Registration" onclick="btnregi_Click" />
                              <asp:Button ID="btnclr" runat="server"  Text="Reset" 
                             onclick="btnclr_Click" />
                   
                        
                     </td>
                 </tr>
                    </table>
                </form>
        </center>
        </asp:Panel>
</asp:Content>

