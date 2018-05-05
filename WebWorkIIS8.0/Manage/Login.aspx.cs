using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manage_Login : System.Web.UI.Page
{
    sqlDBClass db = new sqlDBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.labCode.Text = db.RandomNum(4);//产生验证码
        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (txtAdminName.Text.Trim() == "" || txtAdminPwd.Text.Trim() == "")
        {
            Response.Write(db.MessageBox("登录名和密码不能为空！", "Login.aspx"));
        }
        else
        {
            //判断用户输入的验证码是否正确
            if (txtAdminCode.Text.Trim() == labCode.Text.Trim())
            {
                //调用CommonClass类中的checkLogin方法，判断用户是否为合法用户
                int IntUserIn = db.Login(txtAdminName.Text.Trim(), txtAdminPwd.Text.Trim());
                if (IntUserIn > 0)
                {
                    //该用户为合法用户，跳转到后台首页（AdminIndex.aspx）中
                    Response.Write("<script language=javascript>window.open('AdminIndex.aspx');window.close();</script>");
                }
                else
                {
                    //该用户不是合法用户，调用CommonClass类中的MassageBox方法，弹出提示框
                    Response.Write(db.MessageBox("您输入的用户名或密码错误，请重新输入！", "Login.aspx"));

                }
            }
            else
            {
                Response.Write(db.MessageBox("验证码输入有误，请重新输入！", "Login.aspx"));

            }
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.close();location='javascript:history.go(-1)';</script>");
    }
}