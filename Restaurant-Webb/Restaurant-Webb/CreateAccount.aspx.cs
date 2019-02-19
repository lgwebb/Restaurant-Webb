using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Restaurant_Webb
{
    public partial class CreateAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonCreate_Click(object sender, EventArgs e)
        {
            LabelMessage.Text = "";

            try
            {
                if (Page.IsValid)
                {
                    SDS_Customer.Insert();
                    //could textbox email - just try to showcase session variables
                    Session["EmailAddress"] = TextBoxEmail.Text;
                    Select_Customer();  // get the Reviewer ID and store it in a session variable
                    SetCookie();
                }
                else
                {
                    LabelMessage.Text = "Page contains errors.";
                }



                LabelMessage.Text = TextBoxFirstName.Text + " " + TextBoxLastName.Text + " was created!";
            }
            catch (System.Data.OleDb.OleDbException ex)
            {
                
                if (ex.ErrorCode == -2147467259) //Error for duplicate records
                {
                    LabelMessage.Text = "Email Address already exists. / Error.";
                }
                else
                {
                    LabelMessage.Text = "ERROR CREATING ACCOUNT: " + TextBoxFirstName.Text + " " + TextBoxLastName.Text + " was NOT created!";
                }
                 
            }
        }

        protected void SetCookie()
        {
            Response.Cookies["CustomerAccount"]["RID"] = Session["CustomerID"].ToString();
            Response.Cookies["CustomerAccount"]["EM"] = TextBoxEmail.Text;
            Response.Cookies["CustomerAccount"]["PW"] = TextBoxPassword.Text;
            Response.Cookies["CustomerAccount"]["TS"] = DateTime.Now.ToString();
            Response.Cookies["CustomerAccount"].Expires = DateTime.Now.AddDays(100);
        }

        protected void Select_Customer()
        {
            System.Data.DataView dv;
            SDS_Customer.Select(DataSourceSelectArguments.Empty);
            dv = (System.Data.DataView)SDS_Customer.Select(DataSourceSelectArguments.Empty);
            System.Data.DataRow dr;
            dr = dv.Table.Rows[0];
            //could textbox email - just try to showcase session variables
            /*if (dr.ItemArray[6].ToString().ToLower().Equals(Session["EmailAddress"].ToString().ToLower()))*/

            Session["CustomerID"] = dr.ItemArray[0];

        }

        protected void ValidateLastName(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length < 3)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }

        protected void ValidatePassword(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length < 8)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }




    }
}