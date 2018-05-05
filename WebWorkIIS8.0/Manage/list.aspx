<%@ Page Language="C#" AutoEventWireup="true" CodeFile="list.aspx.cs" Inherits="Manage_list" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>新闻列表</title>
    <style type="text/css">
        <!--
        #divmain {
            width:1366px;
            height:768px;
            display:inline-block;
        }
        #divsub1 {
            width:158px;
            height:768px;
            float:left;
            display:inline-block;
            background:#7F9ED9;
        }
        .divsub2 {
            width:156px;
            height:25px;
            float:left;
            text-align:center;
        }
        .divsubx {
            width:156px;
            height:45px;
            float:left;
            text-align:center;
        }
        .divsubx1 {
            width:156px;
            height:25px;
            float:left;
            background-repeat:no-repeat;
            text-align:center;
        }
        .divsubx2 {
            width:156px;
            height:25px;
            float:left;
            text-align:center;
            cursor:auto;
            display:none;
        }
        .divsubx_ {
            width:156px;
            height:25px;
            float:left;
            text-align:center;
            cursor:auto;
            overflow:hidden;
        }
        #divsubtop {
            width:1208px;
            height:35px;
            float:left;
            background-image:url(../Images/admin_top_bg.gif);
            background-repeat:repeat-x;
        }
        #divcontent {
            width:511px;
            height:733px;
            float:left;
        }
        -->
        </style>
    <script type="text/javascript" src="../JavaScript/adminDH.js"></script>
    <script type="text/javascript">
        function testDisplay1() {
            var divD = document.getElementById("id1_2");
            if (divD.style.display == "block") {
                divD.style.display = "none";
            }
            else {
                divD.style.display = "block";
            }
        }

        function testDisplay2() {
            var divD = document.getElementById("id2_2");
            if (divD.style.display == "block") {
                divD.style.display = "none";
            }
            else {
                divD.style.display = "block";
            }
        }

        function testDisplay3() {
            var divD = document.getElementById("id3_2");
            if (divD.style.display == "block") {
                divD.style.display = "none";
            }
            else {
                divD.style.display = "block";
            }
        }
        function testDisplay4() {
            var divD = document.getElementById("id4_2");
            if (divD.style.display == "block") {
                divD.style.display = "none";
            }
            else {
                divD.style.display = "block";
            }
        }


        function testDisplay5() {
            var divD = document.getElementById("id5_2");
            if (divD.style.display == "block") {
                divD.style.display = "none";
            }
            else {
                divD.style.display = "block";
            }
        }

        function testDisplay6() {
            var divD = document.getElementById("id6_2");
            if (divD.style.display == "block") {
                divD.style.display = "none";
            }
            else {
                divD.style.display = "block";
            }
        }

        function testDisplay7() {
            var divD = document.getElementById("id7_2");
            if (divD.style.display == "block") {
                divD.style.display = "none";
            }
            else {
                divD.style.display = "block";
            }
        }


        function testDisplay8() {
            var divD = document.getElementById("id8_2");
            if (divD.style.display == "block") {
                divD.style.display = "none";
            }
            else {
                divD.style.display = "block";
            }
        }
</script>

