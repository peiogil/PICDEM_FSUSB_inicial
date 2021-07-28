/*******************************************************************************
   TC78H670FTG_  abstraction layer for SparkFun_ProDriver_TC78H670FTG_demo board.

  Company:
    myself.

  File Name:
    SparkFun_ProDriver_TC78H670FTG.c

  Summary:
    TC78H670FTG_  abstraction layer for SparkFun_ProDriver_TC78H670FTG_demo board.

  Description:
    TC78H670FTG_  abstraction layer for SparkFun_ProDriver_TC78H670FTG_demo board..
*******************************************************************************/
// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************
#include <stdbool.h>
#include <xc.h>
#include "SparkFun_ProDriver_TC78H670FTG_Library.h"
// *****************************************************************************
// *****************************************************************************
// Section: File Scope or Global Constants
// *****************************************************************************
// *****************************************************************************
#define _XTAL_FREQ 20000000 //Frecuencia del XTAL en la mchpfusb para los __delays 
#define PORT_PRODRIVER_DEFAULT_PIN_STBY   PORTBbits.RB1
#define PORT_PRODRIVER_DEFAULT_PIN_EN     PORTBbits.RB2
#define PORT_PRODRIVER_DEFAULT_PIN_MODE_0 PORTBbits.RB3
#define PORT_PRODRIVER_DEFAULT_PIN_MODE_1 PORTBbits.RB4
#define PORT_PRODRIVER_DEFAULT_PIN_MODE_2 PORTBbits.RB5
#define PORT_PRODRIVER_DEFAULT_PIN_MODE_3 PORTBbits.RB6
#define PORT_PRODRIVER_DEFAULT_PIN_ERROR  PORTBbits.RB7

#define INPUT  1
#define OUTPUT 0
#define HIGH   1
#define LOW    0
// *****************************************************************************
// *****************************************************************************
// Section: Macros or Functions
// *****************************************************************************
// *****************************************************************************
//****************************************************************************//
//
//  Constructor
//
//    Initalizes settings to default.
//
//****************************************************************************//
//struct 
PRODRIVERSettings settings;
void IniSettingsDefault( void )
{
    //PRODRIVERSettings settings;                                                                             
	//Construct with these default settings if nothing is specified
	//Select control mode
                                                                                  
settings.controlMode = PRODRIVER_MODE_CLOCKIN; // PRODRIVER_MODE_CLOCKIN or PRODRIVER_MODE_SERIAL
settings.stepResolutionMode = PRODRIVER_STEP_RESOLUTION_FIXED_FULL; // many options, see header file or ds pg 8
settings.stepResolution = PRODRIVER_STEP_RESOLUTION_1_1; // IC default on bootup
  
    //Select default settings for SERIAL MODE specific settings
  settings.phaseA = PRODRIVER_PHASE_PLUS;
  settings.phaseB = PRODRIVER_PHASE_PLUS;
  settings.currentLimA = 1023; // max
  settings.currentLimB = 1023; // max
  settings.torque = PRODRIVER_TRQ_100;
  settings.openDetection = PRODRIVER_OPD_OFF;
  settings.mixedDecayA = PRODRIVER_MD_FAST_37;
  settings.mixedDecayB = PRODRIVER_MD_FAST_37;
  settings.phasePosition = 1;

  //statuses/flags
  settings.enableStatus = PRODRIVER_STATUS_DISABLED;  
  settings.standbyStatus = PRODRIVER_STATUS_STANDBY_ON;
  settings.errorFlag = false; // false = no error
}
// *****************************************************************************
//Select default 18f4550 pin modes for hardware connections
// *****************************************************************************
void Pin_SetUp_PortB_Driver (  )
 {
    
  // enable is active high 
  // note, hardware slide switch can also over-ride this when set to position "OFF" 
    
  TRIS_PRODRIVER_DEFAULT_PIN_EN     = OUTPUT;
  PORT_PRODRIVER_DEFAULT_PIN_EN     = LOW;
  settings.enableStatus = PRODRIVER_STATUS_DISABLED;
  // standby is active low. 
  // OUTPUT, LOW = standby
  // OUTPUT, HIGH = not in standby
  TRIS_PRODRIVER_DEFAULT_PIN_STBY   = OUTPUT;
  PORT_PRODRIVER_DEFAULT_PIN_STBY   = LOW;// hold in standby, until we're ready to go
  settings.standbyStatus = PRODRIVER_STATUS_STANDBY_ON;
  // error is active low 
  // This will always be an input pin (on your microcontroller)
  // note, this pin on the IC has a dual purpose (both EN and ERR).
  TRIS_PRODRIVER_DEFAULT_PIN_ERROR  = INPUT;
  // All mode pins to output low
  
  TRIS_PRODRIVER_DEFAULT_PIN_MODE_0 = OUTPUT;
  PORT_PRODRIVER_DEFAULT_PIN_MODE_0 = LOW;
  TRIS_PRODRIVER_DEFAULT_PIN_MODE_1 = OUTPUT;
  PORT_PRODRIVER_DEFAULT_PIN_MODE_1 = LOW;
  TRIS_PRODRIVER_DEFAULT_PIN_MODE_2 = OUTPUT;       
  PORT_PRODRIVER_DEFAULT_PIN_MODE_2 = LOW;
  TRIS_PRODRIVER_DEFAULT_PIN_MODE_3 = OUTPUT;
  PORT_PRODRIVER_DEFAULT_PIN_MODE_3 = LOW;
 
 }
