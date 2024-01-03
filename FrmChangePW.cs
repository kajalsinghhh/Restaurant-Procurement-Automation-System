using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace YummyRestaurantSystem
{
    public partial class FrmChangePW : Form
    {
        public FrmChangePW()
        {
            InitializeComponent();
        }

        private void FrmChangePW_Load(object sender, EventArgs e)
        {
            timer1.Start();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            lblTime.Text = DateTime.Now.ToString("hh:mm:ss tt");
            timer1.Start();
        }

        private void btnChange_Click(object sender, EventArgs e)
        {
            if (txtNewPasswd.Text != txtConfirmNewPasswd.Text)
            {
                MessageBox.Show("Can't confirm new password.", "Fail to change password", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }
            if (SQLHandler.ChangePassword(txtuser.Text, txtOldPasswd.Text, txtNewPasswd.Text))
            {
                MessageBox.Show("Your password have been updated.", "Success to change password", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            MessageBox.Show("Incorrect old password.", "Fail to change password", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
