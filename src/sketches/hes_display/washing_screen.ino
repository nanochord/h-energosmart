// **************************************************
// Project: HAJDU Energo Smart - Display Board
// Washing screen
// Author:  Norbert Laszlo
// Date:    2017
//
// This source code represents a class that implements the washing in progress screen.
// **************************************************

#define INDI_WASHMOTOR    0x01
#define INDI_SPINMOTOR    0x02
#define INDI_DRAINMOTOR   0x04
#define INDI_VALVE1       0x08
#define INDI_VALVE2       0x10
#define INDI_LOCK         0x20

//
//  Washing screen imeplementer class
//
class WashingScreen : public Screen
{
  public:
    WashingScreen(REGISTERMAP* pregmap) : Screen(pregmap)
    {
      pTime = new CircularProgressBar(TFT_RESX/2, TFT_RESY/2 - 20, 70, 8);
      pTime->ForeColor = GREEN_COLOR;
      pTime->BackColor = BGR_COLOR;

      pPreWashIcon = new PreWashIcon(400, 50, HDR_COLOR, BGR_COLOR);
      pTempWashIcon = new TempWashIcon(400, 95, HDR_COLOR, BGR_COLOR, Cold);
      pRinseIcon = new RinseIcon(400, 140, HDR_COLOR);
      CommonUI::SetColor(HDR_COLOR);
      pSpinIcon = new VectorIcon(410, 185, Spin_Vicon);
      pDrainIcon = new DrainIcon(400, 230, HDR_COLOR, BGR_COLOR);
      pRinseHoldIcon = new WashIcon(400, 275, HDR_COLOR);
      
      pLockIcon = new LockIcon(16, TFT_RESY - 44, LOCK_COLOR, BGR_COLOR);
      pThermoIcon = new ThermometerIcon(16, 60, 0, BGR_COLOR);
      pWaterLevelIcon = new WaterLevelIcon(65, 60, 0, BGR_COLOR);
      pConsumptionWidget = new ConsumptionWidget((TFT_RESX - 129) / 2, TFT_RESY - 72 - 10, 0, COLOR565(200, 200, 200));
      
      pWashMotorRun = new IndicatorWidget(14, 140, ELGREEN_COLOR, BGR_COLOR, str_INDI_WashMotor);
      pSpinMotorRun = new IndicatorWidget(14, 163, ELGREEN_COLOR, BGR_COLOR, str_INDI_SpinMotor);
      pDrainMotorRun = new IndicatorWidget(14, 186, ELGREEN_COLOR, BGR_COLOR, str_INDI_DrainMotor);
      pValve1Run = new IndicatorWidget(14, 209, ELGREEN_COLOR, BGR_COLOR, str_INDI_Valve1);
      pValve2Run = new IndicatorWidget(14, 232, ELGREEN_COLOR, BGR_COLOR, str_INDI_Valve2);

      pEIcon = new EIcon(325, 238, ELGREEN_COLOR, BGR_COLOR);
      pBioIcon = new BioIcon(325, 263, ELGREEN_COLOR, BGR_COLOR);
      pHalfLoadIcon = new HalfLoadIcon(325, 288, ELGREEN_COLOR, BGR_COLOR);
    }

  private:
    CircularProgressBar* pTime = NULL;
    PreWashIcon* pPreWashIcon = NULL;
    TempWashIcon* pTempWashIcon = NULL;
    RinseIcon* pRinseIcon = NULL;
    VectorIcon* pSpinIcon = NULL;
    WashIcon* pRinseHoldIcon = NULL;
    EIcon* pEIcon = NULL;
    BioIcon* pBioIcon = NULL;
    HalfLoadIcon* pHalfLoadIcon = NULL;
    DrainIcon* pDrainIcon = NULL;
    LockIcon* pLockIcon = NULL;
    ThermometerIcon* pThermoIcon = NULL;
    WaterLevelIcon* pWaterLevelIcon = NULL;
    ConsumptionWidget* pConsumptionWidget = NULL;
    IndicatorWidget* pWashMotorRun = NULL;
    IndicatorWidget* pSpinMotorRun = NULL;
    IndicatorWidget* pDrainMotorRun = NULL;
    IndicatorWidget* pValve1Run = NULL;
    IndicatorWidget* pValve2Run = NULL;

