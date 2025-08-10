module SPI_Slave_tb;
    reg MOSI;
    reg SS_n;
    reg clk;
    reg rst_n;
    reg [7:0] tx_data; 
    reg tx_valid;      

    wire MISO;
    wire [9:0] rx_data;
    wire rx_valid;

    SPI_Slave uut (
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

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        MOSI = 0;
        SS_n = 1;
        rst_n = 0;
        tx_data = 8'hBE;
        tx_valid = 0;

        $display("--- Starting SPI Slave Test Bench (Original Code) ---");

        #10 rst_n = 1;
        $display("Time: %0t, Reset de-asserted. Current State (CS): %0d", $time, uut.CS);
        #20;
       
         // 2. Write Address Command

        $display("\n--- Test Case: Write Address (0x0A) ---");
        SS_n = 0;
        $display("Time: %0t, SS_n asserted. Starting Write Address command.", $time);
        @(negedge clk) MOSI = 0;
        @(negedge clk) MOSI = 0;
        @(negedge clk) MOSI = 0;
        @(negedge clk) MOSI = 0;
        @(negedge clk) MOSI = 0;
        @(negedge clk) MOSI = 1;
        @(negedge clk) MOSI = 0;
        @(negedge clk) MOSI = 1;
        @(negedge clk) MOSI = 0;
        @(negedge clk) MOSI = 0;
        @(negedge clk) MOSI = 0;
        #10 SS_n = 1;
        $display("Time: %0t, SS_n de-asserted. Write Address Command finished.", $time);
        $display("Time: %0t, rx_data: %b (Expected: 10'b0000010100), rx_valid: %b", $time, rx_data, rx_valid);
        #20;

        // 3. Write Data Command

        $display("\n--- Test Case: Write Data (0x6D) ---");
        SS_n = 0;
        $display("Time: %0t, SS_n asserted. Starting Write Data command.", $time);
        @(negedge clk) MOSI = 0;
        @(negedge clk) MOSI = 0;
        @(negedge clk) MOSI = 1;
        @(negedge clk) MOSI = 1;
        @(negedge clk) MOSI = 0;
        @(negedge clk) MOSI = 1;
        @(negedge clk) MOSI = 1;
        @(negedge clk) MOSI = 0;
        @(negedge clk) MOSI = 1;
        @(negedge clk) MOSI = 0;
        @(negedge clk) MOSI = 1;
        #10 SS_n = 1;
        $display("Time: %0t, SS_n de-asserted. Write Data Command finished.", $time);
        $display("Time: %0t, rx_data: %b (Expected: 10'b0110110101), rx_valid: %b", $time, rx_data, rx_valid);
        #20;

       // 4. Read Address Command

        $display("\n--- Test Case: Read Address (0x2B) ---");
        SS_n = 0;
        $display("Time: %0t, SS_n asserted. Starting Read Address command.", $time);
        @(negedge clk) MOSI = 1;
        @(negedge clk) MOSI = 1;
        @(negedge clk) MOSI = 0;
        @(negedge clk) MOSI = 1;
        @(negedge clk) MOSI = 0;
        @(negedge clk) MOSI = 1;
        @(negedge clk) MOSI = 0;
        @(negedge clk) MOSI = 1;
        @(negedge clk) MOSI = 1;
        @(negedge clk) MOSI = 1;
        @(negedge clk) MOSI = 0;
        #10 SS_n = 1;
        $display("Time: %0t, SS_n de-asserted. Read Address Command finished.", $time);
        $display("Time: %0t, rx_data: %b (Expected: 10'b0010101110), rx_valid: %b", $time, rx_data, rx_valid);
        #20;

        // 5. Read Data Command

        $display("\n--- Test Case: Read Data (Slave outputs 0xBE) ---");
        SS_n = 0;
        $display("Time: %0t, SS_n asserted. Starting Read Data command.", $time);
        @(negedge clk) MOSI = 1;
        @(negedge clk) MOSI = 1;
        @(negedge clk) MOSI = 1;
        @(negedge clk) MOSI = 0;
        @(negedge clk) MOSI = 0;
        @(negedge clk) MOSI = 0;
        @(negedge clk) MOSI = 0;
        @(negedge clk) MOSI = 0;
        @(negedge clk) MOSI = 0;
        @(negedge clk) MOSI = 1;
        @(negedge clk) MOSI = 1;
        #5;
        tx_valid = 1;
        $display("Time: %0t, tx_valid asserted. Slave should start sending data on MISO.", $time);
        repeat (8) @(negedge clk) $display("Time: %0t, MISO: %b", $time, MISO);
        #10 tx_valid = 0;
        #10 SS_n = 1;
        $display("Time: %0t, SS_n de-asserted. Read Data Command finished.", $time);
        $display("Time: %0t, rx_data: %b, rx_valid: %b", $time, rx_data, rx_valid);
        #20;

        $display("\n--- Test Bench Finished ---");
        $stop;
    end

    initial begin
        $monitor("Time: %0t, CS: %0d, NS: %0d, MOSI: %b, MISO: %b, SS_n: %b, rst_n: %b, counter: %0d, wr_or_rd: %b, rx_data_MSB: %b, rx_data_in: %b, rx_data: %b, rx_valid: %b, tx_data: %h, tx_valid: %b",
                 $time, uut.CS, uut.NS, MOSI, MISO, SS_n, rst_n, uut.counter, uut.wr_or_rd, uut.rx_data_MSB, uut.rx_data_in, rx_data, rx_valid, tx_data, tx_valid);
    end
endmodule
