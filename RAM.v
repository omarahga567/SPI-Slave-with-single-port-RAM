module RAM (din,clk,rst_n,rx_valid,dout,tx_valid);
parameter MEM_DEPTH = 256;
parameter ADDR_SIZE = 8;
input [9:0] din;
input clk,rst_n,rx_valid;
output reg [7:0] dout;
output reg tx_valid;
reg [7:0] wr_addr,rd_addr;

reg [7:0] mem [255:0];

always @(posedge clk) begin
    if (~rst_n) begin
        dout <= 0;
        wr_addr <=0;
        rd_addr <=0;
    end else if (rx_valid) begin
        case (din[9])
            1'b0: begin
                if (din[8] == 0) 
                    wr_addr <= din[7:0];
                else 
                    mem [wr_addr] <= din[7:0];
            end
            1'b1: begin
               if (din[8] == 0)
                    rd_addr <= din[7:0];
                else 
                    dout <= mem[rd_addr];
                    tx_valid <= 1'b1;
            end

        endcase
    end
end
endmodule