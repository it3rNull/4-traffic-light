git pull
ghdl -a dff.vhd
ghdl -a tl.vhd
ghdl -a tl_tb.vhd
ghdl -e tl_tb
ghdl -r tl_tb --stop-time=200ns --wave=tl_tb.ghw
gtkwave tl_tb.ghw