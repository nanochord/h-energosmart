// **************************************************
// Project: HAJDU Energo Smart - Display Board
// Common UI builder functions.
// Author:  Norbert Laszlo
// Date:    2017
// **************************************************


//
//  Base class for X,Y coordinate based widgets.
//
class WidgetBase
{
  public:
    WidgetBase(uint16_t x, uint16_t y)
    {
      X = x;
      Y = y;
    }

    uint16_t X;
    uint16_t Y;

    virtual void Show()
    {
      
    }
};

class ColorWidgetBase : public WidgetBase
{
  public:
    ColorWidgetBase(uint16_t x, uint16_t y, uint16_t foreColor, uint16_t backColor) : WidgetBase(x, y)
    {
      ForeColor = foreColor;
      BackColor = backColor;
    }

    uint16_t ForeColor;
    uint16_t BackColor;
};


#define SS_A 0x01
#define SS_B 0x02
#define SS_C 0x04
#define SS_D 0x08
#define SS_E 0x10
#define SS_F 0x20
#define SS_G 0x40

class SevenSegmentNumber : public ColorWidgetBase
{
  public:
    SevenSegmentNumber(uint16_t x, uint16_t y, uint16_t foreColor, uint16_t backColor, byte unitSize) : ColorWidgetBase(x, y, foreColor, backColor)
    {
      UnitSize = unitSize;
    }

    void ShowDigit(byte digit)
    {
      if (digit == 255)
      {
        gTFT.fillRect(X, Y, X + 6 * UnitSize - 1, Y + 13 * UnitSize - 1);
        return;
      }
      
      byte shape = 0;

      switch (digit)
      {
        case 0:
          shape = SS_A | SS_B | SS_C | SS_D | SS_E | SS_F;
          break;
        case 1:
          shape = SS_B | SS_C;
          break;
        case 2:
          shape = SS_A | SS_B | SS_D | SS_E | SS_G;
          break;
        case 3:
          shape = SS_A | SS_B | SS_C | SS_D | SS_G;
          break;
        case 4:
          shape = SS_B | SS_C | SS_F | SS_G;
          break;
        case 5:
          shape = SS_A | SS_C | SS_D | SS_F | SS_G;
          break;
        case 6:
          shape = SS_A | SS_C | SS_D | SS_E | SS_F | SS_G;
          break;
        case 7:
          shape = SS_A | SS_B | SS_C;
          break;
        case 8:
          shape = SS_A | SS_B | SS_C | SS_D | SS_E | SS_F | SS_G;
          break;
        case 9:
          shape = SS_A | SS_B | SS_C | SS_D | SS_F | SS_G;
          break;
        case 10:
          shape = SS_A | SS_B | SS_C | SS_E | SS_F | SS_G;
          break;
        case 11:
          shape = SS_C | SS_D | SS_E | SS_F | SS_G;
          break;
        case 12:
          shape = SS_A | SS_D | SS_E | SS_F;
          break;
        case 13:
          shape = SS_B | SS_C | SS_D | SS_E | SS_G;
          break;
        case 14:
          shape = SS_A | SS_D | SS_E | SS_F | SS_G;
          break;
        case 15:
          shape = SS_A | SS_E | SS_F | SS_G;
          break;
        default:
          shape = SS_G;
      }

      CommonUI::SetColor(ISFLAGSET(shape, SS_A) ? ForeColor : BackColor);
      drawHSegment(X + UnitSize, Y);

      CommonUI::SetColor(ISFLAGSET(shape, SS_B) ? ForeColor : BackColor);
      drawVSegment(X + 5 * UnitSize, Y + UnitSize);

      CommonUI::SetColor(ISFLAGSET(shape, SS_C) ? ForeColor : BackColor);
      drawVSegment(X + 5 * UnitSize, Y + 7 * UnitSize);

      CommonUI::SetColor(ISFLAGSET(shape, SS_D) ? ForeColor : BackColor);
      drawHSegment(X + UnitSize, Y + 12 * UnitSize);

      CommonUI::SetColor(ISFLAGSET(shape, SS_E) ? ForeColor : BackColor);
      drawVSegment(X, Y + 7 * UnitSize);

      CommonUI::SetColor(ISFLAGSET(shape, SS_F) ? ForeColor : BackColor);
      drawVSegment(X, Y + UnitSize);

      CommonUI::SetColor(ISFLAGSET(shape, SS_G) ? ForeColor : BackColor);
      drawHSegment(X + UnitSize, Y + 6 * UnitSize);
    }