</head>
<body>
    <form id="form1" runat="server">
    <div id="divmain">
        <div id="divsub1">
            <div class="divsub2" style="background-image:url(../Images/admin_title_bg_quit.gif)">
                <a href="../Default.aspx"><strong>退出系统</strong></a>
                </div>

              <div style="width:100%;height:20px;float:left"></div>  
            
                   
                <div id="id1" class="divsubx1" style="background-image:url(../Images/admin_title_bg_show.gif);" onclick="testDisplay1()">
                    <span style="color:blue">时政要闻</span>
                    </div>
                <div id="id1_2" class="divsubx2">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Manage/Add.aspx?id=1" ForeColor="Blue">添加</asp:HyperLink>
                        | <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Manage/list.aspx?id=1" ForeColor="Blue">管理</asp:HyperLink>
                    </div>
            
            <div style="width:100%;height:20px;float:left"></div>  
            <div id="id2" class="divsubx1" style="background-image:url(../Images/admin_title_bg_show.gif);" onclick="testDisplay2()">
                    <span style="color:blue">经济动向</span>
                    </div>
                <div id="id2_2" class="divsubx2">
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Manage/Add.aspx?id=2" ForeColor="Blue">添加</asp:HyperLink>
                        | <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Manage/list.aspx?id=2" ForeColor="Blue">管理</asp:HyperLink>
                    </div>

           <div style="width:100%;height:20px;float:left"></div>  

            <div id="id3" class="divsubx1" style="background-image:url(../Images/admin_title_bg_show.gif);" onclick="testDisplay3()">
                    <span style="color:blue">世界军事</span>
                    </div>
                <div id="id3_2" class="divsubx2">
                        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Manage/Add.aspx?id=3" ForeColor="Blue">添加</asp:HyperLink>
                        | <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Manage/list.aspx?id=3" ForeColor="Blue">管理</asp:HyperLink>
                    </div>


           <div style="width:100%;height:20px;float:left"></div>  

            <div id="id4" class="divsubx1" style="background-image:url(../Images/admin_title_bg_show.gif);" onclick="testDisplay4()">
                    <span style="color:blue">科学教育</span>
                    </div>
                <div id="id4_2" class="divsubx2">
                        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Manage/Add.aspx?id=4" ForeColor="Blue">添加</asp:HyperLink>
                        | <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Manage/list.aspx?id=4" ForeColor="Blue">管理</asp:HyperLink>
                    </div>

            <div style="width:100%;height:20px;float:left"></div>  

            <div id="id5" class="divsubx1" style="background-image:url(../Images/admin_title_bg_show.gif);" onclick="testDisplay5()">
                    <span style="color:blue">法治道德</span>
                    </div>
                <div id="id5_2" class="divsubx2">
                        <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Manage/Add.aspx?id=5" ForeColor="Blue">添加</asp:HyperLink>
                        | <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Manage/list.aspx?id=5" ForeColor="Blue">管理</asp:HyperLink>
                    </div>

            
            <div style="width:100%;height:20px;float:left"></div>  

            <div id="id6" class="divsubx1" style="background-image:url(../Images/admin_title_bg_show.gif);" onclick="testDisplay6()">
                    <span style="color:blue">社会现象</span>
                    </div>
                <div id="id6_2" class="divsubx2">
                        <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/Manage/Add.aspx?id=6" ForeColor="Blue">添加</asp:HyperLink>
                        | <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/Manage/list.aspx?id=6" ForeColor="Blue">管理</asp:HyperLink>
                    </div>
            <div style="width:100%;height:20px;float:left"></div>  
          
            <div id="id7" class="divsubx1" style="background-image:url(../Images/admin_title_bg_show.gif);" onclick="testDisplay7()">
                    <span style="color:blue">体育世界</span>
                    </div>
                <div id="id7_2" class="divsubx2">
                        <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/Manage/Add.aspx?id=7" ForeColor="Blue">添加</asp:HyperLink>
                        | <asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="~/Manage/list.aspx?id=7" ForeColor="Blue">管理</asp:HyperLink>
                    </div>
          <div style="width:100%;height:20px;float:left"></div>  

            <div id="id8" class="divsubx1" style="background-image:url(../Images/admin_title_bg_show.gif);" onclick="testDisplay8()">
                    <span style="color:blue">时尚娱乐</span>
                    </div>
                <div id="id8_2" class="divsubx2">
                        <asp:HyperLink ID="HyperLink15" runat="server" NavigateUrl="~/Manage/Add.aspx?id=8" ForeColor="Blue">添加</asp:HyperLink>
                        | <asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="~/Manage/list.aspx?id=8" ForeColor="Blue">管理</asp:HyperLink>
                    </div>
            </div>
        <div id="divsubtop">
            </div>
        <div id="divcontent">
            <div style="width:511px;height:25px;display:inline-block;">
                <div style="width:511px;float:left;text-align:center">
                    <asp:DropDownList ID="ddlNewsStyle" runat="server" CssClass="css" Width="78px" CausesValidation="True">
                        <asp:ListItem>时政要闻</asp:ListItem>
                        <asp:ListItem>经济动向</asp:ListItem>
                        <asp:ListItem>世界军事</asp:ListItem>
                        <asp:ListItem>科学教育</asp:ListItem>
                        <asp:ListItem>法治道德</asp:ListItem>
                        <asp:ListItem>社会现象</asp:ListItem>
                        <asp:ListItem>体育世界</asp:ListItem>
                        <asp:ListItem>时尚娱乐</asp:ListItem>
                    </asp:DropDownList>&nbsp;
                    <asp:Button ID="btnSearch" runat="server" Height="20px" OnClick="btnSearch_Click" Text="站内搜索" />
                    </div>
                </div>
            <asp:GridView ID="gvNewsList" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            CellSpacing="1" Height="1px" PageSize="26" Width="500px" OnPageIndexChanging="gvNewsList_PageIndexChanging" OnRowDeleting="gvNewsList_RowDeleting" OnRowDataBound="gvNewsList_RowDataBound">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" />
                <asp:BoundField DataField="title" HeaderText="新闻标题" />
                <asp:BoundField DataField="Type" HeaderText="新闻类别" />
                <asp:BoundField DataField="IssueDate" HeaderText="发布日期" />
                <asp:HyperLinkField HeaderText="编辑" Text="编辑" DataNavigateUrlFields="id" DataNavigateUrlFormatString="Edit.aspx?id={0}" Target="right" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
         </div>
    </div>

    </form>
</body>
</html>
