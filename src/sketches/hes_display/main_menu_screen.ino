// **************************************************
// Project: HAJDU Energo Smart - Display Board
// Main menu screen
// Author:  Norbert Laszlo
// Date:    2017
//
// This source code represents a class that implements the main menu screen.
// **************************************************

#define MM_ITEM_COUNT 5

//
//  Main menu screen imeplementer class
//
class MainMenuScreen : public Screen
{
  public:
    MainMenuScreen(REGISTERMAP* pregmap) : Screen(pregmap)
    {
      pListBox = new ListBox(0, 90, TFT_RESX, TFT_RESY, MM_list, MM_ITEM_COUNT);
    }

    ~MainMenuScreen()
    {
      if (pListBox != NULL)
        delete pListBox;
    }

  private:
    ListBox* pListBox = NULL;

  public:
    void Show()
    {
      // Draw menu header
      CommonUI::DrawPageCaption(str_MM_MainMenu);
      
      CommonUI::SetColor(BGR_COLOR);
      gTFT.fillRect(0, 40, TFT_RESX - 1, TFT_RESY - 1);

      pListBox->Show();
    }

    EventResult ProcessEvent(Event e)
    {
      switch (e)
      {
        case RotLeft:
          if (pListBox->SelectedIndex > 0)
          {
            pListBox->SelectItem(pListBox->SelectedIndex - 1);
            return Action;
          }
          break;
          
        case RotRight:
          if (pListBox->SelectedIndex < MM_ITEM_COUNT - 1)
          {
            pListBox->SelectItem(pListBox->SelectedIndex + 1);
            return Action;
          }
          break;
        
        case Select:
          pRegMap->EventResultData = pListBox->SelectedIndex;
          return ShowScreen;
          
        case Back:
          pRegMap->EventResultData = SCREEN_PROGRAMSELECTOR;
          return ShowScreen;
      }

      return NoAction;
    }
};

//
// Returns a main menu screen object instance.
// pregmap:  Pointer of the central register map.
//
Screen* GetMainMenuScreen(REGISTERMAP* pregmap)
{
  return new MainMenuScreen(pregmap);
}

