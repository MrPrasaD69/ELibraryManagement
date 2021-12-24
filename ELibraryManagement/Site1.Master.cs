using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"]==null)
                {
                    LinkButton1.Visible = true; //userlogin button visible
                    LinkButton2.Visible = true; //signup button visible
                    LinkButton3.Visible = false;//logout button hidden
                    LinkButton7.Visible = false;//hello user button hidden
                    LinkButton6.Visible = true;//admin login button visible
                    LinkButton11.Visible = false;// auth management hidden
                    LinkButton12.Visible = false;// publisher man hidden
                    LinkButton8.Visible = false;//boook inventory hidden
                    LinkButton9.Visible = false;//book issue hidden
                    LinkButton10.Visible = false;//member man hidden
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; //userlogin button 
                    LinkButton2.Visible = false; //signup button 
                    
                    LinkButton3.Visible = true;//logout button 
                    LinkButton7.Text="Hello "+Session["ID"].ToString(); //hello user button 
                    
                    LinkButton6.Visible = true;//admin login button 
                    LinkButton11.Visible = false;// auth management 
                    LinkButton12.Visible = false;// publisher man 
                    LinkButton8.Visible = false;//boook inventory 
                    LinkButton9.Visible = false;//book issue 
                    LinkButton10.Visible = false;//member man 
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; //userlogin button 
                    LinkButton2.Visible = false; //signup button 

                    LinkButton3.Visible = true;//logout button 
                    LinkButton7.Text = "Hello Admin"; //hello user button 

                    LinkButton6.Visible = true;//admin login button 
                    LinkButton11.Visible = true;// auth management 
                    LinkButton12.Visible = true;// publisher man 
                    LinkButton8.Visible = true;//boook inventory 
                    LinkButton9.Visible = true;//book issue 
                    LinkButton10.Visible = true;//member man 
                }
            }
            catch (Exception ex)
            {
                
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            //Destroying session variables after logout button is clicked.
            Session["ID"] = null; 
            Session["role"] = null;


            LinkButton1.Visible = true; //userlogin button 
            LinkButton2.Visible = true; //signup button 
            LinkButton3.Visible = false;//logout button 
            LinkButton7.Visible = false;//hello user button 
            LinkButton6.Visible = true;//admin login button 
            LinkButton11.Visible = false;// auth management 
            LinkButton12.Visible = false;// publisher man 
            LinkButton8.Visible = false;//boook inventory 
            LinkButton9.Visible = false;//book issue 
            LinkButton10.Visible = false;//member man 
        }
    }
}