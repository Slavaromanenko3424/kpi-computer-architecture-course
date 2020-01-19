WAY_TO_FILE=/home/sr/labs/lab7/*.v
WAY_TO_ANOTHER_FILE=/home/sr/labs/lab7/alu/*.v
TB_FILE=mips_core_tb

.PHONY: all

all:
	 ncvlog -work work -cdslib /home/sr/labs/workspace/cds.lib -logfile ncvlog.log -errormax 15 -update -linedebug -status $(WAY_TO_FILE) $(WAY_TO_ANOTHER_FILE)
	 ncelab -work work -cdslib /home/sr/labs/workspace/cds.lib -logfile ncelab.log -errormax 15 -access +wc -status work.$(TB_FILE)
	 ncsim -gui -cdslib /home/sr/labs/workspace/cds.lib -logfile ncsim.log -errormax 15 -status work.$(TB_FILE):module
