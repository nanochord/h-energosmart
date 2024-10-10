using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ImageToSource
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();

            this.Shape = DrawShape.None;
        }

        #region Types

        enum CodeFormat
        {
            CppArduinoMCUFRIEND_RGB565,
            CppArduinoLNVectorIcon8Bit,
        }

        enum DrawShape
        {
            None,
            Spin
        }

        #endregion

        #region Fields

        string ImageFileName { get; set; }

        DrawShape Shape { get; set; }

        VectorImage VImage { get; set; }

        #endregion

        #region Methods

        string GetNameAsIdentifierName(string name)
        {
            return name.Replace(" ", "_").Replace("-", "_").Replace(".", "_");
        }

        string GenerateCode(CodeFormat fmt)
        {
            if (fmt == CodeFormat.CppArduinoMCUFRIEND_RGB565 && this.Shape != DrawShape.None)
            {
                MessageBox.Show("The selected code format does not support vector images!");
                return null;
            }

            var b = new StringBuilder();

            if (fmt == CodeFormat.CppArduinoMCUFRIEND_RGB565)
            {
                byte[] bytes = null;
                var bmp = pictureBox1.Image as Bitmap;

                // Convert image to 16bpp RGB565 format using the GDI API, and get pixel bytes from Scan0...
                using (var clone = new Bitmap(bmp.Width, bmp.Height, System.Drawing.Imaging.PixelFormat.Format16bppRgb565))
                {
                    using (Graphics gr = Graphics.FromImage(clone))
                    {
                        gr.DrawImage(bmp, new Rectangle(0, 0, clone.Width, clone.Height));
                    }


                    var bitmapData = clone.LockBits(new Rectangle(0, 0, clone.Width, clone.Height), System.Drawing.Imaging.ImageLockMode.ReadOnly, System.Drawing.Imaging.PixelFormat.Format16bppRgb565);

                    var length = bitmapData.Stride * bitmapData.Height;
                    bytes = new byte[length];

                    // Copy bitmap to byte[]
                    Marshal.Copy(bitmapData.Scan0, bytes, 0, length);
                    clone.UnlockBits(bitmapData);
                }

                var name = System.IO.Path.GetFileNameWithoutExtension(this.ImageFileName);
                name = GetNameAsIdentifierName(name);

                b.AppendLine("// Binary format:     Arduino MCUFRIEND TFT LCD Library, RGB565");
                b.AppendFormat("// File name:         {0}\r\n", System.IO.Path.GetFileName(this.ImageFileName));
                b.AppendFormat("// Memory occupation: {0} bytes\r\n", bytes.Length);

                b.AppendFormat("const uint16_t {0} [] ", name);
                if (fmt == CodeFormat.CppArduinoMCUFRIEND_RGB565)
                    b.Append("PROGMEM ");

                b.Append("= {");

                for (int i = 0; i < bytes.Length; i += 2)
                {
                    if ((i % 32) == 0)
                    {
                        b.AppendLine();
                        b.Append("    ");
                    }

                    b.AppendFormat("0x{0:x4}, ", BitConverter.ToInt16(bytes, i));
                }

                b.AppendLine();
                b.AppendLine("};");
            }

            else if (fmt == CodeFormat.CppArduinoLNVectorIcon8Bit)
            {
                var bytes = this.VImage.GetBytes(VectorImage.Format.B8);

                b.AppendLine(  "// Format:     Arduino LN Vector Icon");
                b.AppendFormat("// Name:       {0}\r\n", tssl_FileName.Text);
                b.AppendFormat("// Memory occupation: {0} bytes\r\n", bytes.Length);

                b.AppendFormat("const uint8_t {0} [] PROGMEM ", GetNameAsIdentifierName(tssl_FileName.Text));
                b.Append("= {");

                for (int i = 0; i < bytes.Length; i++)
                {
                    if ((i % 16) == 0)
                    {
                        b.AppendLine();
                        b.Append("    ");
                    }

                    b.AppendFormat("0x{0:x2}, ", bytes[i]);
                }

                b.AppendLine();
                b.AppendLine("};");
            }

            return b.ToString();
        }

        void ShowImageInformation(DrawShape shape, string name, Image img)
        {
            int w = 0, h = 0;

            tssl_FileName.Text = name;
            tssl_Resolution.Visible = true;
            tssl_PixFmt.Visible = true;

            if (shape == DrawShape.None)
            {
                this.ImageFileName = name;
                this.Shape = DrawShape.None;
                tssl_PixFmt.Text = img.PixelFormat.ToString();
                w = img.Width;
                h = img.Height;
                pictureBox1.Image = img;
            }
            else
            {
                this.ImageFileName = null;
                this.Shape = shape;
                tssl_PixFmt.Text = "Vector image";
                pictureBox1.Image = null;

                var size = this.VImage.GetSize();
                w = size.Width;
                h = size.Height;
            }

            tssl_Resolution.Text = string.Format("{0} x {1}", w, h);
        }

        #endregion


        #region Event handlers

        private void openToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (openFileDialog.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                var img = Image.FromFile(openFileDialog.FileName);

                ShowImageInformation(DrawShape.None, openFileDialog.FileName, img);
            }
        }

        private void pictureBox1_Paint(object sender, PaintEventArgs e)
        {
            if (this.Shape == DrawShape.Spin)
            {
                int centerX = e.ClipRectangle.X + e.ClipRectangle.Width / 2;
                int centerY = e.ClipRectangle.Y + e.ClipRectangle.Height / 2;

                var colorPalette = new List<Pen>();

                try
                {
                    if (this.VImage.ColorPalette.Count == 0)
                        colorPalette.Add(new Pen(Color.Black));
                    else
                    {
                        foreach (var c in this.VImage.ColorPalette)
                            colorPalette.Add(new Pen(c));
                    }

                    foreach (var gp in this.VImage.Items)
                    {
                        if (gp is ViLine)
                        {
                            var line = gp as ViLine;
                            var points = new Point[line.Items.Count];
                            for (int i = 0; i < points.Length; i++)
                                points[i] = new Point(line.Items[i].X + centerX, line.Items[i].Y + centerY);

                            Pen pen = colorPalette[line.ColorIdx];
                            e.Graphics.DrawLines(pen, points);
                        }
                    }
                }
                finally
                {
                    foreach (var p in colorPalette)
                        p.Dispose();
                    colorPalette.Clear();
                    colorPalette = null;
                }
            }
        }

        private void tsmi_DrawSpin_Click(object sender, EventArgs e)
        {
            var maxAngle = Math.PI * 2 * 2.5;       // 2.5 spin
            var stepAngle = Math.PI / 9;            // 20 degree
            double R = 3;

            List<Point> points = new List<Point>();

            for (double a = 0; a < maxAngle; a += stepAngle)
            {
                points.Add(new Point((int)(R * Math.Cos(a)), (int)(R * Math.Sin(a))));
                R += 0.4;
            }

            this.VImage = new VectorImage();
            this.VImage.Items.Add(new ViLine(points.Select(i => new ViPixel() { X = i.X, Y = i.Y })));

            pictureBox1.Refresh();

            ShowImageInformation(DrawShape.Spin, "Spin", null);
        }

        #endregion

        private void tsb_Generate_Click(object sender, EventArgs e)
        {
            if (tscb_SrcFmt.SelectedIndex == -1)
            {
                MessageBox.Show("Select code format first!");
                return;
            }

            var fmt = (CodeFormat)tscb_SrcFmt.SelectedIndex;
            var name = System.IO.Path.GetFileNameWithoutExtension(this.ImageFileName);
            txbSrc.Text = GenerateCode(fmt);
        }
    }
}
