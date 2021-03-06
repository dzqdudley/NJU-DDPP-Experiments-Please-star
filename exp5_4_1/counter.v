module counter(CLK, en, pause, clr, HEX0, HEX1, ending);
 input CLK;
 input pause;
 input clr;
 input en;
 output reg [6:0] HEX0;
 output reg [6:0] HEX1;
 output reg ending=0;
 reg [7:0] count=0;
 always @ (posedge CLK)
	begin
	if(!en)
		count<=count;
		else
		begin
			if(clr||count==99)
			begin
				count<=0;
				ending=1;
			end
			else
			begin
				ending=0;
				if(pause)
					count<=count;
				else
					count<=count+1;
			end
		end
		
	end
 always @(count)
 begin
			if(count%10==0)
				HEX0=7'b1000000;
			else if(count%10==1)
				HEX0=7'b1111001;
			else if(count%10==2)
				HEX0=7'b0100100;	
			else if(count%10==3)
				HEX0=7'b0110000;
			else if(count%10==4)
				HEX0=7'b0011001;
			else if(count%10==5)
				HEX0=7'b0010010;
			else if(count%10==6)
				HEX0=7'b0000010;	
			else if(count%10==7)
				HEX0=7'b1111000;	
			else if(count%10==8)
				HEX0=7'b0000000;
			else if(count%10==9)
				HEX0=7'b0010000;
				
			if(count/10==0)
				HEX1=7'b1000000;
			else if(count/10==1)
				HEX1=7'b1111001;
			else if(count/10==2)
				HEX1=7'b0100100;	
			else if(count/10==3)
				HEX1=7'b0110000;
			else if(count/10==4)
				HEX1=7'b0011001;
			else if(count/10==5)
				HEX1=7'b0010010;
			else if(count/10==6)
				HEX1=7'b0000010;	
			else if(count/10==7)
				HEX1=7'b1111000;	
			else if(count/10==8)
				HEX1=7'b0000000;
			else if(count/10==9)
				HEX1=7'b0010000;		
 end
endmodule
