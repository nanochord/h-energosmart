// **************************************************
// Project: HAJDU Energo Smart - Display Board
// Program selector screen
// Author:  Norbert Laszlo
// Date:    2017
//
// This source code represents a class that implements the program selector screen.
// **************************************************


#define DOES_OPT_DIFFS(opt1, opt2, mask) ((opt1 & mask) != (opt2 & mask))

//
//  Program selector screen imeplementer class
//
class ProgramSelectorScreen : public Screen
{
  public:
    //
    //  Ctor
    //  
    //  pregmap:  Pointer of the central register map.
    //
    ProgramSelectorScreen(REGISTERMAP* pregmap) : Screen(pregmap)
    {
      // Widget instantiations...
      pListBox = new ListBox(0, 40, TFT_RESX / 2, TFT_RESY - 40, WPRGNAME_list, WASH_PROGRAM_COUNT);
      pListBox->Mode = ListBox::HorizontalTabStyle;
      pTime = new CircularProgressBar(400, 110, 50, 5);
      pTime->UnitSize = 3;
      pTime->NumberBackColor = BGR2_COLOR;
      
      pPreWashIcon = new PreWashIcon(260, 50, BGR_COLOR, ELGREEN_COLOR);
      pTempWashIcon = new TempWashIcon(260, 95, BGR_COLOR, ELGREEN_COLOR, Cold);
      pRinseIcon = new RinseIcon(260, 140, BGR_COLOR);
      pSpinIcon = new VectorIcon(270, 185, Spin_Vicon);
      pDrainIcon = new DrainIcon(260, 230, BGR_COLOR, ELGREEN_COLOR);
      pRinseHoldIcon = new WashIcon(260, 275, BGR_COLOR);      
      
      pEIcon = new EIcon(335, 275, BGR_COLOR, ELGREEN_COLOR);
      pBioIcon = new BioIcon(366, 275, BGR_COLOR, ELGREEN_COLOR);
      pHalfLoadIcon = new HalfLoadIcon(420, 275, BGR_COLOR, ELGREEN_COLOR);

      pConsumptionWidget = new ConsumptionWidget(336, 180, 0, BGR3_COLOR);
    }

    /*
    //
    //  Destructor
    //
    ~ProgramSelectorScreen()
    {
      if (pTime != NULL)
        delete pTime;
      if (pListBox != NULL)
        delete pListBox;
      if (pPreWashIcon != NULL)
        delete pPreWashIcon;
      if (pTempWashIcon != NULL)
        delete pTempWashIcon;
      if (pRinseIcon != NULL)
        delete pRinseIcon;
      if (pSpinIcon != NULL)
        delete pSpinIcon;
      if (pEIcon != NULL)
        delete pEIcon;
      if (pBioIcon != NULL)
        delete pBioIcon;
      if (pRinseHoldIcon != NULL)
        delete pRinseHoldIcon;
      if (pHalfLoadIcon != NULL)
        delete pHalfLoadIcon;
      if (pDrainIcon != NULL)
        delete pDrainIcon;
    }*/
  
  private:
    CircularProgressBar* pTime = NULL;
    ListBox* pListBox = NULL;
    PreWashIcon* pPreWashIcon = NULL;
    TempWashIcon* pTempWashIcon = NULL;
    RinseIcon* pRinseIcon = NULL;
    VectorIcon* pSpinIcon = NULL;
    WashIcon* pRinseHoldIcon = NULL;
    EIcon* pEIcon = NULL;
    BioIcon* pBioIcon = NULL;
    HalfLoadIcon* pHalfLoadIcon = NULL;
    DrainIcon* pDrainIcon = NULL;
    ConsumptionWidget* pConsumptionWidget = NULL;

    byte PrevOptions = 0;
    int PrevTemp = -1;

  public:
    void Show()
    {
      // Draw menu header
      CommonUI::DrawPageCaption(str_MM_ProgramSelector);
  
      // Draw screen layout gfx
      CommonUI::SetColor(BGR_COLOR);
      gTFT.fillRect(0, 40, (TFT_RESX / 2) - 1, TFT_RESY - 1);
      CommonUI::SetColor(ELGREEN_COLOR);
      gTFT.fillRect(TFT_RESX / 2, 40, TFT_RESX - 1, TFT_RESY - 1);

      pListBox->Show();
      pTime->Show();
      pConsumptionWidget->Show();

      ShowSelectedProgramDetails(pRegMap->Program, true);
    }

