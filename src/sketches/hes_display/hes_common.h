// **************************************************
// Project: HAJDU Energo Smart - Display Board
// Common definitions
// Author:  Norbert Laszlo
// Date:    2017
// **************************************************


// -------------------------------------------------
//                    Graphics
// -------------------------------------------------

#define TFT_RESX 480
#define TFT_RESY 320

// RRRRRGGG GGGBBBBB
#define COLOR565(r, g, b) (((r & 0xf8) << 8) | ((g & 0xfc) << 3) | ((b & 0xf8) >> 3))

#define BGR_COLOR     COLOR565(0xff, 0xff, 0xff)
#define HDR_COLOR     COLOR565(0, 70, 14)
#define ELGREEN_COLOR COLOR565(64, 149, 66)
#define BGR2_COLOR    COLOR565(0, 148, 255)
#define BGR3_COLOR    COLOR565(0, 120, 54)
#define GREEN_COLOR   COLOR565(38, 127, 0)
#define LOCK_COLOR    COLOR565(255, 0, 0)
#define WLEVEL_COLOR  COLOR565(0, 0, 255)

#define TCOLD_COLOR   COLOR565(0, 148, 255)
#define T40C_COLOR    COLOR565(255, 217, 0)
#define T60C_COLOR    COLOR565(255, 173, 0)
#define T95C_COLOR    COLOR565(255, 123, 0)
#define THIGH_COLOR   COLOR565(255, 0, 0)
#define GRAY_COLOR    COLOR565(200, 200, 200)
#define DARKGRAY_COLOR COLOR565(128, 128, 128)

#define NOSELECTION 255

// Possible drawing options
enum DrawOption { All, ScaffoldOnly, DataOnly };


// -------------------------------------------------
//                    BLL
// -------------------------------------------------

#define ISFLAGSET(v, f) ((v & f) != 0)

// Possible washing water temperature
enum Temperature { Cold, T40C, T60C, T95C, High };

#define WPO_PREWASH   0x01
#define WPO_WASH      0x02
#define WPO_RINSE     0x04
#define WPO_SPIN      0x08
#define WPO_RINSEHOLD 0x10
#define WPO_ECO       0x20
#define WPO_BIO       0x40
#define WPO_DRAIN     0x80

#define WPO2_NOOPTION 0
#define WPO2_HALFLOAD 0x01

// Describes a wash program
typedef struct
{
  Temperature Temp;
  byte Options;
  byte Options2;
  byte Timespan[2];
  byte WaterConsumption[2];
  byte PowerConsumption[2];
} WASHPROGRAM;

#define WASH_PROGRAM_COUNT 22