    bool stillOn = false;
    bool flashOn = false;
    byte lastTime = 0;

  public:
    byte CurrentProgramPhase = 0;

  public:
    byte GetEventMask()
    {
      return EVTMASK_SIGNAL2;
    }
  
    void Show()
    {     
      cli();
      
      gTFT.fillScreen(BGR_COLOR);

      // Draw menu header
      CommonUI::DrawPageCaption((char*)pgm_read_word(&(WPRGNAME_list[pRegMap->Program])));

      // Show consumption data widget
      pConsumptionWidget->Show();

      pTime->Show();

      // Show washing program related features and options
      WASHPROGRAM prg = Screen::GetWashProgram(pRegMap->Program);
      uint16_t y = 50;

      // Show timespan widget
      byte halfLoadIdx = pRegMap->IsHalfLoad ? 1 : 0;
      
      // Display current program timespan (depending on the load option)
      lastTime = prg.Timespan[halfLoadIdx];
      pTime->SetValue(lastTime);

      if (ISFLAGSET(prg.Options, WPO_PREWASH))
      {
        pPreWashIcon->Y = y;
        pPreWashIcon->Show();
        y += 45;
      }
      if (ISFLAGSET(prg.Options, WPO_WASH))
      {
        pTempWashIcon->Y = y;
        pTempWashIcon->SetTemp(prg.Temp);
        pTempWashIcon->Show();
        y += 45;
      }
      if (ISFLAGSET(prg.Options, WPO_RINSE))
      {
        pRinseIcon->Y = y;
        pRinseIcon->Show();
        y += 45;
      }
      if (ISFLAGSET(prg.Options, WPO_SPIN))
      {
        CommonUI::SetColor(HDR_COLOR);
        pSpinIcon->Y = y;
        pSpinIcon->Show();
        y += 45;
      }
      if (ISFLAGSET(prg.Options, WPO_SPIN | WPO_DRAIN))
      {
        pDrainIcon->Y = y;
        pDrainIcon->Show();
        y += 45;
      }
      if (ISFLAGSET(prg.Options, WPO_RINSEHOLD))
      {
        pRinseHoldIcon->Y = y;
        pRinseHoldIcon->Show();
      }
      if (ISFLAGSET(prg.Options, WPO_ECO))
      {
        pEIcon->Show();
      }
      if (ISFLAGSET(prg.Options, WPO_BIO))
      {
        pBioIcon->Show();
      }
      if (pRegMap->IsHalfLoad)
      {
        pHalfLoadIcon->Show();
      }

      // Show temperature, water level and door locking state widgets
      pLockIcon->Show();
      pThermoIcon->Show();
      pWaterLevelIcon->Show();

      // Show other diagnostic indicators
      pWashMotorRun->Show();
      pSpinMotorRun->Show();
      pDrainMotorRun->Show();
      pValve1Run->Show();
      pValve2Run->Show();


      // DEV TEST
      /*
      CurrentProgramPhase = WPO_WASH;
      SetProgramPhaseIconEnabled(WPO_PREWASH, false);
      SetRemainingTime(124);
      SetConsumptionData(7, 28, 271);
      SetLockState(false);
      SetWaterLevel(WaterLevelIcon::Mid);
      SetTemperature(T95C);
      SetIndicatorsState(INDI_WASHMOTOR | INDI_VALVE2 | INDI_DRAINMOTOR);
      */

      sei();
    }

