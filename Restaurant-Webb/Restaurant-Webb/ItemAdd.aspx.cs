using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Restaurant_Webb
{
    public partial class ItemAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UploadPath"] = Server.MapPath("upload/");
        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            LabelMessage.Text = "";
            try
            {
                // Both filesize and filetype must be correct
                if (Check_FileLength() == true)
                {
                    LabelPhoto.Text = FileUploadPhoto.FileName.ToString();
                    FileUploadPhoto.PostedFile.SaveAs(Session["UploadPath"] + LabelPhoto.Text);
                    SDS_Items.Insert();
                    LabelMessage.Text = TextBoxName.Text + " was added!";
                }
            }
            catch
            {
                LabelMessage.Text = "ERROR: " + TextBoxName.Text + " was NOT added!";
            }
        }

        protected bool Check_FileLength()
        {
            // weblogs.asp.net/jgalloway/archive/2008/01/08/large-file-uploads-in-asp-net.aspx
            // Max upload file size is 4 MB - so look at the web.config file.

            bool noErrors;
            try
            {
                if (FileUploadPhoto.PostedFile.ContentLength > 100000)
                {
                    LabelMessage.Text = LabelMessage.Text + " Photo size is too large. Must be under 100kb.";
                    noErrors = false;
                }
                else
                {
                    noErrors = true;
                }
                return noErrors;
            }
            catch
            {
                LabelMessage.Text = "Error completing transaction. Please check file size";
                noErrors = false;
                return noErrors;
            }

        }

        protected bool CheckFileType()
        {
            bool errors = false;
            try
            {
                if (FileUploadPhoto.PostedFile.ContentType == "image/png" ||
                    FileUploadPhoto.PostedFile.ContentType == "image/jpeg" ||
                    FileUploadPhoto.PostedFile.ContentType == "image/pjpeg")
                {
                    errors = false;

                }
                else
                {
                    LabelMessage.Text = "Incorrect File type! ";
                    errors = true;
                }
            }
            catch
            {
                LabelMessage.Text = "Error uploading photo- check filetype.";
            }
            return errors;
        }
    }
}