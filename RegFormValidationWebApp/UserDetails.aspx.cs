using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegFormValidationWebApp
{
    public partial class UserDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                lblMessage.Text = "Form submitted successfully";
            }
            else
            {
                lblMessage.Text = "Please correct the errors and try again.";
            }
        }
    }
}