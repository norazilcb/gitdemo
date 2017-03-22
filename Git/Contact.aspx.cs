using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Git
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendEmail_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;
            System.Net.NetworkCredential credentials = 
                new System.Net.NetworkCredential("norazi@gmail.com", "happyfam1ly");
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
        
            MailMessage msg = new MailMessage("norazi@gmail.com", txtEmail.Text);
            msg.Subject = "Name: " + txtName.Text + " Subject: " + txtSubject.Text;
            msg.Body = txtMsg.Text;
            smtpClient.Send(msg);
        }
    }
}