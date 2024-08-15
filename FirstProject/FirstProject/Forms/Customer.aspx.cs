using System;
using System.Data;
using System.Data.SqlClient;

namespace FirstProject.Forms
{
    public partial class Customer : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection("Data Source=win-DC;Initial Catalog=HRS;User ID=hrs;Password=hrs");
        SqlDataAdapter adp;
        SqlCommand cmd = null;
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getdata();
              //  dropdownlist();
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            insert();
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {

        }

        protected void Sp_crud(int xpin, int cusref, string beneficiaryname,  string sendername, string frmdate, string todate, string action)
        {

            dt = new DataTable();
            cmd = new SqlCommand("sp_crud", Conn);
            cmd.Parameters.AddWithValue("@p_xpin", xpin);
            cmd.Parameters.AddWithValue("@p_Cusrefrence_number", cusref);
            cmd.Parameters.AddWithValue("@p_Bneficiency_name", beneficiaryname);
            cmd.Parameters.AddWithValue("@p_Sender_name", sendername);
            cmd.Parameters.AddWithValue("@p_FromDate", frmdate);
            cmd.Parameters.AddWithValue("@p_ToDate", todate);
            cmd.Parameters.AddWithValue("@p_action", action);


            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();



        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("login.aspx");
        }

        void getdata()
        {
            adp = new SqlDataAdapter("Sp_Crud",Conn);
            adp.SelectCommand.CommandType = CommandType.StoredProcedure;
            adp.SelectCommand.Parameters.AddWithValue("@p_action", 'a');
            dt = new DataTable();
            adp.Fill(dt);
           
            if (dt.Rows.Count > 0 )
            {

                gridmesgresnd.DataSource = dt;
                gridmesgresnd.DataBind();


            }
           



            
        }

        void insert()
        {
            int var_id = int.Parse(txtmesagetype.Text == "" ? "0" : txtmesagetype.Text);
            int var_Cusref = int.Parse(txtCompany.Text == "" ? "0" : txtCompany.Text);

            Sp_crud(var_id, var_Cusref, txtbeneficiary.Text, txtSender.Text, txtfromdate.Text, txttodate.Text,"i");
        }

       
       






    }
}