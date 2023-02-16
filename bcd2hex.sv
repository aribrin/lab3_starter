// Implement this module to convert 4-bit binary into 
//the appropriate 7-wires to drive a seven segment display. 
//This is very similar to other seven segment decoders you 
//have build before.

// make sure you use the correct pattern of LEDs for each 
// of 0-9a-f  as in :
// 6:  _    9: _
//    |_      |_|
//    |_|       |

module bcd2hex(
	       output logic [6:0] hexSeg,
	       input logic [3:0] bcd
	       );

// TODO: Complete the body of the module

endmodule
