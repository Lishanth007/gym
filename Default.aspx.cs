using System;
using System.Web.UI;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    string connStr = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=Y:\mini_project\gym\App_Data\Database.mdf;Integrated Security=True";

    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (!Page.IsValid) return;

        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = con.CreateCommand();
        con.Open();
        cmd.CommandText = "INSERT INTO gymdb (name, phone, age, gmail) VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
        int flag = cmd.ExecuteNonQuery();
        con.Close();

        if (flag == 1)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Inserted successfully');", true);
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (!Page.IsValid) return;

        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = con.CreateCommand();
        con.Open();
        cmd.CommandText = "UPDATE gymdb SET phone='" + TextBox2.Text + "', age='" + TextBox3.Text + "', gmail='" + TextBox4.Text + "' WHERE name='" + TextBox1.Text + "'";
        int flag = cmd.ExecuteNonQuery();
        con.Close();

        if (flag >= 1)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Updated successfully');", true);
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Record not found');", true);
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = con.CreateCommand();
        con.Open();
        cmd.CommandText = "DELETE FROM gymdb WHERE name='" + TextBox1.Text + "'";
        int flag = cmd.ExecuteNonQuery();
        con.Close();

        if (flag >= 1)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Deleted successfully');", true);
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Record not found');", true);
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = con.CreateCommand();
        con.Open();
        cmd.CommandText = "SELECT phone, age, gmail FROM gymdb WHERE name='" + TextBox1.Text + "'";
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            TextBox2.Text = dr["phone"].ToString();
            TextBox3.Text = dr["age"].ToString();
            TextBox4.Text = dr["gmail"].ToString();
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Record not found');", true);
        }

        dr.Close();
        con.Close();
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("plan.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin.aspx");
    }
}