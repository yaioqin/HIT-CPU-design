onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib block_ram_opt

do {wave.do}

view wave
view structure
view signals

do {block_ram.udo}

run -all

quit -force
