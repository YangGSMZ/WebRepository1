<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>新闻发布</title>
    <style type="text/css"> /*首尾样式*/
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
    .content
    {
        float:left;
        width:100%;
        height:264px;
        margin-top:0px;
    }
	.content .main 
    { 
		margin:0px;
        padding:0px;
		width:100%; 
		height:264px; 
		overflow:hidden;
		position:relative;
	}
	.content .imgarea,.content .imgID{
		position:absolute;
            margin-left: 0px;
        }
	.content .imgarea li{ 
		list-style:none;
		display:inline;
	}
	.content .imgarea img
    { 
		border-style: none;
        border-color: inherit;
        border-width: 0px;
        width:100%; 
		height:264px;
		display:block;
		margin: 0px;
     }
	.content .imgID{ 
		right:5px; 
		bottom:5px;
	}
	.content .imgID li{
		float: left;
		color: #069;
		text-align: center;
		line-height: 16px;
		width: 16px;
		height: 16px;
		font-family: Arial;
		font-size: 12px;
		cursor: pointer;
		overflow: hidden;
		margin: 3px 1px;
		border: 1px solid #069;
		background-color: #fff;
	}
	.content .imgID li.active{
		color: #fff;
		line-height: 16px;
		width: 16px;
		height: 16px;
		font-size: 14px;
		margin: 3px 1px;
		border: 1px solid #069;
		background-color: #069;
		font-weight: bold;
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
<script type="text/javascript" src="JavaScript/pcitureChange.js"></script>
<script type="text/javascript">
    $(function () {
        var index = 0;
        var timer;
        $(".imgID li").mouseover(function () {
            index = $(".imgID li").index(this);
            animateImg(index);
        }).eq(0).mouseover();
        $('.main').hover(function () {
            clearInterval(timer);
        }, function () {
            timer = setInterval(function () {
                animateImg(index)
                index++;
                if (index == $(".imgID > li").length) { index = 0; }
            }, 2000);
        }).trigger("mouseleave");
    })
    function animateImg(index) {
        var divh = $(".content .main").height();
        $(".imgarea").stop(true, false).animate({ top: -divh * index + "px" }, 1000);
        $(".imgID li").removeClass("active")
            .eq(index).addClass("active");
    }
</script>
<style type="text/css"> /*动画样式*/
	.content{float:left;}
	.content .main { 
		margin-bottom:10px;
		width:100%; 
		height:264px; 
		overflow:hidden;
		position:relative;
	}
	.content .imgarea{
        margin:0px;
        padding:0px;
		width:100%; 
		height:264px;
	}
    .content .imgID{
		position:absolute;
	}
	.content .imgarea li{ 
		list-style:none;
		display:inline;
	}
	.content .imgarea img{ 
		width:100%; 
		height:264px;
		display:block;
		border:0px;
	}
	.content .imgID{ 
		right:5px; 
		bottom:5px;
	}
	.content .imgID li{
		float: left;
		color: #069;
		text-align: center;
		line-height: 16px;
		width: 16px;
		height: 16px;
		font-family: Arial;
		font-size: 12px;
		cursor: pointer;
		overflow: hidden;
		margin: 3px 1px;
		border: 1px solid #069;
		background-color: #fff;
	}
	.content .imgID li.active{
		color: #fff;
		line-height: 16px;
		width: 16px;
		height: 16px;
		font-size: 14px;
		margin: 3px 1px;
		border: 1px solid #069;
		background-color: #069;
		font-weight: bold;
	}
</style>
<style type="text/css">
    <!--
    #divmain {
        font-size:9pt;
        height:auto;
        width:80%;
        margin:auto;
        padding:0px;
        align-content:center;
    }
    .divsub {
        font-size:9pt;
        height:215px;
        width:483px;
        margin:0px;
        padding:0px;
        float:left;
    }
    .divsub1 {
        font-size:9pt;
        height:30px;
        width:281px;
        float:right;
    }
    .divsub0
    {
        width:100%;
        height:215px;
        align-content:center;
        display:inline-block;
    }
    .divsub2 {
        font-size:9pt;
        height:185px;
        width:100%;
        display:inline-block;
    }
    .divsub3 {
        margin-top:20px;
        padding:0px;
        width:150px;
        height:150px;
        float:left;
    }
    .divsub4 {
        font-size:9pt;
        width:310px;
        height:150px;
        margin-top:20px;
        float:left;
    }
    -->
    </style>
