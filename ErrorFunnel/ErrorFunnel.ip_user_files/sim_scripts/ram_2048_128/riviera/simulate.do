onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+ram_2048_128 -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ram_2048_128 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {ram_2048_128.udo}

run -all

endsim

quit -force
