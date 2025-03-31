wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab069/Lab01/Exercise/01_RTL/CC.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/DUT_CC"
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/DUT_CC/avg\[5:0\]} \
{/TESTBED/DUT_CC/in_n0\[3:0\]} \
{/TESTBED/DUT_CC/in_n1\[3:0\]} \
{/TESTBED/DUT_CC/in_n2\[3:0\]} \
{/TESTBED/DUT_CC/in_n3\[3:0\]} \
{/TESTBED/DUT_CC/in_n4\[3:0\]} \
{/TESTBED/DUT_CC/in_norm\[0:4\]} \
{/TESTBED/DUT_CC/in_sorted\[0:4\]} \
{/TESTBED/DUT_CC/mean_norm\[4:0\]} \
{/TESTBED/DUT_CC/opt\[2:0\]} \
{/TESTBED/DUT_CC/out_n\[9:0\]} \
{/TESTBED/DUT_CC/tmp_res\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 1330.019519 -snap {("G2" 0)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectAll -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 11909.720234 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 49392.088484 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 77262.042941 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 87237.189330 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 88325.387118 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 87539.466493 -snap {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetCursor -win $_nWave1 78229.329863 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 87660.377358 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 86693.090436 -snap {("G1" 8)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetRadix -win $_nWave1 -2Com
wvExit
