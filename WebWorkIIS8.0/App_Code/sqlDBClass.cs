using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// sqlDBClass 的摘要说明
/// </summary>
public class sqlDBClass
{
	public sqlDBClass()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    /// <summary>
    /// 连接数据库，生成SqlConnection对象
    /// </summary>
    /// <returns>返回SqlConnection类型Conn</returns>
    public SqlConnection GetConnection()
    {
         string sqlConnStr = ConfigurationManager.AppSettings["ConnectionString"].ToString();
        //string sqlConnStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            SqlConnection Conn = new SqlConnection(sqlConnStr);
        return Conn;
    }
    /// <summary>
    /// 用于执行SQL语句
    /// </summary>
    /// <param name="sqlStr"></param>
    /// <returns></returns>
    public Boolean ExecSql(string sqlStr)
    {
        SqlConnection Conn = GetConnection();
        try
        {
            Conn.Open();
            SqlCommand sqlCmd = new SqlCommand(sqlStr, Conn);
            sqlCmd.ExecuteNonQuery();
        }
        catch
        {
            return false;
        }
        finally
        {
            Conn.Close();
        }
        return true;
    }
    /// <summary>
    /// GetDataSet数据集，返回数据源的数据集
    /// </summary>
    /// <param name="sqlSelectStr"></param>
    /// <param name="TableName"></param>
    /// <returns></returns>
    public DataSet GetDataSet(string sqlSelectStr, string TableName)
    {
        SqlConnection Conn = GetConnection();
        DataSet ds = new DataSet();
        try
        {
            Conn.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(sqlSelectStr, Conn);
            adapter.Fill(ds, TableName);
        }
        catch
        {

        }
        finally
        {
            Conn.Close();
        }
        return ds;
    }
    /// <summary>
    /// 登陆，防止SQL注入
    /// </summary>
    /// <param name="loginName"></param>
    /// <param name="loginPwd"></param>
    public int Login(string loginName, string loginPwd)
    {
        SqlConnection Conn = GetConnection();
        string cmdStr = "select count(*) from tb_User where Name=@loginName and PassWord=@loginPwd";
        SqlCommand Cmd = new SqlCommand(cmdStr,Conn);
        Cmd.Parameters.Add(new SqlParameter("@loginName",SqlDbType.VarChar,20));
        Cmd.Parameters["@loginName"].Value = loginName;
        Cmd.Parameters.Add(new SqlParameter("@loginPwd", SqlDbType.VarChar, 50));
        Cmd.Parameters["@loginPwd"].Value = loginPwd;
        int i = 0;
        try
        {
            Conn.Open();
            i = (int)Cmd.ExecuteScalar();
        }
        catch
        {
        }
        finally
        {
            Conn.Close();
        }
        return i;
    }
    /// <summary>
    /// 产生随机验证码
    /// </summary>
    /// <param name="n">随机验证码的个数</param>
    /// <returns>返回产生的随机码</returns>
    public string RandomNum(int n)
    {
        //定义一个包括数字、大写英文字母和小写英文字母的字符串
        string strchar = "0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z";
        string[] VcArray = strchar.Split(',');//将strchar字符串转化为数组
        string VNum = "";//记录上次随机数值，尽量避免产生几个一样的随机数      
        int temp = -1;
        Random rm =new Random();
        for(int i=1;i<n+1;i++)
        {
            if (temp != -1)
            {
                //unchecked 关键字用于取消整型算术运算和转换的溢出检查。
                //DateTime.Ticks 属性获取表示此实例的日期和时间的刻度数。
                rm = new Random(i * temp * unchecked((int)DateTime.Now.Ticks));
            }
            int t = rm.Next(61);
            if (temp != -1 && temp == t)
            {
                return RandomNum(n);
            }
            temp = t;
            VNum += VcArray[t];
        }
        return VNum;
    }
    public string MessageBox(string TxtMessage, string Url)
    {
        string str;
        str = "<script language=javascript>alert('" + TxtMessage + "');location='" + Url + "'</script>";
        return str;
    }
    public string MessageBox(string TxtMessage)
    {
        string str;
        str = "<script language=javascript>alert('" + TxtMessage + "')</script>";
        return str;
    }
}