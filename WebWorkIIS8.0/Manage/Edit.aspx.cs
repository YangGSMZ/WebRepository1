﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manage_Edit : System.Web.UI.Page
{
    sqlDBClass db = new sqlDBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //调用CommonClass类中的GetDataSet获取数据集
            DataSet ds = db.GetDataSet("select * from tb_News where id='" + Request.QueryString["id"] + "'", "tbNews");
            DataRow[] row = ds.Tables["tbNews"].Select();
            foreach (DataRow rs in row)
            {
                //显示编辑的新闻类别名
                this.txtNewsTitle.Text = rs["title"].ToString();
                //显示编辑的新闻内容
                this.txtNewsContent.Text = rs["content"].ToString();
                //显示编辑的新闻标题
                this.labTitle.Text = rs["Style"].ToString();
                //显示编辑的新闻类型
                switch (rs["type"].ToString())
                {
                    case "国内新闻":
                        this.ddlNewsType.SelectedIndex = 1;
                        break;
                    case "国际新闻":
                        this.ddlNewsType.SelectedIndex = 0;
                        break;
                    default:
                        break;
                }
            }
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        db.ExecSql("UPDATE tb_News SET Title = '" + this.txtNewsTitle.Text + "', Content = '" + this.txtNewsContent.Text + "', Style = '" + this.labTitle.Text.Trim() + "', Type = '" + this.ddlNewsType.SelectedValue.ToString() + "' WHERE (ID = '" + Request.QueryString["id"] + "')");
        Response.Write(db.MessageBox("数据修改成功！", "list.aspx"));
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        this.txtNewsTitle.Text = "";
        this.txtNewsContent.Text = "";
    }
}