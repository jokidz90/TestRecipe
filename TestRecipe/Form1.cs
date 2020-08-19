using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace TestRecipe
{
    public partial class Form1 : Form
    {
        POSController _controller = new POSController();

        public Form1()
        {
            InitializeComponent();
            dgvPurchase.AutoGenerateColumns = false;
        }

        private void txtBarcode_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode != Keys.Enter)
                return;

            ScanItem();
        }


        private void btnScan_Click(object sender, EventArgs e)
        {
            ScanItem();
        }

        private void ScanItem()
        {
            if (string.IsNullOrEmpty(txtBarcode.Text))
                return;

            string itemNo = txtBarcode.Text;
            txtBarcode.Text = "";

            string status="";
            if (!_controller.AddItemToOrders(itemNo, out status))
            {
                MessageBox.Show(status);
                return;
            }
            BindGrid();
        }

        private void BindGrid()
        {
            try
            {
                dgvPurchase.DataSource = _controller.Orders.ToDataTable();
                dgvPurchase.Refresh();
                lblGrandTotal.Text = _controller.GrandTotal.ToString("C2");
                lblTotalCost.Text = _controller.TotalCost.ToString("C2");
                lblNettProfit.Text = _controller.NettProfit.ToString("C2");
                txtBarcode.Focus();
            }
            catch (Exception ex)
            {
 
            }
        }

        private void Reset()
        {
            txtBarcode.Text = "";
            _controller = new POSController();
            BindGrid();
        }

        private void btnReset_Click(object sender, EventArgs e)
        {
            Reset();
        }

        private void Form1_Shown(object sender, EventArgs e)
        {
            txtBarcode.Focus();
        }


    }
}
