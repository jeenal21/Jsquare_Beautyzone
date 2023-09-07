<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>TIMEKEPEER</title>
<link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</head>
<body>
<div class="product mt-5">
 <div class="featured-page">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-heading">
              <div class="line-dec"></div>
            <div class="title"><span class="title_icon"></span><h1>Feedback</h1></div> 
        
        	<div class="feat_prod_box_details m-auto">            
            
              	<div class="contact_form">
                <div class="form_subtitle">create new account</div>
                 <%--<form id="Form1" name="Feedback" action="#" runat="server">--%>
                 
                            
            <asp:Label ID="lblnm" runat="server" Text="Name"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtunm" runat="server"></asp:TextBox>

            <br /><br /><br />
            <asp:Label ID="lblmsg" runat="server" Text="Message"></asp:Label>&nbsp;&nbsp;
            <asp:TextBox ID="txtmsg" runat="server"></asp:TextBox>

            <br /><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnsub" runat="server" Text="Submit" onclick="btnsub_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnclr" runat="server" Text="Clear" onclick="btnclr_Click" />


            <%--</form>--%>
            



        </div>
        </div>
        </div>

</div>
</div>
</div>
</div>
</div>
</body>
</html>

</asp:Content>