</head>
<body>
<form id="form1" runat="server">
<div>
    <div id="div1">
        <div id="div2">
            </div>
        <div id="div3">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" ForeColor="Blue" onmouseover="set_hover_in(this);" onmouseout="set_hover_out(this);">主页</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
    </div>
<%--用于显示动画的块--%>
<div class="content">
  <div class="main" >
    <ul class="imgarea" >
      <li><a href="#"><img src="img/bj_0.jpg" /></a></li>
      <li><a href="#"><img src="img/bj_1.jpg"/></a></li>
      <li><a href="#"><img src="img/bj_2.jpg"/></a></li>
      <li><a href="#"><img src="img/bj_3.jpg"/></a></li>
    </ul>
    <ul class="imgID" >
      <li>1</li>
      <li>2</li>
      <li>3</li>
	  <li>4</li>
    </ul>
  </div>
</div>
<%--用于显示动画的块--%>

    <%--用于显示主要内容的块--%>
    <div id="divmain">
        <div class="divsub0">
            <div class="divsub" style="margin-left:0px;background-image:url(Images/shizhengNews1.jpg); background-repeat:no-repeat">
                <div class="divsub1">
                    <br/>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/更多.jpg" align="right" PostBackUrl="~/NewsList.aspx?id=1" /> 
                    </div>
                <div class="divsub2">
                    <div class="divsub3" style="margin-left:15px;">
                        <asp:Image ID="Image1" runat="server" Height="100%" ImageUrl="~/Images/图片时政要闻.jpg" Width="100%" />
                        </div>
                    <div class="divsub4">
                        <asp:DataList ID="dlSZ" runat="server"  OnItemCommand="dlSZ_ItemCommand" BackColor="White" OnSelectedIndexChanged="dlSZ_SelectedIndexChanged">
                            <ItemTemplate>
                                <div style="border:0px;font-size:9pt;width:100%;height:100%;margin:0px;padding:0px;display:inline-block">
                                    <div style="width:90px;height:20px;margin-left:10px;float:left">
                                     『
                                        <%# DataBinder.Eval(Container.DataItem,"type")%>
                                      』
                                        </div>
                                    <div style="float:left">
                                        <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem,"title") %></asp:LinkButton>
                                        </div>
                                    </div>
                                </ItemTemplate>
                           <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                        </asp:DataList>
                        </div>
                    </div>
            </div>

            <div class="divsub" style="float:right;margin-right:0px;background-image:url(Images/jingjidongxiang.jpg); background-repeat:no-repeat" >
                <div class="divsub1" style="margin-right:20px">
                    <br/>
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/更多.jpg" align="right" PostBackUrl="~/NewsList.aspx?id=2" /> 
                    </div>
                <div class="divsub2">
                    <div class="divsub3" style="margin-left:15px;">
                        <asp:Image ID="Image2" runat="server" Height="100%" ImageUrl="~/Images/经济动向图片.jpg" Width="100%" />
                        </div>
                    <div class="divsub4">
                        <asp:DataList ID="dlJJ" runat="server"  OnItemCommand="dlJJ_ItemCommand" BackColor="White" OnSelectedIndexChanged="dlSZ_SelectedIndexChanged">
                            <ItemTemplate>
                                <div style="border:0px;font-size:9pt;width:100%;height:100%;margin:0px;padding:0px;display:inline-block">
                                    <div style="width:90px;height:20px;margin-left:10px;float:left">
                                        『
                                        <%# DataBinder.Eval(Container.DataItem,"type")%>
                                        』
                                        </div>
                                    <div style="float:left">
                                        <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem,"title") %></asp:LinkButton>
                                        </div>
                                    </div>
                                </ItemTemplate>
                           <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                        </asp:DataList>
                        </div>
                    </div>
              </div>




            <div class="divsub0">
            <div class="divsub" style="margin-left:0px;background-image:url(Images/kexuejiaoyu.jpg); background-repeat:no-repeat">
                <div class="divsub1">
                    <br/>
                    <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Images/更多.jpg" align="right" PostBackUrl="~/NewsList.aspx?id=1" /> 
                    </div>
                <div class="divsub2">
                    <div class="divsub3" style="margin-left:15px;">
                        <asp:Image ID="Image4" runat="server" Height="100%" ImageUrl="~/Images/图片科学教育.jpg" Width="100%" />
                        </div>
                    <div class="divsub4">
                        <asp:DataList ID="dlKJ" runat="server"  OnItemCommand="dlKJ_ItemCommand" BackColor="White" OnSelectedIndexChanged="dlSZ_SelectedIndexChanged">
                            <ItemTemplate>
                                <div style="border:0px;font-size:9pt;width:100%;height:100%;margin:0px;padding:0px;display:inline-block">
                                    <div style="width:90px;height:20px;margin-left:10px;float:left">
                                        『<%# DataBinder.Eval(Container.DataItem,"type")%>』
                                        </div>
                                    <div style="float:left">
                                        <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem,"title") %></asp:LinkButton>
                                        </div>
                                    </div>
                                </ItemTemplate>
                           <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                        </asp:DataList>
                        </div>
                    </div>
            </div>

            <div class="divsub" style="float:right;margin-right:0px;background-image:url(Images/fazhidaode.jpg); background-repeat:no-repeat" >
                <div class="divsub1" style="margin-right:20px">
                    <br/>
                    <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/Images/更多.jpg" align="right" PostBackUrl="~/NewsList.aspx?id=2" /> 
                    </div>
                <div class="divsub2">
                    <div class="divsub3" style="margin-left:15px;">
                        <asp:Image ID="Image5" runat="server" Height="100%" ImageUrl="~/Images/法制道德图片.jpg" Width="100%" />
                        </div>
                    <div class="divsub4">
                        <asp:DataList ID="dlFZ" runat="server"  OnItemCommand="dlFZ_ItemCommand" BackColor="White" OnSelectedIndexChanged="dlSZ_SelectedIndexChanged">
                            <ItemTemplate>
                                <div style="border:0px;font-size:9pt;width:100%;height:100%;margin:0px;padding:0px;display:inline-block">
                                    <div style="width:90px;height:20px;margin-left:10px;float:left">
                                        『<%# DataBinder.Eval(Container.DataItem,"type")%>』
                                        </div>
                                    <div style="float:left">
                                        <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem,"title") %></asp:LinkButton>
                                        </div>
                                    </div>
                                </ItemTemplate>
                           <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                        </asp:DataList>
                        </div>
                    </div>
              </div>
            </div>




            <div class="divsub0">
            <div class="divsub" style="margin-left:0px;background-image:url(Images/shehuixianxiang1.jpg); background-repeat:no-repeat">
                <div class="divsub1">
                    <br/>
                    <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/Images/更多.jpg" align="right" PostBackUrl="~/NewsList.aspx?id=1" /> 
                    </div>
                <div class="divsub2">
                    <div class="divsub3" style="margin-left:15px;">
                        <asp:Image ID="Image6" runat="server" Height="100%" ImageUrl="~/Images/社会现象图片.jpg" Width="100%" />
                        </div>
                    <div class="divsub4">
                        <asp:DataList ID="dlSH" runat="server"  OnItemCommand="dlSH_ItemCommand" BackColor="White" OnSelectedIndexChanged="dlSZ_SelectedIndexChanged">
                            <ItemTemplate>
                                <div style="border:0px;font-size:9pt;width:100%;height:100%;margin:0px;padding:0px;display:inline-block">
                                    <div style="width:90px;height:20px;margin-left:10px;float:left">
                                        『<%# DataBinder.Eval(Container.DataItem,"type")%>』
                                        </div>
                                    <div style="float:left">
                                        <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem,"title") %></asp:LinkButton>
                                        </div>
                                    </div>
                                </ItemTemplate>
                           <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                        </asp:DataList>
                        </div>
                    </div>
            </div>

            <div class="divsub" style="float:right;margin-right:0px;background-image:url(Images/tiyushijie.jpg); background-repeat:no-repeat" >
                <div class="divsub1" style="margin-right:20px">
                    <br/>
                    <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/Images/更多2.jpg" align="right" PostBackUrl="~/NewsList.aspx?id=2" /> 
                    </div>
                <div class="divsub2">
                    <div class="divsub3" style="margin-left:15px;">
                        <asp:Image ID="Image7" runat="server" Height="100%" ImageUrl="~/Images/体育世界图片.jpg" Width="100%" />
                        </div>
                    <div class="divsub4">
                        <asp:DataList ID="dlTY" runat="server"  OnItemCommand="dlTY_ItemCommand" BackColor="White" OnSelectedIndexChanged="dlSZ_SelectedIndexChanged">
                            <ItemTemplate>
                                <div style="border:0px;font-size:9pt;width:100%;height:100%;margin:0px;padding:0px;display:inline-block">
                                    <div style="width:90px;height:20px;margin-left:10px;float:left">
                                        『<%# DataBinder.Eval(Container.DataItem,"type")%>』
                                        </div>
                                    <div style="float:left">
                                        <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem,"title") %></asp:LinkButton>
                                        </div>
                                    </div>
                                </ItemTemplate>
                           <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                        </asp:DataList>
                        </div>
                    </div>
              </div>
            </div>





            <div class="divsub0">
            <div class="divsub" style="margin-left:0px;background-image:url(Images/时尚娱乐.jpg); background-repeat:no-repeat">
                <div class="divsub1">
                    <br/>
                    <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/Images/更多.jpg" align="right" PostBackUrl="~/NewsList.aspx?id=1" /> 
                    </div>
                <div class="divsub2">
                    <div class="divsub3" style="margin-left:15px;">
                        <asp:Image ID="Image8" runat="server" Height="100%" ImageUrl="~/Images/时尚娱乐图片.jpg" Width="100%" />
                        </div>
                    <div class="divsub4">
                        <asp:DataList ID="dlYL" runat="server"  OnItemCommand="dlYL_ItemCommand" BackColor="White" OnSelectedIndexChanged="dlSZ_SelectedIndexChanged">
                            <ItemTemplate>
                                <div style="border:0px;font-size:9pt;width:100%;height:100%;margin:0px;padding:0px;display:inline-block">
                                    <div style="width:90px;height:20px;float:left;margin-left:10px">
                                        『<%# DataBinder.Eval(Container.DataItem,"type")%>』
                                        </div>
                                    <div style="float:left">
                                        <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem,"title") %></asp:LinkButton>
                                        </div>
                                    </div>
                                </ItemTemplate>
                           <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                        </asp:DataList>
                        </div>
                    </div>
            </div>

            <div class="divsub" style="float:right;margin-right:0px;background-image:url(Images/世界军事.jpg); background-repeat:no-repeat" >
                <div class="divsub1" style="margin-right:20px">
                    <br/>
                    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Images/更多2.jpg" align="right" PostBackUrl="~/NewsList.aspx?id=2" /> 
                    </div>
                <div class="divsub2">
                    <div class="divsub3" style="margin-left:15px;">
                        <asp:Image ID="Image3" runat="server" Height="100%" ImageUrl="~/Images/世界军事图片.jpg" Width="100%" />
                        </div>
                    <div class="divsub4">
                        <asp:DataList ID="dlJS" runat="server"  OnItemCommand="dlJS_ItemCommand" BackColor="White" OnSelectedIndexChanged="dlSZ_SelectedIndexChanged">
                            <ItemTemplate>
                                <div style="border:0px;font-size:9pt;width:100%;height:100%;margin:0px;padding:0px;display:inline-block">
                                    <div style="width:90px;height:20px;margin-left:10px;float:left">
                                        『<%# DataBinder.Eval(Container.DataItem,"type")%>』
                                        </div>
                                    <div style="float:left">
                                        <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem,"title") %></asp:LinkButton>
                                        </div>
                                    </div>
                                </ItemTemplate>
                           <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                        </asp:DataList>
                        </div>
                    </div>
              </div>
            </div>



        </div>
    <%--用于显示主要内容的块--%>
</div>

<%--最外层--%>
<div id="div4">
    <div id="div5">
        </div>
    <div id="div6">
        计算机与通信工程 算机1401： (高扬)1411010107 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;联系邮箱：1211589743@qq.com
        <br/><br/> 
            <asp:LinkButton ID="lbtnLogin" runat="server" OnClick="lbtnLogin_Click">后台入口</asp:LinkButton>
        </div>
    </div>
</form>
</body>
</html>
