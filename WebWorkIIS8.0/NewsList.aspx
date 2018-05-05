<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewsList.aspx.cs" Inherits="NewsList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>分类新闻</title>
    <style type="text/css">
    <!--
    #div1
    {
        font-size:10pt;
        color:#000099;
        margin-top:0px;
        padding-top:0px;
        width:100%;
        height:214px;
        border:0px;
        background-image:url("Images/newsystermdafult1.jpg");
        background-repeat:no-repeat;

    }
    #div2
    {
        width:100%;
        height:45px;
    }
    #div3 
    {
        width:100%;
        height:20px;
        margin:5px 5px 0px 5px;
        text-align:center;
    }
     .class1 
    {
        width:110px;
        height:20px;
	    text-align: center;
        font-size:12px;
	    list-style-type:none;
    }
    .class2 
    {
        width:110px;
        height:30px;
	    text-align: center;
        font-size:20px;
	    list-style-type:none;
    }
    #div4 
    {
        font-size:9pt;
        width:100%;
        height:81px;
        margin-top:0px;
        padding-top:0px;
        border:0px;
        background-image:url("Images/buttom.jpg");
        background-repeat:no-repeat;
    }
    #div5
    {
        width:100%;
        height:30px;
    }
    #div6 
    {
        text-align:center;
        font-size:9pt;
        width:100%;
        height:51pt;
    }
        #divmain {
            width:80%;
            height:805px;
            margin:auto;
            padding:0px;
            font-size:9pt;
            align-content:center;
            background-image:url("Images/新闻发布系统二级页.jpg");
        }
        #divsub1 {
            width:100%;
            height:68px;
            font-size:9pt;
        }
        #divsub2 {
            width:100%;
            height:68px;
            font-size:9pt;
        }
        #divsub3 {
            width:100%;
            height:669px;
            display:inline-block;
        }
        #divsub4 {
            width:245px;
            height:669px;
            float:left;
        }
        #divsub5 {
            width:760px;
            height:auto;/*669px*/
            float:left;
            font-size:12pt;
        }
         #divsub6 {
            width:100%;
            height:100%;
            font-size :12pt;
            margin:0px;
            padding:0px;
        }
    -->
        </style>
<script type="text/javascript">
    function set_hover_in(object) {
        object.className = 'class2';
    }
    function set_hover_out(object) {
        object.className = 'class1';
    }
	</script>
</head>
<body>
<form id="form1" runat="server">
    <div>
        <div id="div1">
            <div id="div2">
                </div>
            <div id="div3">
                    <asp:HyperLink ID="HyperLink1" runat="server" class="class1" NavigateUrl="~/Default.aspx" ForeColor="Blue" onmouseover="set_hover_in(this);" onmouseout="set_hover_out(this);">主页</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/NewsList.aspx?id=1" ForeColor="Blue" onmouseover="set_hover_in(this);" onmouseout="set_hover_out(this);">时政</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/NewsList.aspx?id=2" ForeColor="Blue" onmouseover="set_hover_in(this);" onmouseout="set_hover_out(this);">经济</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/NewsList.aspx?id=3" ForeColor="Blue" onmouseover="set_hover_in(this);" onmouseout="set_hover_out(this);">军事</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/NewsList.aspx?id=4" ForeColor="Blue" onmouseover="set_hover_in(this);" onmouseout="set_hover_out(this);">科教</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/NewsList.aspx?id=5" ForeColor="Blue" onmouseover="set_hover_in(this);" onmouseout="set_hover_out(this);">法制</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/NewsList.aspx?id=6" ForeColor="Blue" onmouseover="set_hover_in(this);" onmouseout="set_hover_out(this);">社会</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/NewsList.aspx?id=7" ForeColor="Blue" onmouseover="set_hover_in(this);" onmouseout="set_hover_out(this);">体育</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/NewsList.aspx?id=8" ForeColor="Blue" onmouseover="set_hover_in(this);" onmouseout="set_hover_out(this);">娱乐</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            </div>



       <%-- 用于显示主要内容的块--%>
        <div id="divmain">
            <div id="divsub1">
                </div>
            <div id="divsub2"><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="imageTitle" runat="server" Height="19px" ImageUrl="~/Images/二级页时政要闻.jpg" Width="486px" />
            </div>
            <div id="divsub3">
                <div id="divsub4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="imageLag" runat="server" Height="100px" ImageUrl="~/Images/图片时政要闻.jpg" Width="100px" />
                    </div>
                <div id="divsub5">
                    <asp:DataList ID="dlNews" runat="server"  OnItemCommand="dlNews_ItemCommand">
                        <ItemTemplate>
                            <div style="border:0px;font-size:12pt;width:100%;height:20px;margin:0px;padding:0px;display:inline-block">
                                    <div style="width:150px;height:10px;margin-left:10px;float:left">
                                        『<%# DataBinder.Eval(Container.DataItem,"type")%>』
                                        </div>
                                    <div style="float:left">
                                        <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem,"title") %></asp:LinkButton>
                                        </div>
                                    </div>
                             </ItemTemplate>
                        <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                            Font-Underline="False" ForeColor="Blue" HorizontalAlign="Center" />
                    </asp:DataList>
                    </div>
                <div style="width:500px;margin:auto;display:inline-block">
                    <div style="width:500px;text-align:left;font-size:9pt;height:15px;float:left">
                        <asp:Label ID="labCP" runat="server" Text="当前页码为："></asp:Label>
                                [
                                <asp:Label ID="labPage" runat="server" Text="1"></asp:Label>
                                &nbsp;]
                                <asp:Label ID="labTP" runat="server" Text="总页码为："></asp:Label>
                                [
                                <asp:Label ID="labBackPage" runat="server"></asp:Label>
                                &nbsp;]<asp:LinkButton ID="lnkbtnOne" runat="server" Font-Underline="False" ForeColor="Red"
                                    OnClick="lnkbtnOne_Click">第一页</asp:LinkButton>
                                <asp:LinkButton ID="lnkbtnUp" runat="server" Font-Underline="False" ForeColor="Red"
                                    OnClick="lnkbtnUp_Click">上一页</asp:LinkButton>
                                <asp:LinkButton ID="lnkbtnNext" runat="server" Font-Underline="False" ForeColor="Red"
                                    OnClick="lnkbtnNext_Click">下一页</asp:LinkButton>&nbsp;
                                <asp:LinkButton ID="lnkbtnBack" runat="server" Font-Underline="False" ForeColor="Red"
                                    OnClick="lnkbtnBack_Click" Width="48px">最后一页</asp:LinkButton>
                        </div>
                    </div>
             </div>
         </div>
        <%--用于显示主要内容的块--%>



        <div id="div4">
            <div id="div5">
                </div>
            <div id="div6">
                计算机与通信工程 算机1401： (高扬)1411010107 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;联系邮箱：1211589743@qq.com
                <br/><br/>
                    <asp:LinkButton ID="lbtnLogin" runat="server" OnClick="lbtnLogin_Click">后台入口</asp:LinkButton>
                </div>
            </div>

        </div><%--最外层--%>
    </form>
</body>
</html>

