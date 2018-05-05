<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Manage_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>管理员登录</title>
    <style type="text/css">
        <!--
        #divmain {
            width:455px;
            height:255px;
            font-size:9pt;
            margin:auto;
            background-image:url("../Images/新闻发布系统后台管理登录.jpg");
        }
        #divsub1 {
            width:265px;
            height:86px;
            font-size:9pt;
            margin:auto;
        }
        -->
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="divmain">
        <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
        <div id="divsub1">
            <dl>
                <dt style="text-align:left">管理员姓名：<asp:TextBox ID="txtAdminName" runat="server" Height="12px" Width="90px"></asp:TextBox></dt>
                <dt style="text-align:left">管理员密码：<asp:TextBox ID="txtAdminPwd" runat="server" TextMode="Password" Width="90px" Height="12px"></asp:TextBox></dt>
                <dt style="text-align:left">输入验证码：<asp:TextBox ID="txtAdminCode" runat="server" Height="12px" Width="90px"></asp:TextBox>
                    <asp:Label ID="labCode" runat="server"  BackColor="#FFC0FF">8888</asp:Label>
                </dt>
                <dt style="text-align:center">
                    <asp:Button ID="btnLogin" runat="server" Text="登录" OnClick="btnLogin_Click"/>&nbsp;&nbsp;
                    <asp:Button ID="btnCancel" runat="server" Text="取消" OnClick="btnCancel_Click" CausesValidation="False"/>
                </dt>
            </dl>
            </div>
    </div>
    </form>
</body>
</html>
