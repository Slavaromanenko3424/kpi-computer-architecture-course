all:
	 ncvlog -work work -cdslib /home/sr/labs/workspace/cds.lib -logfile ncvlog.log -errormax 15 -update -linedebug -status /home/sr/labs/lab5-6/*.v /home/sr/labs/lab5-6/alu/*.v
	 ncelab -work work -cdslib /home/sr/labs/workspace/cds.lib -logfile ncelab.log -errormax 15 -access +wc -status work.mips_core_tb
	 ncsim -gui -cdslib /home/sr/labs/workspace/cds.lib -logfile ncsim.log -errormax 15 -status work.mips_core_tb:module
