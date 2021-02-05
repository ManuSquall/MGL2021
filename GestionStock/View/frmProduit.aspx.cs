﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GestionStock.Models;

namespace GestionStock.View
{
    public partial class frmProduit : System.Web.UI.Page
    {
        bdStockMGL2021Entities db = new bdStockMGL2021Entities();
        protected void Page_Load(object sender, EventArgs e)
        {
            dgProduit.DataSource = db.Produit.ToList();
            dgProduit.DataBind();
            cbbCategorie.DataSource = db.Categorie.ToList();
            cbbCategorie.DataTextField = "nomCategorie";
            cbbCategorie.DataValueField = "idCategorie";
            cbbCategorie.DataBind();
        }

        protected void btnAjouter_Click(object sender, EventArgs e)
        {
            Produit p = new Produit();
            p.descriptionProduit = txtDescription.Text;

            // use int.tryparse
            p.idCategorie = int.Parse(cbbCategorie.SelectedValue.ToString());

            p.nomProduit = txtNom.Text;
            p.puProduit = decimal.Parse(txtPu.Text);
            p.qteProduit = decimal.Parse(txtQte.Text);
            p.qteSeuilProduit = decimal.Parse(txtQteSeuil.Text);
            db.Produit.Add(p);
            db.SaveChanges();
            Server.Transfer("frmProduit.aspx");
        }

        protected void dgProduit_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}