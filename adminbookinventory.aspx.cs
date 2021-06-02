using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace virtual_library
{
    public partial class adminbookinventory : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(null) && Session["role"].Equals("user"))
                {
                    Response.Redirect("/adminlogin.aspx");

                }
                GridView1.DataBind();
            } catch(Exception ex)
            {
                Response.Redirect("/adminlogin.aspx");
            }
           
            
            
        }

        /*Add Book */
        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO book_master_tbl(book_id, book_name, genre, author, thoughts) " +
                    "VALUES('" + TextBox1.Text.Trim() + "', '" + TextBox4.Text.Trim() + "', '" + TextBox3.Text.Trim() + "', '" + TextBox5.Text.Trim() + "','" + TextBox2.Text.Trim() + "')", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Kitap Başarıyla Eklendi');</script>");
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Kitap ekleme sırasında hata oluştu.');</script>");
            }
        }
        /* Delete book */
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE FROM book_master_tbl WHERE book_id ='"+ TextBox1.Text.Trim() + "' ", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Kitap Başarıyla Silindi');</script>");
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Kitap silinme sırasında hata oluştu.');</script>");
            }
        }

        /* Kitap numarası */
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        /* Yazar ismi */
        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        /* Kitap ismi */
        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }
        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}