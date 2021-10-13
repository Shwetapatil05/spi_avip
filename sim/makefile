all:
	make clean; make compile; make simulate

compile:
	vlib work; 
	vlog -sv \
	+incdir+../env \
	+incdir+../slave \
	+incdir+../test \
	../test/test_pkg.sv \
	../env/hvl_top.sv \
	../../hdl_top/hdl_top.sv

simulate:
	vsim -novopt work.hvl_top work.hdl_top -c -do "log -r /*; add wave -r /*; run -all;" \
	-wlf waveform.wlf

clean:
	rm -rf work/ transcript vsim.wlf
