/******************************************************************************
 * NESHLA Demo Code
 * (c) 2003-2005 Brian Provinciano
 * http://www.bripro.com
 ******************************************************************************
 * BASE.AS
 ******************************************************************************
 * The base definition
 ******************************************************************************/

/******************************************************************************/

#ines.mapper		"none" 
#ines.mirroring		"Vertical"
#ines.battery		"no"
#ines.trainer		"no"
#ines.fourscreen	"no"
//#ines.prgrepeat		8 // 128K

#rom.banksize		16K
#chr.banksize		8K

/******************************************************************************/

#include "nes.h"
#include "std.h"

#include "main.h"

// RAM DEFINITIONS
#include "ramdata.as"


/******************************************************************************
 * MAIN CODE					// 16K	(2 banks)
 ******************************************************************************/

/******************************************************************************/

#rom.bank			BANK_MAIN_ENTRY
#rom.org			0xC000

#interrupt.start    main
#interrupt.irq		int_irq
#interrupt.nmi		int_nmi

#include "visuals.as"
#include "main.as"

/******************************************************************************/


/*#############################################################################
 #  MMMM  MM  MM MMMM
 # MM  MM MM  MM MM MM
 # MM     MMMMMM MMMM 
 # MM  MM MM  MM MM MM
 #  MMMM  MM  MM MM  MM
  #############################################################################*/
 
#chr.banksize 		8K
#chr.bank 			CHR_FONT_BANK
#incbin "FONT2.CHR"
#chr.end   
/******************************************************************************/
