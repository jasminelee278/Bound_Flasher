module bound_flasher(clk, rst_n, flick, LED);

input clk, rst_n,flick;
output [15:0] LED;

wire clk, rst_n, flick;
reg [15:0] LED;
reg [1:0] operation;
reg [4:0] N;

//operation mode
parameter IDLE 		  	=  2'b00;
parameter UP			=  2'B01;
parameter DOWN 		  	=  2'b10;
parameter KICK_BACK	  	=  2'b11;

//States
parameter INIT         	=  6'b000001;
parameter ZERO_TO_FTEEN =  6'b000010;
parameter OFF_TO_FOUR  	=  6'b000100;
parameter FOUR_TO_TEN  	=  6'b001000;
parameter OFF_TO_ZERO  	=  6'b010000;
parameter ZERO_TO_FIVE 	=  6'b100000;
parameter SIZE         	=  6        ;
reg [SIZE - 1: 0] state;
reg [SIZE - 1: 0] next_state;
reg FLICKED_AT_5;
reg FLICKED_AT_0;

// Change state block
always @(posedge clk or negedge rst_n)
begin
	if(!rst_n) begin
		state <= INIT;
	end
	else begin
		state <= next_state;
	end
end

// Operation on N block
always @(posedge clk or negedge rst_n)
begin
	if (!rst_n)
		N <= 0;
    else if(operation == UP) begin
        N <= N + 1;
    end
	else if(operation == DOWN) begin
        N <= N - 1;
    end
    else if(operation == IDLE) begin
        N <= N;
    end
	else if(operation == KICK_BACK) begin
        N <= N + 1;
    end
end

//FSM block
always @(operation or state)
begin
	case(state)
	INIT: begin
		if(operation == UP) begin
			next_state = ZERO_TO_FTEEN;
		end
		else begin
			next_state = INIT;
		end
	end
	
	ZERO_TO_FTEEN: begin
		if(operation == UP) begin
			next_state = ZERO_TO_FTEEN;
		end
		else begin
			next_state = OFF_TO_FOUR;
		end
	end
	
	OFF_TO_FOUR: begin
        if(operation == KICK_BACK) begin
			next_state = ZERO_TO_FTEEN;
		end
		else if(operation == DOWN) begin
			next_state = OFF_TO_FOUR;
		end
		else begin
			next_state = FOUR_TO_TEN;
		end
	end
	
	FOUR_TO_TEN: begin
		if(operation == UP) begin
			next_state = FOUR_TO_TEN;
		end
		else begin
			next_state = OFF_TO_ZERO;
		end
	end
	
	OFF_TO_ZERO: begin
        if(operation == KICK_BACK) begin
			next_state = FOUR_TO_TEN;
		end	
		else if(operation == DOWN) begin
			next_state = OFF_TO_ZERO;
		end
		else begin
			next_state = ZERO_TO_FIVE;
		end
	end
	
	ZERO_TO_FIVE: begin	
		if(operation == DOWN) begin
			next_state = INIT;
		end
		else begin
			next_state = ZERO_TO_FIVE;
		end
	end
	
	default: next_state = INIT;
	endcase
end

//Logic block
always @(state or flick or N) begin

	case(state)
	INIT: begin
		// if (N == 5'd0) begin
		// 	if (flick) operation = UP;
		// 	else operation = DOWN;
		// end
		if (N != 5'd0) operation = DOWN;
		else if(flick && N == 5'd0) begin
			operation = UP;
			FLICKED_AT_0 = 1'b0;
        	FLICKED_AT_5 = 1'b0;
		end
		else operation = IDLE;
	end
	
	ZERO_TO_FTEEN: begin
		if (N == 5'd16) operation = DOWN;
		else operation = UP;
	end
	
	OFF_TO_FOUR: begin
        if (N == 5'd5 && flick && FLICKED_AT_5 == 1'b0) begin
            operation = KICK_BACK;
            FLICKED_AT_5 = 1'b1;
        end
		else if (N != 5'd5) operation = DOWN;
		else begin
			operation = UP;
			FLICKED_AT_0 = 1'b0;
        	FLICKED_AT_5 = 1'b0;
		end
	end
	
	FOUR_TO_TEN: begin
		if (N == 5'd11) operation = DOWN;
		else operation = UP;
	end
	
	OFF_TO_ZERO: begin
        if (N == 5'd5 && flick && FLICKED_AT_5 == 1'b0) begin
            operation = KICK_BACK;
            FLICKED_AT_5 = 1'b1;
        end 
        else if (N == 5'd0 && flick && FLICKED_AT_0 == 1'b0) begin
            operation = KICK_BACK;
            FLICKED_AT_0 = 1'b1;
        end 
		else if (N == 5'd0) begin
			operation = UP;
			FLICKED_AT_0 = 1'b0;
        	FLICKED_AT_5 = 1'b0;
		end
		else operation = DOWN;
	end
	
	ZERO_TO_FIVE: begin
		if (N == 5'd5) operation = DOWN;
		else operation = UP;
	end
	
	default: operation = IDLE;
	
	endcase
end

//Decode block
always @(N) begin
    case (N)
        5'd0:
            LED = 0;
        5'd1:
            LED = {1{1'd1}};
        5'd2:
            LED = {2{1'd1}};
        5'd3:
            LED = {3{1'd1}};
        5'd4:
            LED = {4{1'd1}};
        5'd5:
            LED = {5{1'd1}};
        5'd6:
            LED = {6{1'd1}};
        5'd7:
            LED = {7{1'd1}};
        5'd8:
            LED = {8{1'd1}};
        5'd9:
            LED = {9{1'd1}};
        5'd10:
            LED = {10{1'd1}};
        5'd11:
            LED = {11{1'd1}};
        5'd12:
            LED = {12{1'd1}};
        5'd13:
            LED = {13{1'd1}};
        5'd14:
            LED = {14{1'd1}};
        5'd15:
            LED = {15{1'd1}};
        5'd16:
            LED = {16{1'd1}};
        default:
            LED = 0;
    endcase
end

endmodule

