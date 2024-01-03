
namespace YummyRestaurantSystem
{
    partial class FrmChangePW
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmChangePW));
            this.panel1 = new System.Windows.Forms.Panel();
            this.lblTime = new System.Windows.Forms.Label();
            this.lblcompanyName3 = new System.Windows.Forms.Label();
            this.lblcompanyName2 = new System.Windows.Forms.Label();
            this.lblcompanyName1 = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.btnChange = new System.Windows.Forms.Button();
            this.btnCancel = new System.Windows.Forms.Button();
            this.txtNewPasswd = new System.Windows.Forms.TextBox();
            this.txtConfirmNewPasswd = new System.Windows.Forms.TextBox();
            this.txtuser = new System.Windows.Forms.TextBox();
            this.txtOldPasswd = new System.Windows.Forms.TextBox();
            this.lblRestaurant = new System.Windows.Forms.Label();
            this.lblUserName = new System.Windows.Forms.Label();
            this.lblOldPasswd = new System.Windows.Forms.Label();
            this.lblNewPasswd = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.lblConfirmNewPasswd = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.panel1.Controls.Add(this.lblTime);
            this.panel1.Controls.Add(this.lblcompanyName3);
            this.panel1.Controls.Add(this.lblcompanyName2);
            this.panel1.Controls.Add(this.lblcompanyName1);
            this.panel1.Controls.Add(this.pictureBox1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Left;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Margin = new System.Windows.Forms.Padding(4, 2, 4, 2);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(400, 744);
            this.panel1.TabIndex = 2;
            // 
            // lblTime
            // 
            this.lblTime.AutoSize = true;
            this.lblTime.Location = new System.Drawing.Point(23, 605);
            this.lblTime.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblTime.Name = "lblTime";
            this.lblTime.Size = new System.Drawing.Size(37, 15);
            this.lblTime.TabIndex = 4;
            this.lblTime.Text = "Time";
            // 
            // lblcompanyName3
            // 
            this.lblcompanyName3.AutoSize = true;
            this.lblcompanyName3.Font = new System.Drawing.Font("Sylfaen", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblcompanyName3.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.lblcompanyName3.Location = new System.Drawing.Point(16, 404);
            this.lblcompanyName3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblcompanyName3.Name = "lblcompanyName3";
            this.lblcompanyName3.Size = new System.Drawing.Size(101, 35);
            this.lblcompanyName3.TabIndex = 3;
            this.lblcompanyName3.Text = "System";
            // 
            // lblcompanyName2
            // 
            this.lblcompanyName2.AutoSize = true;
            this.lblcompanyName2.Font = new System.Drawing.Font("Sylfaen", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblcompanyName2.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.lblcompanyName2.Location = new System.Drawing.Point(16, 352);
            this.lblcompanyName2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblcompanyName2.Name = "lblcompanyName2";
            this.lblcompanyName2.Size = new System.Drawing.Size(256, 35);
            this.lblcompanyName2.TabIndex = 2;
            this.lblcompanyName2.Text = "Yummy Restaurant ";
            // 
            // lblcompanyName1
            // 
            this.lblcompanyName1.AutoSize = true;
            this.lblcompanyName1.Font = new System.Drawing.Font("Sylfaen", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblcompanyName1.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.lblcompanyName1.Location = new System.Drawing.Point(16, 301);
            this.lblcompanyName1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblcompanyName1.Name = "lblcompanyName1";
            this.lblcompanyName1.Size = new System.Drawing.Size(222, 35);
            this.lblcompanyName1.TabIndex = 1;
            this.lblcompanyName1.Text = "Weclocme to the";
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(81, 35);
            this.pictureBox1.Margin = new System.Windows.Forms.Padding(4, 2, 4, 2);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(225, 218);
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // timer1
            // 
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // btnChange
            // 
            this.btnChange.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.btnChange.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnChange.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnChange.ForeColor = System.Drawing.Color.Black;
            this.btnChange.Location = new System.Drawing.Point(985, 589);
            this.btnChange.Margin = new System.Windows.Forms.Padding(4, 2, 4, 2);
            this.btnChange.Name = "btnChange";
            this.btnChange.Size = new System.Drawing.Size(179, 44);
            this.btnChange.TabIndex = 8;
            this.btnChange.Text = "Change";
            this.btnChange.UseVisualStyleBackColor = false;
            this.btnChange.Click += new System.EventHandler(this.btnChange_Click);
            // 
            // btnCancel
            // 
            this.btnCancel.BackColor = System.Drawing.SystemColors.Control;
            this.btnCancel.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnCancel.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCancel.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.btnCancel.Location = new System.Drawing.Point(549, 589);
            this.btnCancel.Margin = new System.Windows.Forms.Padding(4, 2, 4, 2);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(179, 44);
            this.btnCancel.TabIndex = 25;
            this.btnCancel.Text = "Cancel";
            this.btnCancel.UseVisualStyleBackColor = false;
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // txtNewPasswd
            // 
            this.txtNewPasswd.Location = new System.Drawing.Point(827, 345);
            this.txtNewPasswd.Margin = new System.Windows.Forms.Padding(4, 2, 4, 2);
            this.txtNewPasswd.Name = "txtNewPasswd";
            this.txtNewPasswd.Size = new System.Drawing.Size(405, 25);
            this.txtNewPasswd.TabIndex = 27;
            // 
            // txtConfirmNewPasswd
            // 
            this.txtConfirmNewPasswd.Location = new System.Drawing.Point(827, 425);
            this.txtConfirmNewPasswd.Margin = new System.Windows.Forms.Padding(4, 2, 4, 2);
            this.txtConfirmNewPasswd.Name = "txtConfirmNewPasswd";
            this.txtConfirmNewPasswd.Size = new System.Drawing.Size(405, 25);
            this.txtConfirmNewPasswd.TabIndex = 31;
            // 
            // txtuser
            // 
            this.txtuser.Location = new System.Drawing.Point(827, 195);
            this.txtuser.Margin = new System.Windows.Forms.Padding(4, 2, 4, 2);
            this.txtuser.Name = "txtuser";
            this.txtuser.Size = new System.Drawing.Size(405, 25);
            this.txtuser.TabIndex = 32;
            // 
            // txtOldPasswd
            // 
            this.txtOldPasswd.Location = new System.Drawing.Point(827, 266);
            this.txtOldPasswd.Margin = new System.Windows.Forms.Padding(4, 2, 4, 2);
            this.txtOldPasswd.Name = "txtOldPasswd";
            this.txtOldPasswd.Size = new System.Drawing.Size(405, 25);
            this.txtOldPasswd.TabIndex = 33;
            // 
            // lblRestaurant
            // 
            this.lblRestaurant.AutoSize = true;
            this.lblRestaurant.Font = new System.Drawing.Font("Arial", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblRestaurant.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.lblRestaurant.Location = new System.Drawing.Point(735, 52);
            this.lblRestaurant.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblRestaurant.Name = "lblRestaurant";
            this.lblRestaurant.Size = new System.Drawing.Size(235, 32);
            this.lblRestaurant.TabIndex = 104;
            this.lblRestaurant.Text = "Change Password";
            // 
            // lblUserName
            // 
            this.lblUserName.AutoSize = true;
            this.lblUserName.Font = new System.Drawing.Font("Arial", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblUserName.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.lblUserName.Location = new System.Drawing.Point(485, 195);
            this.lblUserName.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblUserName.Name = "lblUserName";
            this.lblUserName.Size = new System.Drawing.Size(150, 32);
            this.lblUserName.TabIndex = 141;
            this.lblUserName.Text = "User Name";
            // 
            // lblOldPasswd
            // 
            this.lblOldPasswd.AutoSize = true;
            this.lblOldPasswd.Font = new System.Drawing.Font("Arial", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblOldPasswd.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.lblOldPasswd.Location = new System.Drawing.Point(485, 266);
            this.lblOldPasswd.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblOldPasswd.Name = "lblOldPasswd";
            this.lblOldPasswd.Size = new System.Drawing.Size(182, 32);
            this.lblOldPasswd.TabIndex = 142;
            this.lblOldPasswd.Text = "Old Password";
            // 
            // lblNewPasswd
            // 
            this.lblNewPasswd.AutoSize = true;
            this.lblNewPasswd.Font = new System.Drawing.Font("Arial", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNewPasswd.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.lblNewPasswd.Location = new System.Drawing.Point(485, 345);
            this.lblNewPasswd.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblNewPasswd.Name = "lblNewPasswd";
            this.lblNewPasswd.Size = new System.Drawing.Size(193, 32);
            this.lblNewPasswd.TabIndex = 143;
            this.lblNewPasswd.Text = "New Password";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Arial", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label3.Location = new System.Drawing.Point(485, 425);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(0, 32);
            this.label3.TabIndex = 144;
            // 
            // lblConfirmNewPasswd
            // 
            this.lblConfirmNewPasswd.AutoSize = true;
            this.lblConfirmNewPasswd.Font = new System.Drawing.Font("Arial", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblConfirmNewPasswd.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.lblConfirmNewPasswd.Location = new System.Drawing.Point(485, 428);
            this.lblConfirmNewPasswd.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblConfirmNewPasswd.Name = "lblConfirmNewPasswd";
            this.lblConfirmNewPasswd.Size = new System.Drawing.Size(295, 32);
            this.lblConfirmNewPasswd.TabIndex = 145;
            this.lblConfirmNewPasswd.Text = "Confirm New Password";
            // 
            // FrmChangePW
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1428, 744);
            this.Controls.Add(this.lblConfirmNewPasswd);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.lblNewPasswd);
            this.Controls.Add(this.lblOldPasswd);
            this.Controls.Add(this.lblUserName);
            this.Controls.Add(this.lblRestaurant);
            this.Controls.Add(this.txtOldPasswd);
            this.Controls.Add(this.txtuser);
            this.Controls.Add(this.txtConfirmNewPasswd);
            this.Controls.Add(this.txtNewPasswd);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnChange);
            this.Controls.Add(this.panel1);
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "FrmChangePW";
            this.Text = "Change Password";
            this.Load += new System.EventHandler(this.FrmChangePW_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label lblTime;
        private System.Windows.Forms.Label lblcompanyName3;
        private System.Windows.Forms.Label lblcompanyName2;
        private System.Windows.Forms.Label lblcompanyName1;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.Button btnChange;
        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.TextBox txtNewPasswd;
        private System.Windows.Forms.TextBox txtConfirmNewPasswd;
        private System.Windows.Forms.TextBox txtuser;
        private System.Windows.Forms.TextBox txtOldPasswd;
        private System.Windows.Forms.Label lblRestaurant;
        private System.Windows.Forms.Label lblUserName;
        private System.Windows.Forms.Label lblOldPasswd;
        private System.Windows.Forms.Label lblNewPasswd;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label lblConfirmNewPasswd;
    }
}