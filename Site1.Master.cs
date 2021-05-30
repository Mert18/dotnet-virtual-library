using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace virtual_library
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {
                    LinkButton1.Visible = true;
                    LinkButton2.Visible = true;
                    LinkButton3.Visible = false;
                    LinkButton8.Visible = false;

                }
                else if(Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false;
                    LinkButton2.Visible = false;
                    LinkButton8.Visible = false;
                    LinkButton3.Visible = true;

                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // sign up link button
                    LinkButton8.Visible = true;
                    LinkButton3.Visible = true; // logout link button
                }
            }
            catch(Exception ex)
            {
                Response.Redirect("homepage.aspx");

            }

        }
        
        protected void LinkButton10_Click1(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermanagement.aspx");
        }
        protected void LinkButton8_Click1(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventory.aspx");
        }

        protected void LinkButton6_Click1(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {

            Session.Clear();

            Response.Write("<script>alert('Başarıyla Çıkış Yapıldı.');</script>");

        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {

        }


        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbooks.aspx");
        }
    }
}