    void ShowDoubleDot()
    {
      CommonUI::SetColor(ForeColor);
      gTFT.fillRect(X, Y + 4 * UnitSize, X + UnitSize - 1, Y + 5 * UnitSize - 1);
      gTFT.fillRect(X, Y + 8 * UnitSize, X + UnitSize - 1, Y + 9 * UnitSize - 1);
    }

    byte UnitSize = 4;

  protected:
    
  
    void drawVSegment(uint16_t x, uint16_t y)
    {
      gTFT.fillRect(x, y, x + UnitSize - 1, y + (UnitSize * 5) - 1);
    }

    void drawHSegment(uint16_t x, uint16_t y)
    {
      gTFT.fillRect(x, y, x + (UnitSize * 4) - 1, y + UnitSize - 1);
    }
};


//
//  Circular progress bar widget.
//
class CircularProgressBar : public ColorWidgetBase
{
  public:
    CircularProgressBar(uint16_t x, uint16_t y, uint16_t radius, byte thickness) : ColorWidgetBase(x, y, BGR_COLOR, BGR2_COLOR)
    {
      R = radius;
      Thickness = thickness;
    }

    uint16_t NumberColor = 0;
    uint16_t NumberBackColor = GRAY_COLOR;
    uint16_t R;
    byte Thickness;
    byte UnitSize = 4;

    virtual void Show()
    {
      CommonUI::SetColor(ForeColor);
      gTFT.fillCircle(X, Y, R);

      CommonUI::SetColor(BackColor);
      gTFT.fillCircle(X, Y, R - Thickness);
    }

    void Show(byte val)
    {
      Show();
      SetValue(val);
    }

    void SetValue(byte val)
    {
      byte hours = val / 60;
      byte mins = val % 60;
      uint16_t x0 = (3 * (UnitSize * 8 + UnitSize) - 2 * UnitSize) / 2;

      SevenSegmentNumber ssn(X - x0, Y - (UnitSize * 13) / 2, NumberColor, NumberBackColor, UnitSize);

      // display hourse digit and double dot sign between hourse and mins
      //ssn.ForeColor = hours == 0 ? GRAY_COLOR : NumberColor;
      ssn.ForeColor = NumberColor;
      //if (hours == 0)
        //hours = 8;

      ssn.X = X - x0;
      ssn.ShowDigit(hours % 10);
      ssn.X += (8 * UnitSize);
      ssn.ShowDoubleDot();

      ssn.ForeColor = NumberColor;
      ssn.X += (3 * UnitSize);
      ssn.ShowDigit(mins / 10);
      ssn.X += (8 * UnitSize);
      ssn.ShowDigit(mins % 10);
    }
};

//
//  List box widget.
//
class ListBox : WidgetBase
{
  public:
    ListBox(uint16_t x, uint16_t y, uint16_t w, uint16_t h, const char* items[], byte itemCount) : WidgetBase(x, y)
    {
      W = w;
      H = h;
      Items = items;
      Count = itemCount;

      SelectedIndex = 0;
      _cols = (w - 16) / 12;
      _rows = (h - 20) / 32;
    }

    enum DrawMode
    {
      Normal,
      HorizontalTabStyle,
    };

    DrawMode Mode = Normal;
    uint16_t W;
    uint16_t H;
    char** Items;
    byte Count;
    byte SelectedIndex;

