﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Space_Buns_Ordering_System.Admin
{
    public partial class adminRoles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGetUsers_Click(object sender, EventArgs e)
        {
            ddlUsers.DataSource = Membership.GetAllUsers();
            ddlUsers.DataBind();
        }

        protected void btnCreateRole_Click(object sender, EventArgs e)
        {
            Roles.CreateRole(txtRole.Text);
        }

        protected void btnGetRoles_Click(object sender, EventArgs e)
        {
            ddlRoles.DataSource = Roles.GetAllRoles();
            ddlRoles.DataBind();
        }

        protected void btnGetUsersinRole_Click(object sender, EventArgs e)
        {
            lstUsers.DataSource = Roles.GetUsersInRole(ddlRoles.SelectedItem.ToString());
            lstUsers.DataBind();
        }

        protected void btnAssign_Click(object sender, EventArgs e)
        {
            Roles.AddUserToRole(txtUserName.Text, txtRoleName.Text);
        }

        protected void ddlRoles_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtRoleName.Text = ddlRoles.SelectedItem.ToString();
        }

        protected void ddlUsers_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtUserName.Text = ddlUsers.SelectedItem.ToString();
        }
    }
}