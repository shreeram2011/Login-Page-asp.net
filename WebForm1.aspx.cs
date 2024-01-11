using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginPage
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
            }



        }

        protected void Button2_Click(object sender, EventArgs e)
        { 
            Response.Redirect("https://accounts.google.com");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string userEmail = TextBox1.Text.Trim();

            if (!string.IsNullOrEmpty(userEmail))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", $"alert('Login successful for email: {userEmail}');", true);
            }
            else
            {
                // Display an error message for empty email (you can customize this message)
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please enter a valid email and password !!');", true);
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (IsValidSignUpPassword(TextBox5.Text))
            {
                string script = "alert('Sign up successfull!');";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessAlert", script, true);
            }
            else
            {
                Response.Write("Invalid password. Please use only a-z and 0-9.");
            }
        }

        private bool IsValidSignUpPassword(string password)
        {
            return System.Text.RegularExpressions.Regex.IsMatch(password, "^[a-zA-Z0-9]+$");
        }
    }
}