<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Login Form</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    body 
    {
        background:url(img/bg3.png); 
            font-family: Arial, Helvetica, sans-serif;
            
        }
        form {
            border: 20px solid black;
            
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 10px 10px;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        button:hover {
            opacity: 0.8;
        }
        
        .lgnbtn {
            background-color: #FF0000;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            
        }
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }
        img.avatar {
            width: 40%;
            border-radius: 50%;
        }
        .container {
            padding: 16px;
        }
        span.psw {
                display: block;
                float: none;
            }
            .cnbtn {
                width: 100%;
            }
        
        .frmalg {
           
            width: 30%;
             margin-left: 550px;
             margin-right: 450px;
            margin-bottom: 20px;
            margin-top:200px;
        }
    
    </style>
</head>
<body>
   <form id="form1" runat="server" class="frmalg">

        <div class="container">
            <center>
                <h1> LOGIN HERE  </h1>
            </center>
            <label for="uname"><b>Username</b></label>
            <asp:TextBox runat="server" ID="txtnm" placeholder="Enter Username"></asp:TextBox>
            <label for="psw"><b>Password</b></label>
            <asp:TextBox runat="server" ID="txtpass" TextMode="Password" 
                placeholder="Enter Password"></asp:TextBox>
            <asp:Button runat="server" ID="btnlogin" Class="lgnbtn" Text="Login" 
                onclick="btnlogin_Click" />
           
        </div>
    </form>
</body>
</html>
