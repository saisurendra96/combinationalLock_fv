analyze -sv combination_lock.sv
elaborate -bbox_mul 75
clock clk
reset rst
prove -all
