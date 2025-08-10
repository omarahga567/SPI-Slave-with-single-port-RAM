vlib work
vlog SPI_Slave.v SPI_Slave_tb.v  SPI_RAM_wrapper.v
vsim -voptargs=+acc work.SPI_Slave_tb
add wave *
run -all
#quit -sim