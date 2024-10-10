using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ImageToSource
{
    public class VectorImage
    {
        public VectorImage()
        {
            this.ColorPalette = new List<Color>();
            this.Items = new List<ViGfxPrimitive>();
        }

        public List<Color> ColorPalette { get; set; }
        public List<ViGfxPrimitive> Items { get; set; }

        public Point GetMinPoint()
        {
            Point p = new Point();

            foreach (var i in this.Items)
            {
                if (i is ViPixel)
                {
                    var pixel = i as ViPixel;

                    if (pixel.X < p.X)
                        p.X = pixel.X;
                    if (pixel.Y < p.Y)
                        p.Y = pixel.Y;
                }
                else if (i is ViLine)
                {
                    var line = i as ViLine;

                    var v = line.Items.Min(k => k.X);
                    if (v < p.X)
                        p.X = v;
                    v = line.Items.Min(k => k.Y);
                    if (v < p.Y)
                        p.Y = v;
                }
            }

            return p;
        }

        public Size GetSize()
        {
            Point min = new Point(0, 0);
            Point max = new Point(0, 0);

            foreach (var i in this.Items)
            {
                if (i is ViPixel)
                {
                    var pixel = i as ViPixel;
                    if (pixel.X < min.X)
                        min.X = pixel.X;
                    if (pixel.Y < min.Y)
                        min.Y = pixel.Y;
                    if (pixel.X > max.X)
                        max.X = pixel.X;
                    if (pixel.Y > max.Y)
                        max.Y = pixel.Y;
                }
                else if (i is ViLine)
                {
                    var line = i as ViLine;
                    min.X = line.Items.Min(j => j.X);
                    max.X = line.Items.Max(j => j.X);
                    min.Y = line.Items.Min(j => j.Y);
                    max.Y = line.Items.Max(j => j.Y);
                }
            }

            return new Size(max.X - min.X, max.Y - min.Y);
        }

        public enum Format
        {
            B8,
            B16
        }

        public byte[] GetBytes(Format fmt)
        {
            if (fmt == Format.B16)
                throw new NotSupportedException("16-bit format currently not supported.");

            if (this.ColorPalette.Count > 15)
                throw new NotSupportedException("Only 15 colors supported.");

            List<byte> result = new List<byte>();

            // Format magic: upper 4-bit: format ID, lower 4-bit: color palette color count, 0 = no color
            byte fmtmagic = (byte)(this.ColorPalette.Count & 0x0f);
            fmtmagic |= (fmt == Format.B8 ? (byte)0x10 : (byte)0x20);
            result.Add(fmtmagic);

            // Color palette
            int j = 0;
            foreach (var cp in this.ColorPalette)
            {
                // Max. 16 color is supported
                if (j > 15)
                    break;

                ushort color565 = (ushort)(((cp.R & 0xf8) << 8) | ((cp.G & 0xfc) << 3) | ((cp.B & 0xf8) >> 3));
                result.Add((byte)(color565 & 0xff));
                result.Add((byte)((color565 & 0xff00) >> 8));
                j++;
            }

            // Number of graph primitives
            result.Add((byte)(this.Items.Count & 0xff));
            result.Add((byte)((this.Items.Count & 0xff00) >> 8));

            var min = GetMinPoint();

            // Graphical primitives
            // 0 = pixel, 1 = line, 2 = rect, 3 = fillrect, 4 = circle, 5 = fillcircle, 6 = roundrect, 7 = fillroundrect
            foreach (var gp in this.Items)
            {
                byte gfx_color = (byte)(gp.ColorIdx & 0x0f);

                if (gp is ViPixel)
                {
                    result.Add(gfx_color);

                    if (fmt == Format.B8)
                    {
                        result.Add((byte)((gp as ViPixel).X - min.X));
                        result.Add((byte)((gp as ViPixel).Y - min.Y));
                    }

                }
                else if (gp is ViLine)
                {
                    gfx_color |= 0x10;
                    result.Add(gfx_color);

                    var line = gp as ViLine;

                    if (line.Items.Count > 255)
                        throw new NotSupportedException("Max. 255 countinuous lines supported.");

                    result.Add((byte)line.Items.Count);

                    foreach (var p in line.Items)
                    {
                        if (fmt == Format.B8)
                        {
                            result.Add((byte)(p.X - min.X));
                            result.Add((byte)(p.Y - min.Y));
                        }
                    }
                }
            }

            return result.ToArray();
        }
    }

    public class ViGfxPrimitive
    {
        public byte ColorIdx { get; set; }
    }

    public class ViPixel : ViGfxPrimitive
    {
        public int X { get; set; }
        public int Y { get; set; }
    }

    public class ViLine : ViGfxPrimitive
    {
        public ViLine()
        {
            this.Items = new List<ViPixel>();
        }

        public ViLine(IEnumerable<ViPixel> items)
        {
            this.Items = new List<ViPixel>(items);
        }

        public List<ViPixel> Items { get; set; }
    }

    public class ViRect : ViPixel
    {
        public int W { get; set; }
        public int H { get; set; }
    }

    public class ViFillRect : ViRect
    {
    }

    public class ViCircle : ViPixel
    {
        public int R { get; set; }
    }

    public class ViFillCircle : ViCircle
    {
    }

    public class ViRoundRect : ViRect
    {
        public int R { get; set; }
    }

    public class ViFillRoundRect : ViRoundRect
    {
    }
}
