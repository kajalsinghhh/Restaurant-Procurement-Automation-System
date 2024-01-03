using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using YummyRestaurantSystem.src;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace YummyRestaurantSystem
{
    public partial class FrmLogin : Form
    {
        public FrmLogin()
        {
            InitializeComponent();
        }

        private void txtuser_Click(object sender, EventArgs e)
        {
            txtuser.BackColor = Color.White;
            panel3.BackColor = Color.White;
            panel4.BackColor = SystemColors.Control;
            txtpw.BackColor = SystemColors.Control;
        }

        private void txtpw_Click(object sender, EventArgs e)
        {
            txtpw.BackColor = Color.White;
            panel4.BackColor = Color.White;
            txtuser.BackColor = SystemColors.Control;
            panel3.BackColor = SystemColors.Control;
            txtpw.PasswordChar = '●';
            cbnShowPw.Checked = false;
        }

        private void cbnShowPw_CheckedChanged(object sender, EventArgs e)
        {
            if (cbnShowPw.Checked)
            {
                txtpw.PasswordChar = '\0';
            }
            else
            {
                txtpw.PasswordChar = '●';
            }
        }

        private void FrmLogin_Load(object sender, EventArgs e)
        {
            timer1.Start();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            lblTime.Text = DateTime.Now.ToString("hh:mm:ss tt");
            timer1.Start();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            string acc = txtuser.Text;
            string pw = txtpw.Text;
            DataRow data = SQLHandler.CheckLogin(acc, pw);
            if (data == null)
            {
                MessageBox.Show("Wrong account name or password.", "Fail to login", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            };
            string userGroup = (string)data["UserGroup"];
            string staffID = (string)data["StaffID"];
            DataRow staffData = SQLHandler.GetStaffData(staffID);
            switch (userGroup)
            {
                case "Restaurant Manager":
                    {
                        this.Visible = false;
                        FrmMenuRestMan menu = new FrmMenuRestMan(staffData);
                        menu.ShowDialog();
                        this.Visible = true;
                    }
                    break;
                case "Restaurant Staff":
                    {
                        this.Visible = false;
                        FrmInvManage menu = new FrmInvManage(staffData);
                        menu.ShowDialog();
                        this.Visible = true;
                    }
                    break;
                case "Category Manager":
                    {
                        this.Visible = false;
                        FrmMenuCatMan menu = new FrmMenuCatMan(staffData);
                        menu.ShowDialog();
                        this.Visible = true;
                    }
                    break;
                case "Administrator":
                    {
                        this.Visible = false;
                        FrmUserManage menu = new FrmUserManage();
                        menu.ShowDialog();
                        this.Visible = true;
                    }
                    break;
                case "Purchase Manager":
                    {
                        this.Visible = false;
                        FrmMenuPurMan menu = new FrmMenuPurMan(staffData);
                        menu.ShowDialog();
                        this.Visible = true;
                    }
                    break;
                case "Warehouse Clerk":
                    {
                        this.Visible = false;
                        FrmMenuWhClerk menu = new FrmMenuWhClerk(staffData);
                        menu.ShowDialog();
                        this.Visible = true;
                    }
                    break;
                case "Accounting Manager":
                    {
                        this.Visible = false;
                        FrmMenu_Acc_Man_ menu = new FrmMenu_Acc_Man_(staffData);
                        menu.ShowDialog();
                        this.Visible = true;
                    }
                    break;
                case "Buyer":
                    MessageBox.Show("This client is not for buyer.", "Fail to login", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    break;
                default:
                    MessageBox.Show("Unknown user group.", "Fail to login", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    break;
            }
            txtuser.Text = "";
            txtpw.Text = "";
        }

        private void btnforgot_Click(object sender, EventArgs e)
        {
            this.Visible = false;
            FrmChangePW menu = new FrmChangePW();
            menu.ShowDialog();
            this.Visible = true;
            return;
        }

        private void txtuser_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                e.SuppressKeyPress = true;
                btnLogin_Click(null, null);
            }
        }
    }
}
