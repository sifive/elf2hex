# elf2hex

    ./elf2hex [-h] --bit-width BIT_WIDTH --input INPUT.ELF [--output OUTPUT.HEX]

SiFive's Verilog test harnesses can't directly read ELF binaries but are
instead required to be provided with a hexidecimal dump of a particular
width and depth.  This project allows users to easily create these
files.
