module SPI_Slave (MOSI,MISO,SS_n,clk,rst_n,rx_data,tx_data,rx_valid,tx_valid);
    parameter IDLE = 0;
    parameter CHK_CMD = 1;
    parameter WRITE = 2;
    parameter READ_DATA = 3;
    parameter READ_ADD = 4;
    reg [2:0] CS, NS;

    input MOSI;
    output reg MISO;
    input SS_n,clk,rst_n;
    input [7:0] tx_data;
    output reg [9:0] rx_data;
    output reg rx_valid;
    input tx_valid;
    reg [3:0] counter = 0;
    reg wr_or_rd;
    reg [1:0] rx_data_MSB;
    reg [9:0] rx_data_in;
    reg [7:0] tx_data_out;
    reg shifter_loaded; 

    always @(posedge clk) begin
        if (~rst_n) begin
            rx_data_in <= 10'b0;
            rx_valid <= 1'b0;
            counter <= 0;
            rx_data <= 10'b0;
            MISO <= 1'b0;
            tx_data_out <= 8'b0;
            shifter_loaded <= 1'b0; 
        end else if (~SS_n) begin
            if (counter == 0)
                wr_or_rd <= MOSI;
            else if (counter == 3) begin
                rx_data_MSB <= rx_data_in[1:0];
                rx_data_in <= {rx_data_in[8:0], MOSI};
            end else
                rx_data_in <= {rx_data_in[8:0], MOSI};

            counter <= counter + 1;

            if (CS == READ_DATA && tx_valid) begin
                if (!shifter_loaded) begin 
                    tx_data_out <= tx_data;     
                    MISO <= tx_data[7];        
                    shifter_loaded <= 1'b1;    
                end else begin
                    tx_data_out <= {tx_data_out[6:0], 1'b0}; 
                    MISO <= tx_data_out[7];                 
                end
            end else if (CS != READ_DATA) begin
                MISO <= 1'b0;
            end

        end else begin
            rx_valid <= 1'b0;
            counter <= 0;
            shifter_loaded <= 1'b0; 
        end
        if (counter == 11) begin
            counter <= 0;
            if (CS == WRITE || CS == READ_ADD) begin
                rx_data <= rx_data_in;
                rx_valid <= 1'b1;
            end
        end
    end

    // Current state logic
    always @(posedge clk) begin
        if (~rst_n) begin
            CS <= IDLE;
        end else begin
            CS <= NS;
        end
    end

    // Next state logic 
    always @ (*) begin
        NS = CS;
        case (CS)
        IDLE:
            if(~SS_n)
                NS = CHK_CMD;
            else
                NS = IDLE;
        CHK_CMD:
            if (SS_n)
                NS = IDLE;
            else if (counter > 3) begin
                if (wr_or_rd == 1'b0)
                    NS = WRITE;
                else if (wr_or_rd == 1'b1 && rx_data_MSB == 2'b10)
                    NS = READ_ADD;
                else if (wr_or_rd == 1'b1 && rx_data_MSB == 2'b11)
                    NS = READ_DATA;
                else
                    NS = IDLE;
            end
            else
                NS = CHK_CMD;
        WRITE:
            if (SS_n)
                NS = IDLE;
            else
                NS = WRITE;
        READ_ADD:
            if (SS_n)
                NS = IDLE;
            else
                NS = READ_ADD;
        READ_DATA:
            if (SS_n)
                NS = IDLE;
            else
                NS = READ_DATA;
        default:
             NS = IDLE;
        endcase
    end

endmodule