    EventResult ProcessEvent(Event e)
    {
      WASHPROGRAM prg = Screen::GetWashProgram(pRegMap->Program);
      
      switch (e)
      {
        case Start:
          pRegMap->EventResultData = SCREEN_WASHING;
          return ShowScreen;

        case RotLeft:
          if (pRegMap->Program > 0)
          {
            ShowSelectedProgramDetails(pRegMap->Program - 1, false);
            return Action;
          }
          break;
          
        case RotRight:
          if (pRegMap->Program < WASH_PROGRAM_COUNT - 1)
          {
            ShowSelectedProgramDetails(pRegMap->Program + 1, false);
            return Action;
          }
          break;
        
        case Select:
          {
            if ((prg.Options2 & WPO2_HALFLOAD) != 0)
            {
              pRegMap->IsHalfLoad = !pRegMap->IsHalfLoad;
              UpdateLoadRelatedInfo(prg);
            }
          }
          break;
          
        case Back:
          pRegMap->EventResultData = SCREEN_MAIN_MENU;
          return ShowScreen;
      }
      
      return NoAction;
    }

  private:
    void ShowSelectedProgramDetails(byte programID, bool forceRedraw)
    {
      if (programID > WASH_PROGRAM_COUNT)
        return;
      
      pRegMap->Program = programID;
      pListBox->SelectItem(programID);

      WASHPROGRAM prg = Screen::GetWashProgram(programID);

      byte opt = prg.Options;

      if (forceRedraw || DOES_OPT_DIFFS(PrevOptions, opt, WPO_PREWASH))
        EnableIcon(pPreWashIcon, (opt & WPO_PREWASH) != 0);

      if (forceRedraw || DOES_OPT_DIFFS(PrevOptions, opt, WPO_WASH) || PrevTemp != prg.Temp)
      {
        pTempWashIcon->SetTemp(prg.Temp);
        EnableIcon(pTempWashIcon, (opt & WPO_WASH) != 0);
      }

      if (forceRedraw || DOES_OPT_DIFFS(PrevOptions, opt, WPO_RINSE))
        EnableIcon(pRinseIcon, (opt & WPO_RINSE) != 0);

      if (forceRedraw || DOES_OPT_DIFFS(PrevOptions, opt, WPO_SPIN))
        EnableIcon(pSpinIcon, (opt & WPO_SPIN) != 0);

      if (forceRedraw || DOES_OPT_DIFFS(PrevOptions, opt, WPO_SPIN) || DOES_OPT_DIFFS(PrevOptions, opt, WPO_DRAIN))
        EnableIcon(pDrainIcon, (opt & (WPO_SPIN | WPO_DRAIN)) != 0);

      if (forceRedraw || DOES_OPT_DIFFS(PrevOptions, opt, WPO_RINSEHOLD))
        EnableIcon(pRinseHoldIcon, (opt & WPO_RINSEHOLD) != 0);

      if (forceRedraw || DOES_OPT_DIFFS(PrevOptions, opt, WPO_ECO))
        EnableIcon(pEIcon, (opt & WPO_ECO) != 0);

      if (forceRedraw || DOES_OPT_DIFFS(PrevOptions, opt, WPO_BIO))
        EnableIcon(pBioIcon, (opt & WPO_BIO) != 0);

      UpdateLoadRelatedInfo(prg);
      
      PrevOptions = opt;
    }
  
    void EnableIcon(ColorWidgetBase* pIcon, byte enable)
    {
      pIcon->ForeColor = enable ? BGR_COLOR : HDR_COLOR;
      pIcon->Show();
    }

    void EnableIcon(WidgetBase* pIcon, byte enable)
    {
      CommonUI::SetColor(enable ? BGR_COLOR : HDR_COLOR);
      pIcon->Show();
    }

    void HideIcon(ColorWidgetBase* pIcon)
    {
      pIcon->ForeColor = ELGREEN_COLOR;
      pIcon->Show();
    }

    void UpdateLoadRelatedInfo(WASHPROGRAM& prg)
    {
      if ((prg.Options2 & WPO2_HALFLOAD) != 0)
      {
        // Current program supports half load option
        EnableIcon(pHalfLoadIcon, pRegMap->IsHalfLoad);
      }
      else
      {
        // Current program does not support half load
        pRegMap->IsHalfLoad = 0;
        HideIcon(pHalfLoadIcon);
      }
      
      byte halfLoadIdx = pRegMap->IsHalfLoad ? 1 : 0;

      pConsumptionWidget->SetWaterConsumption(prg.WaterConsumption[halfLoadIdx]);
      pConsumptionWidget->SetPowerConsumption(prg.PowerConsumption[halfLoadIdx]);
      pConsumptionWidget->SetCost(pRegMap->ProgramCost[pRegMap->Program][halfLoadIdx]);

      // Display current program timespan (depending on the load option)
      pTime->SetValue(prg.Timespan[halfLoadIdx]);
    }
};

//
// Returns a program selector screen object instance.
// pregmap:  Pointer of the central register map.
//
Screen* GetProgramSelectorScreen(REGISTERMAP* pregmap)
{
  return new ProgramSelectorScreen(pregmap);
}

