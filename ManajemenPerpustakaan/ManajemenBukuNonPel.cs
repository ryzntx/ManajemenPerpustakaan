﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ManajemenPerpustakaan
{
    public partial class ManajemenBukuNonPel : Form
    {
        public ManajemenBukuNonPel()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            TambahBuku tambahBuku = new TambahBuku();
            tambahBuku.Show();
        }
    }
}
