using System;
using System.Data;
//using Oracle.DataAccess.Client;
//using System.Data.OracleClient;
//using System.Data.OracleClient;
using System.Data.SqlClient;
using System.Web.UI.WebControls;



namespace FirstProject
{

    public partial class transction : System.Web.UI.Page
    {
        //integrated security = true;
        //SqlConnection Conn = new SqlConnection("Data Source=ORCL;Initial Catalog=orcl.cr-pl.com;User ID=MBL_HRS;Password=MBL_HRS");
        SqlConnection Conn = new SqlConnection("Data Source=win-DC;Initial Catalog=HRS;User ID=hrs;Password=hrs;");
        SqlDataAdapter adp;
        SqlCommand cmd = null;
        DataTable dt = new DataTable();


        protected void Page_Load(object sender, EventArgs e)
        {
            int v1 = 0;
            int v2 = 2;


            if(v1 == 0)
            {

                v2 = 3;

            }




            if (!IsPostBack)
            {
                getdata();
                dropdownlist();
            }

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            insert();
        }


        #region methods
        void getdata()
        {
            adp = new SqlDataAdapter("sp_crud", Conn);
            adp.SelectCommand.CommandType = CommandType.StoredProcedure;
            adp.SelectCommand.Parameters.AddWithValue("@p_action", 'a');
            dt = new DataTable();
            adp.Fill(dt);


            if (dt.Rows.Count > 0)
            {
                gridCrud.DataSource = dt;
                gridCrud.DataBind();

            }
        }
        void insert()
        {
            int var_id = int.Parse(txtxpin.Text == "" ? "0" : txtxpin.Text);
            int var_cusrefno = int.Parse(txtcusref.Text == "" ? "0" : txtcusref.Text);


            Sp_crud(var_id, var_cusrefno, txtbeneficiaryName.Text, "i", DropDownSender.SelectedValue.ToString(), txtfrmdate.Text, txttodate.Text);
            reset();
        }
        void delete()
        {
            int var_id = int.Parse(txtxpin.Text == "" ? "0" : txtxpin.Text);
            Sp_crud(var_id, 0, "", "d", "", "", "");
            reset();


        }

        void reset()
        {
            txtxpin.Text = "";
            txtcusref.Text = "";
            txtbeneficiaryName.Text = "";
            DropDownSender.SelectedValue = "";
            txtfrmdate.Text = "";
            txttodate.Text = "";

        }
        void dropdownlist()
        {
            adp = new SqlDataAdapter("Sp_Crud", Conn);
            adp.SelectCommand.Parameters.AddWithValue("@p_action", "n");
            adp.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            adp.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                DropDownSender.DataSource = dt;
                DropDownSender.DataTextField = "Sender_name";
                DropDownSender.DataValueField = "Sender_name";
                DropDownSender.DataBind();
                DropDownSender.Items.Insert(0, new ListItem("Sender Name", ""));
            }




        }
        #endregion
        protected void btndelete_Click(object sender, EventArgs e)
        {
            delete();
        }
        protected void Sp_crud(int xpin, int cusref, string bneficinaryname, string action, string sendername, string fromdate, string todate)
        {

            dt = new DataTable();
            cmd = new SqlCommand("sp_crud", Conn);
            cmd.Parameters.AddWithValue("@p_xpin", xpin);
            cmd.Parameters.AddWithValue("@p_Cusrefrence_number", cusref);
            cmd.Parameters.AddWithValue("@p_Bneficiency_name", bneficinaryname);
            cmd.Parameters.AddWithValue("@p_Sender_name", sendername);
            cmd.Parameters.AddWithValue("@p_FromDate", fromdate);
            cmd.Parameters.AddWithValue("@p_ToDate", todate);
            cmd.Parameters.AddWithValue("@p_action", action);

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();

            getdata();



        }

