using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class showNews : System.Web.UI.Page
{
    sqlDBClass db = new sqlDBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = db.GetDataSet("select * from tb_News", "tbNews");
        DataRow[] row = ds.Tables["tbNews"].Select("id=" + Request.QueryString["id"]);
        foreach (DataRow rs in row)
        {
            this.Page.Title = rs["title"].ToString();
            this.labTitle.Text = rs["title"].ToString();
            this.txtContent.Text = "　　" + rs["content"].ToString();
        }
    }
    protected void btnClose_Click(object sender, EventArgs e)
    {
        Response.Write("<script language=javascript>window.close()</script>");
    }
}