void controlModeSelect(  )
{
  // set mode pins according to desired mode
  switch (settings.controlMode)
  {
  case PRODRIVER_MODE_SERIAL:
    // set mode pins to all LOW for serial mode
   PORT_PRODRIVER_DEFAULT_PIN_MODE_0 = LOW;
   PORT_PRODRIVER_DEFAULT_PIN_MODE_1 = LOW;
   PORT_PRODRIVER_DEFAULT_PIN_MODE_2 = LOW;
   PORT_PRODRIVER_DEFAULT_PIN_MODE_3 = LOW;  
   break;

  case PRODRIVER_MODE_CLOCKIN:
    // set mode pins as needed
    // note, when you set controlmode to CLOCKIN,
    // you are also setting the step resolution, which can
    // be a variety of options.

    // grab "bits" from the desired step resolution
    // these will be used to set each mode pin high/low

    // mode0Pin
    if(settings.stepResolutionMode== 0)
    {
      PORT_PRODRIVER_DEFAULT_PIN_MODE_0 = HIGH; // let on-board external pullup to 3.3V pull this pin HIGH
    }
    else{
      PORT_PRODRIVER_DEFAULT_PIN_MODE_0 = LOW;
    }

    // mode1Pin
    if(settings.stepResolutionMode== 1)
    {
      PORT_PRODRIVER_DEFAULT_PIN_MODE_1 = HIGH; // let on-board external pullup to 3.3V pull this pin HIGH
    }
    else{
      PORT_PRODRIVER_DEFAULT_PIN_MODE_1 = LOW;
    }

    // mode2Pin
    if(settings.stepResolutionMode== 2)
    {
      PORT_PRODRIVER_DEFAULT_PIN_MODE_2 = HIGH; // let on-board external pullup to 3.3V pull this pin HIGH
    }
    else{
      PORT_PRODRIVER_DEFAULT_PIN_MODE_2 = LOW;
    }

    // mode3Pin
    if(settings.stepResolutionMode== 2)
    {
      PORT_PRODRIVER_DEFAULT_PIN_MODE_2 = HIGH; // let on-board external pullup to 3.3V pull this pin HIGH
    }
    else{
      PORT_PRODRIVER_DEFAULT_PIN_MODE_2 = LOW;
    }
    break;

  default:
    break;

  }
  
  // wait TmodeSU (mode setting setup time) minimum 1 microsecond
 __delay_us(3);
  

  // release standby (write it HIGH)
  PORT_PRODRIVER_DEFAULT_PIN_EN = HIGH; // update setting to check as needed

  // wait TmodeHO (mode setting Data hold time) minimum 100 microseconds
  __delay_us(100);

  //return errorStat();
}
// enable ( void )
// sets the enable pin to HIGH
// but only if we need to (i.e. we are currently disabled)
void enable( )
{
  // Check to see if we are already enabled. If so, then leave pin alone.
  // If we are not enabled, then enable.
  if(settings.enableStatus == PRODRIVER_STATUS_ENABLED)
  {
    // do nothing, we are already enabled.
    // this helps avoid re-writing the enable pin
    // which actually toggles the pin when you do a digitalWrite()
  }
  else{ // we are not enabled, so let's enable
    PORT_PRODRIVER_DEFAULT_PIN_EN = HIGH;
    settings.enableStatus = PRODRIVER_STATUS_ENABLED; // update settings so we can check as needed
  }

}