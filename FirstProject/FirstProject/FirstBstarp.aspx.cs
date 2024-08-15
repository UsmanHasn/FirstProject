using System;
using System.Data;


using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;


namespace FirstProject
{
   
    public partial class FirstBstarp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            formAdd.Attributes.Add("style", "display:block;");
            FileUpload1.Visible = false;
            uploadbtn.Visible = false;
        }

        protected void btnupload_Click(object sender, EventArgs e)
        {
            formAdd.Attributes.Add("style", "display:none;");
            FileUpload1.Visible = true;
            uploadbtn.Visible = true;
        }
    }
}