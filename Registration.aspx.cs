﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        //instantiate classes
        BookReviewDbEntities brde = new BookReviewDbEntities();
        KeyCode k = new KeyCode();
        int seed = k.GetKeyCode(); //get seed
        PasswordHash phash = new PasswordHash();

        try//trythe code for errors
        {
            byte[] pass = phash.HashIt(txtConfirm.Text, seed.ToString());

            //assign the values to the field of the Reviewer class
            
            Reviewer rev = new Reviewer();
            rev.ReviewerFirstName = txtFirstName.Text;
            rev.ReviewerLastName = txtLastName.Text;
            rev.ReviewerUserName = txtUserName.Text;
            rev.ReviewerEmail = txtEmail.Text;
            rev.ReviewerKeyCode = seed;
            rev.ReviewPlainPassword = txtPassword.Text;
            rev.ReviewerHashedPass = pass;
            rev.ReviewerDateEntered = DateTime.Now;

            //save changes
            brde.Reviewers.Add(rev);
            brde.SaveChanges();
            lblErrorSuccess.Text = "Reviewer Saved";
        }
        catch (Exception ex)
        {
            lblErrorSuccess.Text = ex.Message;
        }

        

    }
}