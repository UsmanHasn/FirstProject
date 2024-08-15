using System;
using System.Data;
using System.Data.SqlClient;

namespace FirstProject.Forms
{
    public partial class login : System.Web.UI.Page
    {
        //SqlConnection Conn = new SqlConnection("Data Source=DESKTOP-O6HU8I0;Initial Catalog=HRS;User ID=hrs;Password=hrs;");
        SqlConnection Conn = new SqlConnection("Data Source=DESKTOP-O6HU8I0;Initial Catalog=HRS;Integrated Security = true;");
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                reset();
            }
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {

            SqlDataAdapter adp = new SqlDataAdapter("sp_login", Conn);
            adp.SelectCommand.Parameters.AddWithValue("@Usrname", txtEmail.Text);
            adp.SelectCommand.Parameters.AddWithValue("@Passwrd", txtpaswrd.Text);
            adp.SelectCommand.CommandType = CommandType.StoredProcedure;
            dt = new DataTable();
            adp.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["User"] = dt.Rows[0]["Usrname"].ToString();
                //Session["Authorizer"] = dt.Rows[0]["Authorizer"].ToString();
                //Session["id"] = txtEmail.Text;
                // Session["AUTHORIZER"] = txtEmail.Text;

                lblError.Style.Add("Color", "green");
                lblError.Text = "Login Successfull";
                Response.Redirect("transction.aspx");
                // Response.Write("<script>alert('login successful');</script>");
                // ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "msg", "alert('login');", true);


            }
            else
            {
                lblError.Style.Add("Color", "red");
                lblError.Text = "Invalid userid & password";
            }


            reset();

        }

        void reset()
        {
            txtEmail.Text = "";
            txtpaswrd.Text = "";
        }
    }
}


//protected void btnsearch_Click(object sender, EventArgs e)
//{
//    //get("A", txtxpin.Text, DropDownList1.SelectedValue, ddlfilename.SelectedValue, txtcalendarfrom.Text, txtcalendarto.Text);

//    if (Session["Authorizer"].ToString() == "0"
//    {
//        get("maker", txtxpin.Text, DropDownList1.SelectedValue, ddlfilename.SelectedValue, txtcalendarfrom.Text, txtcalendarto.Text);
//    }
//    else if (Session["Authorizer"].ToString() == "1"
//    {
//        get("admin", txtxpin.Text, DropDownList1.SelectedValue, ddlfilename.SelectedValue, txtcalendarfrom.Text, txtcalendarto.Text);
//    }
//}
//}