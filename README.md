# SPI-Slave-with-single-port-RAM
The SPI (Serial Peripheral Interface) slave module is a key element in synchronous serial communication, built to function within a master-slave arrangement. In this setup, the master device drives all data transactions by supplying a clock signal and issuing commands, while the slave responds accordingly.

In SPI communication, data from the master is received through the MOSI (Master Out, Slave In) line, while the slave transmits back to the master via the MISO (Master In, Slave Out) line. All transfers are timed precisely with the clock originating from the master, enabling coordinated, full-duplex communication where sending and receiving occur simultaneously. The module’s behavior can be tuned for different SPI modes, determined by clock polarity and phase settings.



<img width="704" height="275" alt="image" src="https://github.com/user-attachments/assets/fc57a0ad-74b6-46b1-b700-c16de7dc7f1e" />