        protected void gridCrud_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            gridCrud.EditIndex = -1;
            getdata();
        }

        protected void gridCrud_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            gridCrud.EditIndex = e.NewEditIndex;
            getdata();


        }

        protected void gridCrud_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            TextBox xpin = gridCrud.Rows[e.RowIndex].FindControl("txtxpin") as TextBox;
            string Oxpin = xpin.Text;
            TextBox cusrefno = gridCrud.Rows[e.RowIndex].FindControl("txtcusrefno") as TextBox;
            string OCusrefno = cusrefno.Text;
            TextBox benficientname = gridCrud.Rows[e.RowIndex].FindControl("txtBeneficiaryname") as TextBox;
            string Obenficientname = benficientname.Text;
            TextBox sendername = gridCrud.Rows[e.RowIndex].FindControl("txtsendername") as TextBox;
            string Osendername = sendername.Text;
            TextBox frmdate = gridCrud.Rows[e.RowIndex].FindControl("txtfromdate") as TextBox;
            string Ofrmdate = frmdate.Text;
            TextBox Todate = gridCrud.Rows[e.RowIndex].FindControl("txttodate") as TextBox;
            string OTodate = Todate.Text;
            Sp_crud(int.Parse(Oxpin), int.Parse(OCusrefno), Obenficientname, "u", Osendername, Ofrmdate, OTodate);
            gridCrud.EditIndex = -1;

            getdata();

        }

        protected void uploadbtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (FileUploaded.HasFile)
                {
                    FileUploaded.SaveAs(@"c:\Myfolder\temp\" + FileUploaded.FileName);
                    lblmesg.Text = "File Uploaded: " + FileUploaded.FileName;

                }

            }
            catch (Exception ex)
            {

                lblmesg.Text = ex.Message;

            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            //formAdd.Attributes.Add("style", "display:block;");
            uploadbtn.Visible = false;
            FileUploaded.Visible = false;
            lblmesg.Visible = false;

        }

        protected void btnupload_Click(object sender, EventArgs e)
        {
         //   formAdd.Attributes.Add("style", "display:none");
            uploadbtn.Visible = true;
            FileUploaded.Visible = true;
            lblmesg.Visible = true;
        }


        #region Aray_Stop
        //Array Bind... 

        //first string array.
        //Second string null.
        //thrid  use loop .
        //Fourth loop use string.                
        //Fifth response..

        //string[] AbcArray = { "1", "2", "3", "4" };
        //string savedvalue = "";
        //for (int i = 0; i < AbcArray.Length; i++)
        //{
        //    savedvalue = savedvalue + AbcArray[i];
        //}
        //Response.Write(savedvalue);


        //string[] AbcArray = { "1", "2", "3", "4", "5", "6" };
        //string SavedVAlue = "";
        //for (int i = 0; i < AbcArray.Length; i++)
        //{
        //    SavedVAlue = SavedVAlue + AbcArray[i];

        //}
        //Response.Redirect(SavedVAlue);
        #endregion

        #region STOP_WORKING
        //if (FileUploaded.HasFile)
        //{
        //    FileUploaded.SaveAs(@"c:\temp\" + FileUploaded.FileName);
        //    lblmesg.Text = "File Uploaded: " + FileUploaded.FileName;

        //}
        //else
        //{
        //    lblmesg.Text = "No File Uploaded";
        //}
        #region Comment
        //string[] AbcArray = { "A:", "B:", "C:", "D:", "E:" };

        //// string abc = "usman";
        //string SavedValue = "";
        //for (int i = 0; i < AbcArray.Length; i++)
        //{
        //    SavedValue = "AbcArray[i]";

        //}
        //Response.Write(SavedValue);



        // Response.Write(AbcArray[0] + AbcArray[1] + AbcArray[2] + AbcArray[3] + AbcArray[4]);

        //for (int i = 0; i < AbcArray.Length; i++)
        //{
        //    Response.Write(AbcArray[i]);
        //}
        #endregion
        #endregion
    }
}




