// **************************************************
// Project: HAJDU Energo Smart - Display Board
// Program memory resources
// Author:  Norbert Laszlo
// Date:    2017
// **************************************************

// Wash program names
const char str_WPRGNAME_1[] PROGMEM = "FOZOMOSAS+";
const char str_WPRGNAME_2[] PROGMEM = "MOSAS+";
const char str_WPRGNAME_3[] PROGMEM = "E MOSAS+";
const char str_WPRGNAME_4[] PROGMEM = "BIO MOSAS+";
const char str_WPRGNAME_5[] PROGMEM = "MOSAS CENT. NELKUL";
const char str_WPRGNAME_6[] PROGMEM = "MOSAS 1";
const char str_WPRGNAME_7[] PROGMEM = "MOSAS 2";
const char str_WPRGNAME_8[] PROGMEM = "E MOSAS";
const char str_WPRGNAME_9[] PROGMEM = "TARKA MOSAS 1";
const char str_WPRGNAME_10[] PROGMEM = "TARKA MOSAS 2";
const char str_WPRGNAME_11[] PROGMEM = "TARKA MOSAS 3";
const char str_WPRGNAME_12[] PROGMEM = "TARKA MOSAS 4";
const char str_WPRGNAME_13[] PROGMEM = "OBLITES + CENTRI";
const char str_WPRGNAME_14[] PROGMEM = "MUSZALAS MOSAS 1";
const char str_WPRGNAME_15[] PROGMEM = "MUSZALAS MOSAS 2";
const char str_WPRGNAME_16[] PROGMEM = "MUSZALAS MOSAS 3";
const char str_WPRGNAME_17[] PROGMEM = "GYAPJU MOSAS";
const char str_WPRGNAME_18[] PROGMEM = "HIDEG MOSAS";
const char str_WPRGNAME_19[] PROGMEM = "OBLITES-KEMENYITES";
const char str_WPRGNAME_20[] PROGMEM = "SZIVATTYUZAS+CENTR";
const char str_WPRGNAME_21[] PROGMEM = "SZIVATTYUZAS";
const char str_WPRGNAME_22[] PROGMEM = "BIO AZTATAS";

// Wash program name string list
const char* const WPRGNAME_list[] PROGMEM = {
  str_WPRGNAME_1, str_WPRGNAME_2, str_WPRGNAME_3, str_WPRGNAME_4, str_WPRGNAME_5, str_WPRGNAME_6, str_WPRGNAME_7, str_WPRGNAME_8, str_WPRGNAME_9, str_WPRGNAME_10,
  str_WPRGNAME_11, str_WPRGNAME_12, str_WPRGNAME_13, str_WPRGNAME_14, str_WPRGNAME_15, str_WPRGNAME_16, str_WPRGNAME_17, str_WPRGNAME_18, str_WPRGNAME_19, str_WPRGNAME_20,
  str_WPRGNAME_21, str_WPRGNAME_22
  };

// Main menu items
const char str_MM_MainMenu[] PROGMEM = "FOMENU";
const char str_MM_ProgramSelector[] PROGMEM = "MOSOPROGRAM VALASZTAS";
const char str_MM_Timer[] PROGMEM = "IDOZITES";
const char str_MM_Settings[] PROGMEM = "BEALLITASOK";
const char str_MM_Costs[] PROGMEM = "KOLTSEGEK";
const char str_MM_Log[] PROGMEM = "NAPLO";

// Main menu string list
const char* const MM_list[] PROGMEM = {
  str_MM_ProgramSelector,
  str_MM_Timer,
  str_MM_Settings,
  str_MM_Costs,
  str_MM_Log
};


// Main menu items
const char str_INDI_WashMotor[] PROGMEM = "Moso motor";
const char str_INDI_SpinMotor[] PROGMEM = "Centri";
const char str_INDI_DrainMotor[] PROGMEM = "Szivattyu";
const char str_INDI_Valve1[] PROGMEM = "Szelep 1";
const char str_INDI_Valve2[] PROGMEM = "Szelep 2";

// Format:     Arduino LN Vector Icon
// Name:       Spin vector icon
// Memory occupation: 97 bytes
const uint8_t Spin_Vicon [] PROGMEM = {
    0x10, 0x01, 0x00, 0x10, 0x2e, 0x17, 0x0f, 0x17, 0x10, 0x16, 0x11, 0x16, 0x12, 0x14, 0x13, 0x14, 
    0x13, 0x12, 0x13, 0x10, 0x12, 0x0f, 0x11, 0x0e, 0x0f, 0x0e, 0x0d, 0x0f, 0x0b, 0x11, 0x09, 0x13, 
    0x07, 0x15, 0x07, 0x18, 0x08, 0x1b, 0x09, 0x1d, 0x0c, 0x1e, 0x0f, 0x1d, 0x12, 0x1c, 0x16, 0x19, 
    0x18, 0x16, 0x1a, 0x12, 0x1b, 0x0e, 0x19, 0x0b, 0x17, 0x08, 0x13, 0x07, 0x0f, 0x07, 0x0b, 0x09, 
    0x06, 0x0d, 0x03, 0x12, 0x00, 0x16, 0x00, 0x1c, 0x01, 0x20, 0x05, 0x23, 0x0a, 0x25, 0x0f, 0x24, 
    0x15, 0x21, 0x1a, 0x1d, 0x1f, 0x17, 0x21, 0x11, 0x22, 0x0b, 0x20, 0x05, 0x1b, 0x01, 0x16, 0x00, 
    0x0f, 
    };
    
