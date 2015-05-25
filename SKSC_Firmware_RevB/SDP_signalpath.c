#include "SDP_std_include.h"
//#include "SDP_adc.h"
#include "SDP_signalpath.h"
#include <string.h>


bool bInitGpiosForSignalPath = false;
bool bPowerVolt = false;


//-----------------------------------------------------------------------------
void processSignalPathCmd( u32 pathID )
{
	if( !bInitGpiosForSignalPath )
	{
		initialGpiosForSignalPath();
		
		#ifdef DEBUG00
		flashLed();
		#endif
	}
	
	//flashLed();
	
	switch ( pathID )
	{
		case ADC_VOUT_WITH_CAP:				//0X61
			*pPORTHIO_CLEAR = GPIO_5;
			#ifdef DEBUG
			flashLed();
			#endif
			//adcVoutCap( true );
			break;
		
		case ADC_VOUT_WITHOUT_CAP:			//0X62
			*pPORTHIO_SET = GPIO_5;
			//adcVoutCap( false );
			#ifdef DEBUG
			flashLed();
			#endif
			break;
			
		case ADC_VREF_WITH_CAP:				//0X63
			*pPORTHIO_CLEAR = GPIO_5;
			//adcVrefCap( true );
			#ifdef DEBUG
			flashLed();
			#endif
			break;
			
		case ADC_VREF_WITHOUT_CAP:			//0X64
			*pPORTHIO_SET = GPIO_5;
			//adcVrefCap( false );
			#ifdef DEBUG
			flashLed();
			#endif
			break;
			
		case ADC_VIN_TO_VOUT:				//0X65
			//flashLed();
			*pPORTHIO_CLEAR = ( GPIO_3|GPIO_11);
			ssync();
			ssync();
			*pPORTHIO_SET = ( GPIO_2|GPIO_4 );
			//*pPORTHIO_CLEAR |= RELAY_2;
			//adcSetVinToVout( true );
			#ifdef DEBUG
			flashLed();
			#endif
			break;
			
		case ADC_VIN_TO_VREF:				//0X66
			*pPORTHIO_CLEAR = ( GPIO_3|GPIO_2);
			ssync();
			ssync();
			*pPORTHIO_SET = ( GPIO_4 | GPIO_11 );
			//flashLed();
			//*pPORTHIO_CLEAR = RELAY_2;
			//ssync();
			//ssync();
			//*pPORTHIO_SET = RELAY_1;
			//ssync();
			//ssync();
			//adcSetVinToVout( false );
			#ifdef DEBUG
			flashLed();
			#endif
			break;
			
		case ADC_CONFIG_TO_VOUT:			//0X67
			*pPORTHIO_CLEAR = ( GPIO_11 );
			ssync();
			ssync();
			*pPORTHIO_SET = ( GPIO_2|GPIO_3 | GPIO_4 );
			//*pPORTHIO_CLEAR = RELAY_1;

			//*pPORTHIO_SET = RELAY_2;
			//ssync();
			//ssync();
			//adcSetConfigToVout( true );
			#ifdef DEBUG
			flashLed();
			#endif
			break;
			
		case ADC_CONFIG_TO_VREF:			//0X68
			//*pPORTHIO_CLEAR = ( GPIO_2|GPIO_3|GPIO_11 );
			//*pPORTHIO_SET = (RELAY_1|RELAY_2);
			//*pPORTHIO_SET |= RELAY_2;
			//adcSetConfigToVout( false );
			#ifdef DEBUG
			flashLed();
			#endif
			break;
		
		case ADC_VDD_FROM_EXT:				//0x69
			//*pPORTHIO_SET = GPIO_8;
			ssync();
			ssync();
			//*pPORTHIO_CLEAR = GPIO_7;
			bPowerVolt = true;
			//*pPORTHIO_SET = RELAY_5;
			//adcSetVddFromExt( true );
			#ifdef DEBUG
			flashLed();
			#endif
			break;
		
		case ADC_VDD_FROM_5V:
			//*pPORTHIO_SET = GPIO_7;
			ssync();
			ssync();
			//*pPORTHIO_CLEAR = GPIO_8;				//0x6A
			bPowerVolt = false;
			//*pPORTHIO_CLEAR = RELAY_5;
			//adcSetVddFromExt( false );
			#ifdef DEBUG
			flashLed();
			#endif
			break;
			
		case ADC_VDD_POWER_ON:	
			if( bPowerVolt == true )
			{
				*pPORTHIO_SET = GPIO_8 | GPIO_10;
				ssync();
				//flashLed();
				ssync();
				*pPORTHIO_CLEAR = GPIO_7 | GPIO_9;
			}
			else if( bPowerVolt == false )
			{
				*pPORTHIO_SET = GPIO_7 | GPIO_10;
				ssync();
				ssync();
				*pPORTHIO_CLEAR = GPIO_8 | GPIO_9;		
			}
		
			//*pPORTHIO_SET = RELAY_POWERON;
			//adcSetVddFromExt( false );
			#ifdef DEBUG
			flashLed();
			#endif
			break;
			
		case ADC_VDD_POWER_OFF:					//0x6C
			*pPORTHIO_CLEAR = GPIO_10;
			//*pPORTHIO_SET = GPIO_7;
			ssync();
			ssync();
			*pPORTHIO_SET = GPIO_8 | GPIO_7 | GPIO_9 ;
			//adcSetVddFromExt( false );
			#ifdef DEBUG
			flashLed();
			#endif
			break;
			
		case ADC_MODULE_510OUT:
			//*pPORTHIO_SET = GPIO_2 | GPIO_3 | GPIO_11;
			//*pPORTHIO_CLEAR = MODULE_15V_OUT;
			//adcSetVddFromExt( false );
			#ifdef DEBUG
			flashLed();
			#endif
			break;			
			
		case ADC_MODULE_AMPOUT:
			//*pPORTHIO_CLEAR = ( GPIO_3|GPIO_11|GPIO_4);
			ssync();
			ssync();
			//*pPORTHIO_SET = ( GPIO_2 );
			//*pPORTHIO_SET = MODULE_15V_OUT;
			//adcSetVddFromExt( false );
			#ifdef DEBUG
			flashLed();
			#endif
			break;
						
		
		case ADC_VIN_TO_VCS:
			*pPORTHIO_CLEAR = ( GPIO_3|GPIO_2|GPIO_11);
			ssync();
			ssync();
			*pPORTHIO_SET = ( GPIO_4 );
			//*pPORTHIO_SET = MODULE_15V_OUT;
			//adcSetVddFromExt( false );
			#ifdef DEBUG
			flashLed();
			#endif
			break;
			
		case ADC_SET_CURRENT_SENCE:
			*pPORTHIO_CLEAR = GPIO_1;
			ssync();
			#ifdef DEBUG
			flashLed();
			#endif
			break;	
			
		case ADC_BYPASS_CURRENT_SENCE:
			*pPORTHIO_SET = GPIO_1;
			ssync();
			#ifdef DEBUG
			flashLed();
			#endif
			break;
			
		case ADC_VIN_TO_510OUT:
			*pPORTHIO_CLEAR = GPIO_3;
			ssync();
			ssync();
			*pPORTHIO_SET = GPIO_2 | GPIO_4 | GPIO_11;
			#ifdef DEBUG
			flashLed();
			#endif
			break;
			
		case ADC_VIN_TO_MOUT:
			*pPORTHIO_CLEAR = GPIO_3 | GPIO_4 | GPIO_11;
			ssync();
			ssync();
			*pPORTHIO_SET = GPIO_2;
			#ifdef DEBUG
			flashLed();
			#endif
			break;
			
		case ADC_CONFIG_TO_510OUT:
			*pPORTHIO_SET = GPIO_2 | GPIO_3 | GPIO_4 | GPIO_11;
			ssync();
			ssync();
			#ifdef DEBUG
			flashLed();
			#endif
			break;
			
		case ADC_TRIM_RESULT_PASS:
			*pPORTHIO_SET = GPIO_15;
			ssync();
			ssync();
			#ifdef DEBUG
			flashLed();
			#endif
			break;
			
		case ADC_TRIM_RESULT_FAIL:
			*pPORTHIO_CLEAR = GPIO_15;
			ssync();
			ssync();
			#ifdef DEBUG
			flashLed();
			#endif
			break;
					
			
			
		default:
			break;
	} 

}



//-----------------------------------------------------------------------------
void initialGpiosForSignalPath(void)
{
	
	*pPORTH_FER &= ~(GPIO_1|GPIO_2|GPIO_3|GPIO_4|GPIO_5|GPIO_7|GPIO_8|GPIO_9|GPIO_10|GPIO_11|GPIO_15);
	*pPORTHIO_INEN &= ~(GPIO_1|GPIO_2|GPIO_3|GPIO_4|GPIO_5|GPIO_7|GPIO_8|GPIO_9|GPIO_10|GPIO_11|GPIO_15);
	
	*pPORTHIO_CLEAR |= GPIO_1|GPIO_11|GPIO_5;
	*pPORTHIO_SET |= GPIO_2|GPIO_3|GPIO_4|GPIO_7|GPIO_8|GPIO_9|GPIO_10|GPIO_15;
	
	*pPORTHIO_DIR |= (GPIO_1|GPIO_2|GPIO_3|GPIO_4|GPIO_5|GPIO_7|GPIO_8|GPIO_9|GPIO_10|GPIO_11);
	
	
	bInitGpiosForSignalPath = true;
	
}