    virtual void Show()
    {
      gTFT.setTextSize(2);
      CommonUI::SetColor(BGR_COLOR);
      gTFT.fillRect(X, Y, X + W - 1, Y + H - 1);

      if (Mode == HorizontalTabStyle)
        gTFT.drawFastVLine(X + W - 1, Y, H, 0);
   
      if (Items !=  NULL && Count > 0)
      {
        uint16_t x = X + 16;
        uint16_t y = Y + 20;
           
        byte pageIdx = 0;
        if (SelectedIndex != NOSELECTION)
          pageIdx = SelectedIndex / _rows;
    
        byte startIdx = pageIdx * _rows;
        byte cnt = _rows;
        if (startIdx + cnt > Count)
          cnt = Count - startIdx;

        // Max. 36 chars length strings are supported!
        char buffer[37];
         
        for (byte i = 0; i < cnt; i++)
        {
          int idx = startIdx + i;
    
          uint16_t txtY = y + (i * 32);
          
          if (idx == SelectedIndex)
          {
            CommonUI::SetColor(ELGREEN_COLOR);
            gTFT.fillRect(X, txtY - 11, X + W - 1, txtY + 24);

            CommonUI::SetColor(BGR_COLOR);
            CommonUI::SetBackColor(ELGREEN_COLOR);
    
            gTFT.drawFastHLine(X, txtY - 12, W, 0);
            gTFT.drawFastHLine(X, txtY + 25, W, 0);
          }
          else
          {
            CommonUI::SetColor(0);
            CommonUI::SetBackColor(BGR_COLOR);
          }

          strcpy_P(buffer, (char*)pgm_read_word(&(Items[idx])));
          gTFT.print(buffer, x, txtY);
        }
    
        x = X + W / 2 - 7;
    
        if (startIdx + cnt < Count)
        {
          uint16_t y = Y + H - 10;
          gTFT.fillTriangle(x, y, x + 14, y, x + 7, y + 7, 0);
        }
        if (startIdx > 0)
        {
          uint16_t y = Y + 1 + 7;
          gTFT.fillTriangle(x, y, x + 14, y, x + 7, Y + 1, 0);
        }
      }
    }

    //
    //  Selects the specified index of item in the list box.
    //
    void SelectItem(byte idx)
    {
      if (idx != NOSELECTION && idx >= Count)
        idx = Count - 1;
      
      byte pageIdx = 0;
      if (SelectedIndex != NOSELECTION)
        pageIdx = SelectedIndex / _rows;

      byte desiredPageIdx = 0;
      if (idx != NOSELECTION)
        desiredPageIdx = idx / _rows;

      if (pageIdx != desiredPageIdx)
      {
        // The current and desired selected items are on different pages, thus it needs to redraw the entire list box content.
        SelectedIndex = idx;
        Show();
      }
      else
      {
        // Max. 36 chars length strings are supported!
        char buffer[37];
        
        // The current and desired selected items are on the same page, thus a quicker redraw can be made.
        uint16_t x = X + 16;
        uint16_t txtY;

        gTFT.setTextSize(2);

        // Redraw as unselcted the currently selected line
        if (SelectedIndex != NOSELECTION)
        {
          txtY = Y + 20 + ((SelectedIndex % _rows) * 32);
  
          CommonUI::SetColor(BGR_COLOR);
          gTFT.fillRect(X, txtY - 12, X + W - 1, txtY + 25);
          
          CommonUI::SetColor(0);
          CommonUI::SetBackColor(BGR_COLOR);
  
          strcpy_P(buffer, (char*)pgm_read_word(&(Items[SelectedIndex])));
          gTFT.print(buffer, x, txtY);
        }

        // Redraw as selected the desired selected row.
        if (idx != NOSELECTION)
        {
          if (Mode == HorizontalTabStyle)
            gTFT.drawFastVLine(X + W - 1, Y, H, 0);
          
          txtY = Y + 20 + ((idx % _rows) * 32);
          
          CommonUI::SetColor(ELGREEN_COLOR);
          gTFT.fillRect(X, txtY - 11, X + W - 1, txtY + 24);

          CommonUI::SetColor(BGR_COLOR);
          CommonUI::SetBackColor(ELGREEN_COLOR);
  
          gTFT.drawFastHLine(X, txtY - 12, W, 0);
          gTFT.drawFastHLine(X, txtY + 25, W, 0);
  
          strcpy_P(buffer, (char*)pgm_read_word(&(Items[idx])));
          gTFT.print(buffer, x, txtY);
        }

        SelectedIndex = idx;
      }
    }

  protected:
    byte _rows;
    byte _cols;    
};


