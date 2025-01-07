module day_trading (
    input wire clk,               // Single clock signal
    input wire rst,               // Reset signal
    input wire [15:0] stock_in,   // 16-bit input data
    output reg [15:0] action_out  // 16-bit output message
);

    // Generate inverted clock
    wire clk_inv;
    assign clk_inv = ~clk;

    // State encoding
    parameter IDLE             = 3'b000;
    parameter GET_DAY1         = 3'b001;
    parameter GET_DAY2         = 3'b010;
    parameter GET_DAY3         = 3'b011;
    parameter EVALUATE_TREND   = 3'b100;
    parameter DETERMINE_ACTION = 3'b101;

    // State registers
    reg [2:0] current_state_slave;   // Slave latch holds current state
    reg [2:0] next_state_master;     // Master latch holds next state

    // Registers to store day values and ownership
    reg [4:0] day1_master, day2_master, day3_master; // Master latch
    reg owned_master;                                 // Master latch

    reg [2:0] trend_master;                           // Master latch

    // Main state registers (held by slave latch)
    reg [4:0] day1, day2, day3;
    reg owned;
    reg [2:0] trend;

    // Intermediate combinational signals
    reg [2:0] next_state_combinational;
    reg [4:0] day1_combinational, day2_combinational, day3_combinational;
    reg owned_combinational;
    reg [2:0] trend_combinational;
    reg [15:0] action_out_combinational;

    // Master Latch: captures next state and combinational outputs during clk high
    always @ (clk or rst) begin
        if (rst) begin
            next_state_master <= IDLE;
            day1_master <= 5'b0;
            day2_master <= 5'b0;
            day3_master <= 5'b0;
            owned_master <= 1'b0;
            trend_master <= 3'b000;
            action_out <= 16'b0;
        end else if (clk) begin
            next_state_master <= next_state_combinational;
            day1_master <= day1_combinational;
            day2_master <= day2_combinational;
            day3_master <= day3_combinational;
            owned_master <= owned_combinational;
            trend_master <= trend_combinational;
            action_out <= action_out_combinational;
        end
    end

    // Slave Latch: updates current_state_slave during clk_inv high
    always @ (clk_inv or rst) begin
        if (rst) begin
            current_state_slave <= IDLE;
            day1 <= 5'b0;
            day2 <= 5'b0;
            day3 <= 5'b0;
            owned <= 1'b0;
            trend <= 3'b000;
        end else if (clk_inv) begin
            current_state_slave <= next_state_master;
            day1 <= day1_master;
            day2 <= day2_master;
            day3 <= day3_master;
            owned <= owned_master;
            trend <= trend_master;
        end
    end

    // Combinational logic for next_state
    always @(*) begin
        case (current_state_slave)
            IDLE: next_state_combinational = GET_DAY1;
            GET_DAY1: next_state_combinational = GET_DAY2;
            GET_DAY2: next_state_combinational = GET_DAY3;
            GET_DAY3: next_state_combinational = EVALUATE_TREND;
            EVALUATE_TREND: next_state_combinational = DETERMINE_ACTION;
            DETERMINE_ACTION: next_state_combinational = IDLE;
            default: next_state_combinational = IDLE;
        endcase
    end

    // Combinational logic for outputs and intermediate registers
    always @(*) begin
        // Default assignments to prevent inferred latches
        day1_combinational = day1_master;
        day2_combinational = day2_master;
        day3_combinational = day3_master;
        owned_combinational = owned_master;
        trend_combinational = trend_master;
        action_out_combinational = action_out;

        case (current_state_slave)
            IDLE: begin
                // No action in IDLE
                action_out_combinational = 16'b0;
            end
            GET_DAY1: begin
                // Extract day 1 value and ownership bit
                owned_combinational = stock_in[15];
                day1_combinational = stock_in[14:10];
            end
            GET_DAY2: begin
                // Extract day 2 value
                day2_combinational = stock_in[9:5];
            end
            GET_DAY3: begin
                // Extract day 3 value
                day3_combinational = stock_in[4:0];
            end
            EVALUATE_TREND: begin
                // Determine trend based on day values
                if (day1_master < day2_master && day2_master < day3_master)
                    trend_combinational = 3'b001; // Increasing a lot
                else if (day1_master > day2_master && day2_master > day3_master)
                    trend_combinational = 3'b010; // Decreasing a lot
                else if ((day1_master > day2_master && day3_master > day1_master) || 
                         (day3_master > day1_master && day3_master < day2_master))
                    trend_combinational = 3'b011;  // Increasing slightly
                else if ((day1_master < day2_master && day3_master < day1_master) || 
                         (day3_master > day2_master && day3_master < day1_master))
                    trend_combinational = 3'b100;   // Decreasing slightly
                else
                    trend_combinational = 3'b000; // Stagnant
            end
            DETERMINE_ACTION: begin
                // Determine action based on trend and ownership
                case (trend_master)
                    3'b001: begin // if increasing a lot
                        if (owned_combinational)
                            action_out_combinational = 16'd1; // "Sell all"
                        else
                            action_out_combinational = 16'd2; // "Stay out"
                    end
                    3'b010: begin // if decreasing a lot
                        if (owned_combinational)
                            action_out_combinational = 16'd3; // "Buy More"
                        else
                            action_out_combinational = 16'd4; // "Buy a lot"
                    end
                    3'b011: begin // if increasing some
                        if (owned_combinational)
                            action_out_combinational = 16'd5; // "Sell half"
                        else
                            action_out_combinational = 16'd2; // "Stay out"
                    end
                    3'b100: begin // if decreasing some
                        if (owned_combinational)
                            action_out_combinational = 16'd6; // "Buy a little more"
                        else
                            action_out_combinational = 16'd7; // "Buy a little"
                    end
                    3'b000: begin // stagnant trend
                        if (owned_combinational)
                            action_out_combinational = 16'd8; // "Hold"
                        else
                            action_out_combinational = 16'd7; // "Buy a little"
                    end
                    default: begin
                        // Failed Calculation
                        action_out_combinational = 16'd0;
                    end
                endcase
            end
            default: begin
                // Default state, no action
                action_out_combinational = 16'd0; // Failed calculation
            end
        endcase
    end

endmodule