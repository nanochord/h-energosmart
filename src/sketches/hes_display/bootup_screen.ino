// **************************************************
// Project: HAJDU Energo Smart - Display Board
// Bootup screen
// Author:  Norbert Laszlo
// Date:    2017
//
// This source code represents a class that implements the bootup screen of the washmachine.
// **************************************************

//
//  Washing screen imeplementer class
//
class BootupScreen : public Screen
{
  public:
    BootupScreen(REGISTERMAP* pregmap) : Screen(pregmap)
    {
    }

  public:
    const byte text_size = 4;
    uint16_t x = (TFT_RESX - 18 * 6 * text_size) / 2;
    uint16_t y = (TFT_RESY - 8 * text_size) / 2;
    byte cstep = 0;
  
    byte GetEventMask()
    {
      return EVTMASK_SIGNAL2 | EVTMASK_ALLKEYS;
    }
  
    void Show()
    {     
      cli();

      gTFT.fillScreen(BGR_COLOR);

      CommonUI::SetColor(ELGREEN_COLOR);
      CommonUI::SetBackColor(BGR_COLOR);
      gTFT.setTextSize(text_size);
      gTFT.print("HAJDU Energo Smart", x, y);

      sei();
    }

    EventResult ProcessEvent(Event e)
    {
      if (e == Signal500)
      {
        cstep++;
        if (cstep > 10)
        {
          pRegMap->EventResultData = SCREEN_PROGRAMSELECTOR;
          return ShowScreen;
        }
      }
      else
      {
          pRegMap->EventResultData = SCREEN_PROGRAMSELECTOR;
          return ShowScreen;
      }
    }
};

//
// Returns a bootup screen object instance.
// pregmap:  Pointer of the central register map.
//
Screen* GetBootupScreen(REGISTERMAP* pregmap)
{
  return new BootupScreen(pregmap);
}