//
//  Icon widget
//
class WashIcon : public ColorWidgetBase
{
  public:
    WashIcon(uint16_t x, uint16_t y, uint16_t foreColor) : ColorWidgetBase(x, y, foreColor, 0)
    {
    }

    WashIcon(uint16_t x, uint16_t y, uint16_t foreColor, uint16_t backColor) : ColorWidgetBase(x, y, foreColor, backColor)
    {
    }

    virtual void Show()
    {
      CommonUI::SetColor(ForeColor);
      
      gTFT.drawLine(X, Y, X + 6, Y + 32);
      gTFT.drawLine(X + 1, Y, X + 7, Y + 32);

      gTFT.drawLine(X + 55, Y, X + 49, Y + 32);
      gTFT.drawLine(X + 54, Y, X + 48, Y + 32);

      gTFT.drawFastHLine(X + 8, Y + 32, 40, ForeColor);
      gTFT.drawFastHLine(X + 8, Y + 31, 40, ForeColor);

      gTFT.drawFastHLine(X + 4, Y + 8, 48, ForeColor);
    }
};


class TxtWashIcon : public WashIcon
{
  public:
    TxtWashIcon(uint16_t x, uint16_t y, uint16_t foreColor, uint16_t backColor, const char* txt) : WashIcon(x, y, foreColor, backColor)
    {
      Text = txt;
    }

    char* Text;

    virtual void Show()
    {
      WashIcon::Show();

      CommonUI::SetBackColor(BackColor);

      gTFT.setTextSize(2);

      char buffer[4];
      if (strlen(Text) > 3)
        strncpy(buffer, Text, 3);
      else
        strcpy(buffer, Text);

      gTFT.print(buffer, X + 12 + (3 - strlen(buffer)) * 6, Y + 13);
    }
};


class TempWashIcon : public TxtWashIcon
{
  public:
    TempWashIcon(uint16_t x, uint16_t y, uint16_t foreColor, uint16_t backColor, Temperature temp) : TxtWashIcon(x, y, foreColor, backColor, NULL)
    {
      Temp = temp;
      Text = TempToStr(temp);
    }

    Temperature Temp;  

    void SetTemp(Temperature temp)
    {
      Temp = temp;
      Text = TempToStr(temp);
    }

  private:
    static char* TempToStr(Temperature temp)
    {
      switch (temp)
      {
        case Cold:
          return "--C";
        case T40C:
          return "40C";
        case T60C:
          return "60C";
        case T95C:
          return "95C";
      }
    }
};


class PreWashIcon : public TxtWashIcon
{
  public:
    PreWashIcon(uint16_t x, uint16_t y, uint16_t foreColor, uint16_t backColor) : TxtWashIcon(x, y, foreColor, backColor, "+")
    {
    }
};


class RinseIcon : public WashIcon
{
  public:
    RinseIcon(uint16_t x, uint16_t y, uint16_t foreColor) : WashIcon(x, y, foreColor, 0)
    {
    }

    virtual void Show()
    {
      WashIcon::Show();

      for (byte i = 0; i < 4; i++)
      {
        uint16_t x = X + 15 + i*8;
        gTFT.fillRect(x, Y + 16, x + 3, Y + 19);
        if (i < 3)
          gTFT.fillRect(x + 4, Y + 20, x + 7, Y + 23);
      }
    }
};

class DrainIcon : public WashIcon
{
  public:
    DrainIcon(uint16_t x, uint16_t y, uint16_t foreColor, uint16_t backColor) : WashIcon(x, y, foreColor, backColor)
    {
    }
  
    virtual void Show()
    {
      WashIcon::Show();

      gTFT.drawFastHLine(X + 20, Y + 32, 16, BackColor);
      gTFT.drawFastHLine(X + 20, Y + 31, 16, BackColor);
      gTFT.drawFastVLine(X + 28, Y + 16, 16, ForeColor);
      gTFT.drawFastVLine(X + 29, Y + 16, 16, ForeColor);
      CommonUI::SetColor(ForeColor);
      gTFT.drawLine(X + 28, Y + 32, X + 22, Y + 26);
      gTFT.drawLine(X + 28, Y + 31, X + 22, Y + 25);
      gTFT.drawLine(X + 29, Y + 32, X + 35, Y + 26);
      gTFT.drawLine(X + 29, Y + 31, X + 35, Y + 25);
    }
};