    EventResult ProcessEvent(Event e)
    {
      switch (e)
      {
        case Start:
          Still(!stillOn);
          break;
        case Signal500:
          // Do flash washing phase indicator icon, if any...
          {
            flashOn = !flashOn;

            if (stillOn)
            {
              pTime->NumberColor = flashOn ? 0 : GRAY_COLOR;
              pTime->SetValue(lastTime);
            }
            uint16_t color = flashOn ? HDR_COLOR : GRAY_COLOR;

            if (ISFLAGSET(CurrentProgramPhase, WPO_PREWASH))
            {
              pPreWashIcon->ForeColor = color;
              pPreWashIcon->Show();
            }
  
            if (ISFLAGSET(CurrentProgramPhase, WPO_WASH))
            {
              pTempWashIcon->ForeColor = color;
              pTempWashIcon->Show();
            }
  
            if (ISFLAGSET(CurrentProgramPhase, WPO_RINSE))
            {
              pRinseIcon->ForeColor = color;
              pRinseIcon->Show();
            }
  
            if (ISFLAGSET(CurrentProgramPhase, WPO_SPIN))
            {
              CommonUI::SetColor(color);
              pSpinIcon->Show();
            }
  
            if (ISFLAGSET(CurrentProgramPhase, WPO_RINSEHOLD))
            {
              pRinseHoldIcon->ForeColor = color;
              pRinseHoldIcon->Show();
            }

            if (ISFLAGSET(CurrentProgramPhase, WPO_DRAIN))
            {
              pDrainIcon->ForeColor = color;
              pDrainIcon->Show();
            }
          }

          break;
      }

      return NoAction;
    }

    void SetProgramPhaseIconEnabled(byte phase, bool enabled)
    {
      cli();
      
      uint16_t color = enabled ? HDR_COLOR : DARKGRAY_COLOR;

      if (ISFLAGSET(phase, WPO_PREWASH))
      {
        pPreWashIcon->ForeColor = color;
        pPreWashIcon->Show();
      }
      if (ISFLAGSET(phase, WPO_WASH))
      {
        pTempWashIcon->ForeColor = color;
        pTempWashIcon->Show();
      }
      if (ISFLAGSET(phase, WPO_RINSE))
      {
        pRinseIcon->ForeColor = color;
        pRinseIcon->Show();
      }
      if (ISFLAGSET(phase, WPO_SPIN))
      {
        CommonUI::SetColor(color);
        pSpinIcon->Show();
      }
      if (ISFLAGSET(phase, WPO_DRAIN))
      {
        pDrainIcon->ForeColor = color;
        pDrainIcon->Show();
      }
      if (ISFLAGSET(phase, WPO_RINSEHOLD))
      {
        pRinseHoldIcon->ForeColor = color;
        pRinseHoldIcon->Show();
      }

      sei();
    }

    void SetIndicatorsState(byte indiStates)
    {
      cli();

      pWashMotorRun->Enabled = ISFLAGSET(indiStates, INDI_WASHMOTOR) != 0 ? true : false;
      pWashMotorRun->Show();

      pSpinMotorRun->Enabled = ISFLAGSET(indiStates, INDI_SPINMOTOR) != 0 ? true : false;
      pSpinMotorRun->Show();

      pDrainMotorRun->Enabled = ISFLAGSET(indiStates, INDI_DRAINMOTOR) != 0 ? true : false;
      pDrainMotorRun->Show();

      pValve1Run->Enabled = ISFLAGSET(indiStates, INDI_VALVE1) != 0 ? true : false;
      pValve1Run->Show();

      pValve2Run->Enabled = ISFLAGSET(indiStates, INDI_VALVE2) != 0 ? true : false;
      pValve2Run->Show();

      sei();
    }

    void SetTemperature(Temperature temp)
    {
      cli();
      pThermoIcon->SetTemp(temp);
      sei();
    }

    void SetWaterLevel(WaterLevelIcon::WaterLevel level)
    {
      cli();
      pWaterLevelIcon->SetLevel(level);      
      sei();
    }

    void SetLockState(bool lock)
    {
      cli();
      pLockIcon->ForeColor = lock ? LOCK_COLOR : GRAY_COLOR;
      pLockIcon->Show();
      sei();
    }

    void SetConsumptionData(byte liter, byte kwh, uint16_t cost)
    {
      cli();
      pConsumptionWidget->SetWaterConsumption(liter);
      pConsumptionWidget->SetPowerConsumption(kwh);
      pConsumptionWidget->SetCost(cost);
      sei();
    }

    void SetRemainingTime(byte t)
    {
      cli();
      lastTime = t;
      pTime->SetValue(t);
      sei();
    }

    void Still(bool still)
    {
      stillOn = still;
    }

  private:
};

//
// Returns a washing screen object instance.
// pregmap:  Pointer of the central register map.
//
Screen* GetWashingScreen(REGISTERMAP* pregmap)
{
  return new WashingScreen(pregmap);
}

