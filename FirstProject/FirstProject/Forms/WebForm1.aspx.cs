using System;

namespace FirstProject.Forms
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //string[] cars = { "Usman:", "Umer:", "Usama:", "younus:" };
                //foreach (string i in cars)
                //{
                //    Response.Write(i);
                //}
                //calculate(10,5);
            }


        }

        protected void btnsavearray_Click(object sender, EventArgs e)
        {
            string[] AbcArray = { "2:", "3:", "4:", "5:", "6:" };
            string SavedVAlue = "";
            for (int i = 0; i < AbcArray.Length; i++)
            {
                SavedVAlue = SavedVAlue + AbcArray[i];

            }
            Response.Write(SavedVAlue);
        }

        protected void btninhertiance_Click(object sender, EventArgs e)
        {
            B b = new B();
            b.display();
            Response.Write(b.display());
        }

        protected void btnabstract_Click(object sender, EventArgs e)
        {
            Traingle objtr = new Traingle();
            objtr.getarea();
            Response.Write(objtr.getarea());
        }

        protected void btnencapsulation_Click(object sender, EventArgs e)
        {
            ClsEncapsule objref = new ClsEncapsule();
            objref.getvalue();
            Response.Write(objref.getvalue());
        }

        void methodGet()
        {
            string[] students = { "David", "Vinoth", "Divya", "Ishitha", "Thomas" };
            int[] marks = { 88, 95, 68, 77, 95 };

            // var Avgmarks = 0;

            for (int i = 0; i < students.Length; i++)
            {
                if (marks[i] > 90)
                {
                    Console.WriteLine(students[i] + " Grade: " + "A");
                }
                else if (marks[i] > 80)
                {
                    Console.WriteLine(students[i] + " Grade: " + "B");
                }
                else if (marks[i] > 70)
                {
                    Console.WriteLine(students[i] + " Grade: " + "C");
                }
                else if (marks[i] > 50)
                {
                    Console.WriteLine(students[i] + " Grade: " + "D");
                }
                else
                {
                    Console.WriteLine(students[i] + " Grade: " + "FAIL");
                }
            }
           // Console.ReadKey();
        }

        int calculate(int a,int b)
        {
            var c = (a) * 2 + 2 * a * b + (b) * 2;

            return c;
        }

        protected void btnGrade_Click(object sender, EventArgs e)
        {
            // methodGet();

            //function submit() {

            //    let username1 = document.getElementById("UserName").value;
            //    let password1 = document.getElementById("Password").value;

            //    document.getElementById("LoginId").innerHTML = username1;
            //    document.getElementById("LoginPswd").innerHTML = password1;


            //    //alert(username1)
            //    //debugger;
            //    //if (username1 == "" && password1 == "") {
            //    //    alert("invalid username and password");
            //    //    // alert(username1);
            //    //    // alert(Number(username1) + Number(password1));
            //    //    //  alert(password1);
            //    //}
            //    ////  alert(username1);
            //    //// alert(password1);
            //    //alert(username1);
            //    //// alert(Number(username1) + Number(password1));
            //    //alert(password1);
            //}
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {

        }

        protected void abc_TextChanged(object sender, EventArgs e)
        {
            //calculate();
            abc.Text = calculate(10, 5).ToString();

        }
    }
}


          