class EIcon : public ColorWidgetBase
{
  public:
    EIcon(uint16_t x, uint16_t y, uint16_t foreColor, uint16_t backColor) : ColorWidgetBase(x, y, foreColor, backColor)
    {
    }

    virtual void Show()
    {
      CommonUI::SetColor(ForeColor);
      gTFT.fillRoundRect(X, Y, X + 23, Y + 23);

      gTFT.setTextSize(2);
      CommonUI::SetColor(BackColor);
      CommonUI::SetBackColor(ForeColor);
      gTFT.print("E", X + 7, Y + 5);
    }
};

class BioIcon : public ColorWidgetBase
{
  public:
    BioIcon(uint16_t x, uint16_t y, uint16_t foreColor, uint16_t backColor) : ColorWidgetBase(x, y, foreColor, backColor)
    {
    }

    virtual void Show()
    {
      CommonUI::SetColor(ForeColor);
      gTFT.fillRoundRect(X, Y, X + 45, Y + 23);

      gTFT.setTextSize(2);
      CommonUI::SetColor(BackColor);
      CommonUI::SetBackColor(ForeColor);
      gTFT.print("BIO", X + 7, Y + 5);
    }
};

class HalfLoadIcon : public ColorWidgetBase
{
  public:
    HalfLoadIcon(uint16_t x, uint16_t y, uint16_t foreColor, uint16_t backColor) : ColorWidgetBase(x, y, foreColor, backColor)
    {
    }

    virtual void Show()
    {
      CommonUI::SetColor(ForeColor);
      gTFT.fillRoundRect(X, Y, X + 45, Y + 23);

      gTFT.setTextSize(2);
      CommonUI::SetColor(BackColor);
      CommonUI::SetBackColor(ForeColor);
      gTFT.print("1/2", X + 7, Y + 5);
    }
};


class VectorIcon : public WidgetBase
{
  public:
    VectorIcon(uint16_t x, uint16_t y, const uint8_t* data) : WidgetBase(x, y)
    {
      Data = data;
    }

    uint8_t* Data;

    virtual void Show()
    {
       uint8_t* p = Data;
       byte b = pgm_read_byte(p); // fmt magic
       p++;
       
       if ((b & 0xf0) != 0x10)
        return;                   // format not supported

       // read color palette
       byte color_palette_n = b & 0x0f;
       byte singleColor = color_palette_n == 0;

       uint16_t color_palette[color_palette_n];
       
       for (byte i = 0; i < color_palette_n; i++)
       {
         color_palette[i] = pgm_read_word(p);
         p += 2;
       }

       uint16_t gfxprimCount = pgm_read_word(p);
       p += 2;

       byte x, y, j, k;

       for (uint16_t i = 0; i < gfxprimCount; i++)
       {
         b = pgm_read_byte(p);
         p++;

         if (!singleColor)
          CommonUI::SetColor(color_palette[b & 0x0f]);

         b &= 0xf0;

         if (b == 0x00)
         {
           // Pixel
           x = pgm_read_byte(p);
           p++;
           y = pgm_read_byte(p);
           p++;

           gTFT.drawPixel(X + x, Y + y);
         }
         else if (b == 0x10)
         {
            // Line
            b = pgm_read_byte(p);
            p++;

            x = pgm_read_byte(p);
            p++;
            y = pgm_read_byte(p);
            p++;

            for (byte i = 1; i < b; i++)
            {
              j = pgm_read_byte(p);
              p++;
              k = pgm_read_byte(p);
              p++;

              gTFT.drawLine(X + x, Y + y, X + j, Y + k);

              x = j;
              y = k;
            }
         }
         else if (b == 0x20)
         {
            // Rectangle
         }
         else if (b == 0x30)
         {
            // Fill Rectangle
         }
         else if (b == 0x40)
         {
            // Circle
         }
         else if (b == 0x50)
         {
            // Fill Circle
         }
         else if (b == 0x60)
         {
            // Round Rectangle
         }
         else if (b == 0x70)
         {
            // Fill Round Rectangle
         }
       }
    }
};

