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
	always_comb begin
		case (bcd)
		4'b0000 : Segments = 7'b1000000;//0
		4'b0001	: Segments = 7'b1111001;
		4'b0010	: Segments = 7'b0100100;
		4'b0011	: Segments = 7'b0110000;
		4'b0100	: Segments = 7'b0011001;
		4'b0101	: Segments = 7'b0010010;//5
		4'b0110	: Segments = 7'b0000010;
		4'b0111	: Segments = 7'b1111000;
		4'b1000	: Segments = 7'b0000000;
		4'b1001	: Segments = 7'b0011000; //9
			
		4'b1010	: Segments = 7'b0001000;//a
		4'b1011	: Segments = 7'b0000011;
		4'b1100	: Segments = 7'b1000110;
		4'b1101	: Segments = 7'b0100001;
		4'b1110	: Segments = 7'b0000110;
		4'b1111	: Segments = 7'b0001110;//f
			
		
    endcase
	end

endmodule