const WASHPROGRAM WashPrograms[WASH_PROGRAM_COUNT] PROGMEM  = {
  { T95C, WPO_PREWASH | WPO_WASH | WPO_RINSE | WPO_SPIN, WPO2_HALFLOAD, {50, 40}, { 0, 0 }, { 0, 0 } },           // Főzőmosás+
  { T60C, WPO_PREWASH | WPO_WASH | WPO_RINSE | WPO_SPIN, WPO2_HALFLOAD, {50, 40}, { 0, 0 }, { 0, 0 } },           // Mosás+
  { T60C, WPO_PREWASH | WPO_WASH | WPO_RINSE | WPO_SPIN | WPO_ECO, WPO2_HALFLOAD, {40, 30}, { 0, 0 }, { 0, 0 } }, // E Mosás+
  { T95C, WPO_PREWASH | WPO_WASH | WPO_RINSE | WPO_SPIN | WPO_BIO, WPO2_HALFLOAD, {50, 40}, { 0, 0 }, { 0, 0 } }, // Bio mosás+
  { T95C, WPO_PREWASH | WPO_WASH | WPO_RINSE, WPO2_HALFLOAD, {45, 35}, { 0, 0 }, { 0, 0 } },                      // Mosás centri nélkül
  { T95C, WPO_WASH | WPO_RINSE | WPO_SPIN | WPO_BIO, WPO2_HALFLOAD, {40, 30}, { 0, 0 }, { 0, 0 } },               // Mosás 1
  { T95C, WPO_WASH | WPO_RINSE, WPO2_HALFLOAD, {40, 30}, { 0, 0 }, { 0, 0 } },                                    // Mosás 2
  { T60C, WPO_WASH | WPO_RINSE | WPO_SPIN | WPO_ECO, WPO2_HALFLOAD, {40, 30}, { 0, 0 }, { 0, 0 } },               // E Mosás
  { T60C, WPO_WASH | WPO_RINSE | WPO_SPIN, WPO2_HALFLOAD, {30, 20}, { 0, 0 }, { 0, 0 } },                         // Tarka mosás 1
  { T60C, WPO_WASH | WPO_RINSE, WPO2_HALFLOAD, {30, 20}, { 0, 0 }, { 0, 0 } },                                    // Tarka mosás 2
  { T40C, WPO_WASH | WPO_RINSE | WPO_SPIN, WPO2_HALFLOAD, {30, 20}, { 0, 0 }, { 0, 0 } },                         // Tarka mosás 3
  { T40C, WPO_WASH | WPO_RINSE, WPO2_HALFLOAD, {30, 20}, { 0, 0 }, { 0, 0 } },                                    // Tarka mosás 4
  { Cold, WPO_RINSE | WPO_SPIN, WPO2_HALFLOAD, {15, 10}, { 0, 0 }, { 0, 0 } },                                    // Öblítés + centri
  { T60C, WPO_PREWASH | WPO_WASH | WPO_RINSE | WPO_RINSEHOLD, WPO2_HALFLOAD, {45, 35}, { 0, 0 }, { 0, 0 } },      // Műszálas mosás 1
  { T60C, WPO_WASH | WPO_RINSE | WPO_RINSEHOLD, WPO2_HALFLOAD, {30, 20}, { 0, 0 }, { 0, 0 } },                    // Műszálas mosás 2
  { T40C, WPO_WASH | WPO_RINSE | WPO_RINSEHOLD, WPO2_HALFLOAD, {30, 20}, { 0, 0 }, { 0, 0 } },                    // Műszálas mosás 3
  { Cold, WPO_RINSE | WPO_RINSEHOLD, WPO2_NOOPTION, {20, 20}, { 0, 0 }, { 0, 0 } },                               // Gyapjú mosás
  { Cold, WPO_RINSE | WPO_RINSEHOLD, WPO2_NOOPTION, {20, 20}, { 0, 0 }, { 0, 0 } },                               // Hideg mosás
  { Cold, WPO_RINSE | WPO_RINSEHOLD, WPO2_HALFLOAD, {20, 20}, { 0, 0 }, { 0, 0 } },                               // Öblítés - keményítés
  { Cold, WPO_DRAIN | WPO_SPIN, WPO2_NOOPTION, {2, 2}, { 0, 0 }, { 0, 0 } },                                      // Szivattyúzás + centrifuga
  { Cold, WPO_DRAIN, WPO2_NOOPTION, {2, 2}, { 2, 2 }, { 0, 0 } },                                                 // Szivattyúzás
  { T40C, WPO_RINSE | WPO_BIO, WPO2_HALFLOAD, {20, 15}, { 0, 0 }, { 0, 0 } },                                     // Bio áztatás
};



#define SCREEN_PROGRAMSELECTOR  0
#define SCREEN_TIMER            1
#define SCREEN_SETUP            2
#define SCREEN_COSTS            3
#define SCREEN_LOG              4

#define SCREEN_MAIN_MENU      255
#define SCREEN_WASHING        254

typedef struct
{
  uint8_t Screen;     // Screen selection register
  uint8_t Program;    // Selected program's ID
  bool IsHalfLoad;    // The program is a half loaded washing program?
  uint16_t ProgramCost[WASH_PROGRAM_COUNT][2];  // Wash program costs (depending on the load option)
  byte EventResultData;
} REGISTERMAP;

enum Event { Start, RotLeft, RotRight, Select, Back, Signal1K, Signal500 };

enum EventResult
{
  NoAction,
  Action,
  ShowScreen,
};

#define EVTMASK_NONE      0x00
#define EVTMASK_ROTARY    0x01
#define EVTMASK_SELECT    0x02
#define EVTMASK_BACK      0x04
#define EVTMASK_START     0x08
#define EVTMASK_SIGNAL1K  0x10
#define EVTMASK_SIGNAL2   0x20
#define EVTMASK_ALL       0xff
#define EVTMASK_ALLKEYS   (EVTMASK_ROTARY|EVTMASK_SELECT|EVTMASK_BACK|EVTMASK_START)

class Screen
{ 
  public:
    Screen(REGISTERMAP* pregmap)
    {
      pRegMap = pregmap;
    }
    virtual void Show() {}
    virtual EventResult ProcessEvent(Event e) { return NoAction; }
    virtual byte GetEventMask() { return EVTMASK_ALL; }

    REGISTERMAP* pRegMap;

    WASHPROGRAM static GetWashProgram(byte id)
    {
      WASHPROGRAM prog;
      memcpy_P(&prog, &(WashPrograms[id]), sizeof(WASHPROGRAM));
      return prog;
    }
};

#define CAST_SCREEN(p) ((Screen*)p)