class LockIcon : public ColorWidgetBase
{
  public:
    LockIcon(uint16_t x, uint16_t y, uint16_t foreColor, uint16_t backColor) : ColorWidgetBase(x, y, foreColor, backColor)
    {     
    }

    void Show()
    {
      CommonUI::SetColor(ForeColor);
      gTFT.fillRoundRect(X, Y + 12, X + 24, Y + 30);
      gTFT.drawCircle(X + 12, Y + 12, 12);
      gTFT.drawCircle(X + 12, Y + 12, 11);

      gTFT.drawFastHLine(X, Y + 12, 24, ForeColor);
      gTFT.drawFastVLine(X + 12, Y + 16, 8, BackColor);
    }
};

class ThermometerIcon : public ColorWidgetBase
{
  public:
    ThermometerIcon(uint16_t x, uint16_t y, uint16_t foreColor, uint16_t backColor) : ColorWidgetBase(x, y, foreColor, backColor)
    {
    }

    void Show()
    {
      // draw outer lines of thermometer
      CommonUI::SetColor(ForeColor);
      gTFT.fillCircle(X + 10, Y + 45, 12);
      gTFT.fillRoundRect(X + 3, Y, X + 16, Y + 37);

      // draw degree signs and values
      gTFT.drawFastHLine(X + 19, Y + 10, 5, ForeColor);
      gTFT.drawFastHLine(X + 19, Y + 21, 5, ForeColor);
      gTFT.drawFastHLine(X + 19, Y + 32, 5, ForeColor);
      gTFT.drawFastVLine(X + 18, Y + 10, 23, ForeColor);

      gTFT.setTextSize(1);
      CommonUI::SetBackColor(BackColor);
      gTFT.print("40", X + 26, Y + 29);
      gTFT.print("60", X + 26, Y + 18);
      gTFT.print("95", X + 26, Y + 7);

      // draw thermometer inside color
      CommonUI::SetColor(BackColor);
      gTFT.fillCircle(X + 10, Y + 45, 10);
      gTFT.fillRoundRect(X + 5, Y + 2, X + 14, Y + 40);

      // Display initial temp. level
      SetTemp(Cold);
    }

    void SetTemp(Temperature temp)
    {
      uint16_t turnY;
      
      switch (temp)
      {
        case Cold:
          turnY = Y + 40;
          break;
        case T40C:
          turnY = Y + 32;
          break;
        case T60C:
          turnY = Y + 21;
          break;
        case T95C:
          turnY = Y + 10;
          break;
        case High:
          turnY = 0;
          break;
      }
      
      uint16_t x = X + 7;
      uint16_t minY = Y + 4;
      uint16_t color = temp == High ? LOCK_COLOR : TCOLD_COLOR;
      byte r = 0, g = 148, b = 255;

      byte y = Y + 39;
      for (; y > minY; y--)
      {
        if (y < turnY)
        {
          gTFT.drawFastHLine(x, y, 6, BackColor);
        }
        else
        {
          gTFT.drawFastHLine(x, y, 6, color);
          if (temp != High)
          {
            r += 7;
            g -= 4;
            b -= 7;
            color = COLOR565(r, g, b);
          }
        }
      }

      if (temp == High)
      {
        gTFT.drawFastHLine(x + 1, y, 4, color);
      }

      CommonUI::SetColor(temp == High ? LOCK_COLOR : TCOLD_COLOR);
      gTFT.fillCircle(X + 10, Y + 45, 8);
    }
};

class WaterLevelIcon : public ColorWidgetBase
{
  public:
    WaterLevelIcon(uint16_t x, uint16_t y, uint16_t foreColor, uint16_t backColor) : ColorWidgetBase(x, y, foreColor, backColor)
    {
    }

