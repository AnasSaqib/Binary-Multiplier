view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 2ns sim:/multiplier/start 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 2ns sim:/multiplier/reset 
wave create -driver freeze -pattern constant -value 1111 -range 3 0 -starttime 0ns -endtime 2ns sim:/multiplier/A 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 1111 -range 3 0 -starttime 0ps -endtime 2ps sim:/multiplier/B 
wave create -driver freeze -pattern constant -value 1111 -range 3 0 -starttime 0ns -endtime 2ns sim:/multiplier/B 
WaveExpandAll -1
wave create -driver freeze -pattern clock -initialvalue 1 -period 100ps -dutycycle 50 -starttime 0ns -endtime 2ns sim:/multiplier/clk 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 100ps -dutycycle 50 -starttime 0ns -endtime 12ns Edit:/multiplier/clk 
WaveCollapseAll -1
wave clipboard restore
