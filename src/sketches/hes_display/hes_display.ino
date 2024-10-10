// **************************************************
// Display: OPEN-SMART / ILI9326 TFT 480x320
// Project: HAJDU Energo Smart - Display Board
// Author:  Norbert Laszlo
// Date:    2017
//
// This program is responsible to provide the graphical display interface
// for the HAJDU Energo Smart wash machine.
// **************************************************

#include <MCUFRIEND_kbv.h>
#include <UTFTGLUE.h>
#include "hes_common.h"
#include "hes_resources.h"
#include <Wire.h>

UTFTGLUE gTFT(0x9326, A2, A1, A3, A4, A0);
REGISTERMAP gRegmap = { 0 };

Screen* pCurrScreen = NULL;
Screen* pBootupScreen = NULL;
Screen* pMainMenuScr = NULL;
Screen* pPrgSelectorScr = NULL;
Screen* pWashingScr = NULL;

void Wire_RequestEvent();
void ShowScreenSelected();

byte gSignalDividerCounter = 0;

// Declare which fonts we will be using
#if !defined(SmallFont)
extern uint8_t SmallFont[];
#endif

//
//  Common UI draw tools
//
class CommonUI
{
  public:
    //
    // Draws a page caption bar
    //
    static void DrawPageCaption(const char* caption)
    {
      // Draw menu header
      char buffer[30];
      strcpy_P(buffer, caption);
      
      CommonUI::SetColor(HDR_COLOR);
      gTFT.fillRect(0, 0, TFT_RESX - 1, 39);
      CommonUI::SetBackColor(HDR_COLOR);
      CommonUI::SetColor(BGR_COLOR);
      gTFT.setTextSize(2);
      int x = (TFT_RESX - strlen(buffer) * 6 * 2) / 2;

      gTFT.print(buffer, x, 12);
    }

    static void SetColor(uint16_t color)
    {
      //rrrrrggg gggbbbbb
      gTFT.setColor(
        (color >> 8) & 0xf8,
        (color >> 3) & 0xfc,
        (color << 3) & 0xf8
        );
    }

    static void SetBackColor(uint16_t color)
    {
      gTFT.setBackColor(
        (color >> 8) & 0xf8,
        (color >> 3) & 0xfc,
        (color << 3) & 0xf8
        );
    }
};


//
// Initializes the LCD display.
//
void setup()
{
  Serial.begin(9600);
  gTFT.InitLCD();
  gTFT.setFont(SmallFont);

  // Set up timer0 interrupt (1 KHz)
  cli();

  TCCR1A = 0;// set entire TCCR0A register to 0
  TCCR1B = 0;// same for TCCR0B
  TCNT1  = 0;//initialize counter value to 0
  // set compare match register for 2khz increments
  OCR1A = (16*10^6) / (1000*64) - 1; //(must be <256)
  // turn on CTC mode
  TCCR1A |= (1 << WGM01);
  // Set CS01 and CS00 bits for 64 prescaler
  TCCR1B |= (1 << CS01) | (1 << CS00);   
  // enable timer compare interrupt
  TIMSK1 |= (1 << OCIE1A);
  
  //OCR0A = 0xAF;
  //TIMSK0 |= _BV(OCIE0A);

  sei();

  Wire.begin(200);
  Wire.onRequest(Wire_RequestEvent);
} 

// Interrupt is called once a millisecond, 
ISR(TIMER1_COMPA_vect) 
{
  cli();
  
  if (pCurrScreen != NULL)
  {
    byte evtmask = pCurrScreen->GetEventMask();
    EventResult eres = NoAction;

    if (ISFLAGSET(evtmask, EVTMASK_SIGNAL1K))
      eres = pCurrScreen->ProcessEvent(Signal1K);

    if (ISFLAGSET(evtmask, EVTMASK_SIGNAL2))
    {
      gSignalDividerCounter++;
  
      if (gSignalDividerCounter >= 200)
      {     
        gSignalDividerCounter = 0;
        eres = pCurrScreen->ProcessEvent(Signal500);
      }
    }

    if (eres == ShowScreen)
    {
      ShowScreenSelected();
    }
  }

  sei();
}

    
void loop()
{ 
  pBootupScreen = GetBootupScreen(&gRegmap);
  pMainMenuScr = GetMainMenuScreen(&gRegmap);
  pPrgSelectorScr = GetProgramSelectorScreen(&gRegmap);
  pWashingScr = GetWashingScreen(&gRegmap);

  pCurrScreen = pBootupScreen;
  //pCurrScreen = pWashingScr;
  pCurrScreen->Show();

  while (1)
  {
    byte evtmask = pCurrScreen->GetEventMask();
    int cnt = Serial.available();
    for (int i = 0; i < cnt; i++)
    {
      EventResult eres = NoAction;
      char c = Serial.read();
      switch (c)
      {
        case 'p':
          if (ISFLAGSET(evtmask, EVTMASK_START))
            eres = pCurrScreen->ProcessEvent(Start);
          break;
        case 'l':
          if (ISFLAGSET(evtmask, EVTMASK_ROTARY))
            eres = pCurrScreen->ProcessEvent(RotLeft);
          break;
        case 'r':
          if (ISFLAGSET(evtmask, EVTMASK_ROTARY))
            eres = pCurrScreen->ProcessEvent(RotRight);
          break;
        case 's':
          if (ISFLAGSET(evtmask, EVTMASK_SELECT))
            eres = pCurrScreen->ProcessEvent(Select);
          break;
        case 'b':
          if (ISFLAGSET(evtmask, EVTMASK_BACK))
            eres = pCurrScreen->ProcessEvent(Back);
          break;
      }

      if (eres == ShowScreen)
      {
        ShowScreenSelected();
        evtmask = pCurrScreen->GetEventMask();
      }
    }
  }
  
  delay (10000);
}

void ShowScreenSelected()
{
  switch (gRegmap.EventResultData)
  {
    case SCREEN_PROGRAMSELECTOR:
      pCurrScreen = pPrgSelectorScr;
      break;
    case SCREEN_TIMER:
      break;
    case SCREEN_SETUP:
      break;
    case SCREEN_COSTS:
      break;
    case SCREEN_LOG:
      break;
    case SCREEN_MAIN_MENU:
      pCurrScreen = pMainMenuScr;
      break;
    case SCREEN_WASHING:
      pCurrScreen = pWashingScr;
      break;
  }

  pCurrScreen->Show();
}

void Wire_RequestEvent()
{
  if (Wire.available())
  {
    byte addr = Wire.read();
    byte data = Wire.read();

    if (addr == 0)
    {
      
    }
  }
}

