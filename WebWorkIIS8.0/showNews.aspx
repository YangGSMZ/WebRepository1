<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showNews.aspx.cs" Inherits="showNews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>新闻具体内容</title>
    <style type="text/css">
        <!--
        #divmain {
            width:500px;
            height:200px;
            display:inline-block;
        }
        #divsub1 {
            width:100%;
            height:30px;
            float:left;
            text-align:center;
        }
        #divsub2 {
            width:100%;
            height:159px;
            float:left;
            text-align:center;
        }
        #divsub3 {
            width:100%;
            height:19px;
            float:left;
            text-align:center;
        }
        -->
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="divmain">
        <div id="divsub1">
            <asp:Label ID="labTitle" runat="server" CssClass="title"  Text="Label" Width="373px"></asp:Label>
            </div>
        <div id="divsub2">
            <asp:TextBox ID="txtContent" runat="server" CssClass="txt" Height="159px" TextMode="MultiLine" Width="486px"></asp:TextBox>
            </div>
        <div id="divsub3">
            <asp:Button ID="btnClose" runat="server" OnClick="btnClose_Click" Text="关闭窗口" Width="103px" />
            </div>
    </div>
    </form>
</body>
</html>
