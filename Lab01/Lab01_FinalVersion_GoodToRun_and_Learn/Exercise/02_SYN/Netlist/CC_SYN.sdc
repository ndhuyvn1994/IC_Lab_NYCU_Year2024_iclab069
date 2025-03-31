###################################################################

# Created by write_sdc on Sat May 11 23:46:02 2024

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max slow -max_library slow\
                         -min fast -min_library fast
set_wire_load_mode top
set_wire_load_model -name umc18_wl10 -library slow
set_load -pin_load 0.05 [get_ports {out_n[9]}]
set_load -pin_load 0.05 [get_ports {out_n[8]}]
set_load -pin_load 0.05 [get_ports {out_n[7]}]
set_load -pin_load 0.05 [get_ports {out_n[6]}]
set_load -pin_load 0.05 [get_ports {out_n[5]}]
set_load -pin_load 0.05 [get_ports {out_n[4]}]
set_load -pin_load 0.05 [get_ports {out_n[3]}]
set_load -pin_load 0.05 [get_ports {out_n[2]}]
set_load -pin_load 0.05 [get_ports {out_n[1]}]
set_load -pin_load 0.05 [get_ports {out_n[0]}]
set_max_delay 20  -from [list [get_ports {opt[2]}] [get_ports {opt[1]}] [get_ports {opt[0]}]    \
[get_ports {in_n0[3]}] [get_ports {in_n0[2]}] [get_ports {in_n0[1]}]           \
[get_ports {in_n0[0]}] [get_ports {in_n1[3]}] [get_ports {in_n1[2]}]           \
[get_ports {in_n1[1]}] [get_ports {in_n1[0]}] [get_ports {in_n2[3]}]           \
[get_ports {in_n2[2]}] [get_ports {in_n2[1]}] [get_ports {in_n2[0]}]           \
[get_ports {in_n3[3]}] [get_ports {in_n3[2]}] [get_ports {in_n3[1]}]           \
[get_ports {in_n3[0]}] [get_ports {in_n4[3]}] [get_ports {in_n4[2]}]           \
[get_ports {in_n4[1]}] [get_ports {in_n4[0]}]]  -to [list [get_ports {out_n[9]}] [get_ports {out_n[8]}] [get_ports            \
{out_n[7]}] [get_ports {out_n[6]}] [get_ports {out_n[5]}] [get_ports           \
{out_n[4]}] [get_ports {out_n[3]}] [get_ports {out_n[2]}] [get_ports           \
{out_n[1]}] [get_ports {out_n[0]}]]
