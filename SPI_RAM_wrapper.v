module SPI_RAM_wrapper (
    input  MOSI,
    output MISO,
    input  SS_n,
    input  clk,
    input  rst_n
);
    wire [9:0] rx_data;    
    wire       rx_valid;   
    wire [7:0] tx_data;    
    wire       tx_valid;  

    // Instantiate SPI Slave
    SPI_Slave spi_slave_inst (
        .MOSI(MOSI),
        .MISO(MISO),
        .SS_n(SS_n),
        .clk(clk),
        .rst_n(rst_n),
        .rx_data(rx_data),     
        .tx_data(tx_data),     
        .rx_valid(rx_valid),   
        .tx_valid(tx_valid)    
    );
    RAM ram_inst (
        .din(rx_data),         
        .clk(clk),
        .rst_n(rst_n),
        .rx_valid(rx_valid),   
        .dout(tx_data),        
        .tx_valid(tx_valid)    
    );
endmodule