    void Show()
    {
      // draw outer lines of thermometer
      CommonUI::SetColor(ForeColor);
      gTFT.fillRoundRect(X, Y, X + 22, Y + 57);

      // draw degree signs and values
      gTFT.drawFastHLine(X + 26, Y + 10, 5, ForeColor);
      gTFT.drawFastHLine(X + 26, Y + 28, 5, ForeColor);
      gTFT.drawFastHLine(X + 26, Y + 46, 5, ForeColor);
      gTFT.drawFastVLine(X + 25, Y + 10, 37, ForeColor);

      gTFT.setTextSize(1);
      CommonUI::SetBackColor(BackColor);
      gTFT.print("M", X + 33, Y + 7);
      gTFT.print("K", X + 33, Y + 25);
      gTFT.print("A", X + 33, Y + 41);

      // draw thermometer inside color
      CommonUI::SetColor(BackColor);
      gTFT.fillRoundRect(X + 2, Y + 2, X + 20, Y + 55);

      SetLevel(Empty);
    }

    // Possible water leveles
    enum WaterLevel { Empty, Low, Mid, High };

    void SetLevel(WaterLevel level)
    {
      uint16_t color = level >= Low ? WLEVEL_COLOR : BackColor;
      CommonUI::SetColor(color);
      gTFT.fillRect(X + 4, Y + 39, X + 18, Y + 52);
      gTFT.drawFastHLine(X + 6, Y + 53, 12, color);

      color = level >= Mid ? WLEVEL_COLOR : BackColor;
      CommonUI::SetColor(color);
      gTFT.fillRect(X + 4, Y + 21, X + 18, Y + 38);

      color = level == High ? WLEVEL_COLOR : BackColor;
      CommonUI::SetColor(color);
      gTFT.fillRect(X + 4, Y + 5, X + 18, Y + 20);
      gTFT.drawFastHLine(X + 6, Y + 4, 12, color);
    }
};


class ConsumptionWidget : ColorWidgetBase
{
  public:
    ConsumptionWidget(uint16_t x, uint16_t y, uint16_t foreColor, uint16_t backColor) : ColorWidgetBase(x, y, foreColor, backColor)
    {
    }

    void Show()
    {
      CommonUI::SetColor(BackColor);
      gTFT.fillRoundRect(X, Y, X + 128, Y + 72);

      SetWaterConsumption(0);
      SetPowerConsumption(0);
      SetCost(0);
    }

    void SetWaterConsumption(byte consumption)
    {
      CommonUI::SetColor(ForeColor);
      CommonUI::SetBackColor(BackColor);
      gTFT.setTextSize(2);

      char buffer[10];

      // Program water consumption in liters
      sprintf(buffer, "%3d.%d L", consumption / 10, consumption % 10);
      gTFT.print(buffer, X + 14, Y + 10);
    }

    void SetPowerConsumption(byte consumption)
    {
      CommonUI::SetColor(ForeColor);
      CommonUI::SetBackColor(BackColor);
      gTFT.setTextSize(2);

      char buffer[10];
      
      // Program power consumption in kWh
      sprintf(buffer, "%3d.%d kWh", consumption / 10, consumption % 10);
      gTFT.print(buffer, X + 14, Y + 30);
    }

    void SetCost(uint16_t cost)
    {
      CommonUI::SetColor(ForeColor);
      CommonUI::SetBackColor(BackColor);
      gTFT.setTextSize(2);

      char buffer[10];
      
      // Program cost in Ft
      if (cost == 0)
        strcpy(buffer, "    - Ft");
      else
        sprintf(buffer, "%5d Ft", cost);
      gTFT.print(buffer, X + 14, Y + 50);
    }
};

class IndicatorWidget : public ColorWidgetBase
{
  public:
    IndicatorWidget(uint16_t x, uint16_t y, uint16_t foreColor, uint16_t backColor, const char* text) : ColorWidgetBase(x, y, foreColor, backColor)
    {
      Text = text;
      Enabled = false;
    }

    const char* Text;
    bool Enabled;

    void Show()
    {
      uint16_t fc = Enabled ? ForeColor : GRAY_COLOR;
      
      CommonUI::SetColor(fc);
      gTFT.fillCircle(X + 10, Y + 10, 10);
      gTFT.fillRect(X + 12, Y, X + 70, Y + 20);

      char buffer[20];
      strcpy_P(buffer, Text);

      CommonUI::SetBackColor(fc);
      CommonUI::SetColor(BackColor);
      gTFT.setTextSize(1);
      gTFT.print(buffer, X + 9, Y + 7);
    }
};



