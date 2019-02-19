using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Restaurant_Webb
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmailAddress"] != null)
            {
                TextBoxEmail.Text = Session["EmailAddress"].ToString();
            }
        }

        protected void GetCookie()
        {
            if (Request.Cookies["CustomerAccount"]["EM"] != null)
            {
                TextBoxEmail.Text = Request.Cookies["CustomerAccount"]["EM"].ToString();
            }

            if (Request.Cookies["CustomerAccount"]["PW"] != null)
            {
                TextBoxPassword.Text = Request.Cookies["CustomerAccount"]["PW"].ToString();
                // With TextMode set to Password
                TextBoxPassword.Attributes.Add("value", Request.Cookies["CustomerAccount"]["PW"].ToString());
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

        protected void DeleteCookie()
        {
            Response.Cookies["CustomeAccount"].Expires = DateTime.Now;
            TextBoxEmail.Text = "";
            // TextBoxPassword.Text = "";
            // With TextMode = password
            TextBoxPassword.Attributes.Add("value", "");
        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            System.Data.DataView dv;
            SDS_Customer.Select(DataSourceSelectArguments.Empty);
            dv = (System.Data.DataView)SDS_Customer.Select(DataSourceSelectArguments.Empty);
            System.Data.DataRow dr;
            dr = dv.Table.Rows[0];
            //  go back SDS look SQL for array index values
            // match db email and password to form email and password
            if (dr.ItemArray[1].ToString().ToLower().Equals(TextBoxEmail.Text)
                && dr.ItemArray[2].ToString().ToLower().Equals(TextBoxPassword.Text))
            {
                Session["CustomerID"] = dr.ItemArray[0];
                LabelMessage.Text = "Welcome back " + dr.ItemArray[0].ToString();
                if (CheckBoxRemember.Checked)
                {
                    SetCookie();
                }
                ButtonContinue.Visible = true;

            }
            else
            {
                LabelMessage.Text = "Login not found!";
                ButtonContinue.Visible = false;
            }
        }

        protected void ButtonContinue_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void CheckBoxRemember_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBoxRemember.Checked)
            {
                //SetCookie();
            }
            else
            {
                DeleteCookie();
            }
        }
    }
}