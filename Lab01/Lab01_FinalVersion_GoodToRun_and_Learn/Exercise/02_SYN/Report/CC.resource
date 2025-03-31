 
****************************************
Report : resources
Design : CC
Version: T-2022.03
Date   : Sat May 11 23:46:02 2024
****************************************


Resource Report for this hierarchy in file ../01_RTL/CC.v
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| div_2          | DW_div_tc      | a_width=10 | div_80 (CC.v:80)           |
|                |                | b_width=4  |                            |
| div_4          | DW_div_tc      | a_width=13 | div_90 (CC.v:90)           |
|                |                | b_width=3  |                            |
| gt_x_11        | DW_cmp         | width=4    | sort1/cmp0/gt_100 (CC.v:100) |
| gt_x_13        | DW_cmp         | width=4    | sort1/cmp8/gt_100 (CC.v:100) |
| gt_x_15        | DW_cmp         | width=4    | sort1/cmp7/gt_100 (CC.v:100) |
| gt_x_17        | DW_cmp         | width=4    | sort1/cmp6/gt_100 (CC.v:100) |
| gt_x_19        | DW_cmp         | width=4    | sort1/cmp5/gt_100 (CC.v:100) |
| gt_x_21        | DW_cmp         | width=4    | sort1/cmp4/gt_100 (CC.v:100) |
| gt_x_23        | DW_cmp         | width=4    | sort1/cmp3/gt_100 (CC.v:100) |
| gt_x_25        | DW_cmp         | width=4    | sort1/cmp2/gt_100 (CC.v:100) |
| gt_x_27        | DW_cmp         | width=4    | sort1/cmp1/gt_100 (CC.v:100) |
| DP_OP_97J1_122_9502             |            |                            |
|                | DP_OP_97J1_122_9502 |       |                            |
| DP_OP_98J1_123_7616             |            |                            |
|                | DP_OP_98J1_123_7616 |       |                            |
| DP_OP_99J1_124_4508             |            |                            |
|                | DP_OP_99J1_124_4508 |       |                            |
| DP_OP_100J1_125_7573            |            |                            |
|                | DP_OP_100J1_125_7573 |      |                            |
=============================================================================

Datapath Report for DP_OP_97J1_122_9502
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_97J1_122_9502  | add_61 (CC.v:61) sub_62 (CC.v:62) sub_63 (CC.v:63)  |
|                      | sub_64 (CC.v:64) sub_65 (CC.v:65) sub_66 (CC.v:66)  |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 4     |                                          |
| I2    | PI   | Unsigned | 4     |                                          |
| I3    | PI   | Unsigned | 4     |                                          |
| I4    | PI   | Unsigned | 4     |                                          |
| I5    | PI   | Unsigned | 4     |                                          |
| T0    | IFO  | Unsigned | 5     | I1 + I2 (CC.v:61)                        |
| T46   | IFO  | Unsigned | 4     | T0[4:1]                                  |
| O1    | PO   | Signed   | 5     | I1 - T46 (CC.v:62)                       |
| O2    | PO   | Signed   | 5     | I3 - T46 (CC.v:63)                       |
| O3    | PO   | Signed   | 5     | I4 - T46 (CC.v:64)                       |
| O4    | PO   | Signed   | 5     | I5 - T46 (CC.v:65)                       |
| O5    | PO   | Signed   | 5     | I2 - T46 (CC.v:66)                       |
==============================================================================

Datapath Report for DP_OP_98J1_123_7616
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_98J1_123_7616  | mult_85 (CC.v:85) sub_85 (CC.v:85)                  |
|                      | mult_85_2 (CC.v:85) sub_86 (CC.v:86)                |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 5     |                                          |
| I2    | PI   | Signed   | 5     |                                          |
| I3    | PI   | Signed   | 5     |                                          |
| T12   | IFO  | Signed   | 8     | I1 * $unsigned(2'b11) (CC.v:85)          |
| T13   | IFO  | Signed   | 10    | I2 * I3 (CC.v:85)                        |
| O1    | PO   | Signed   | 10    | T12 - T13 (CC.v:85)                      |
| O2    | PO   | Signed   | 10    | $signed(1'b0) - O1 (CC.v:86)             |
==============================================================================

Datapath Report for DP_OP_99J1_124_4508
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_99J1_124_4508  | mult_90 (CC.v:90) add_90 (CC.v:90)                  |
|                      | add_90_2 (CC.v:90) mult_90_2 (CC.v:90)              |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 5     |                                          |
| I2    | PI   | Signed   | 5     |                                          |
| I3    | PI   | Signed   | 5     |                                          |
| I4    | PI   | Signed   | 5     |                                          |
| I5    | PI   | Signed   | 5     |                                          |
| T17   | IFO  | Signed   | 10    | I1 * I2 (CC.v:90)                        |
| T19   | IFO  | Signed   | 10    | I4 * I5 (CC.v:90)                        |
| O1    | PO   | Signed   | 12    | I3 + T17 + T19 (CC.v:90)                 |
==============================================================================

Datapath Report for DP_OP_100J1_125_7573
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_100J1_125_7573 | add_80 (CC.v:80) add_80_2 (CC.v:80)                 |
|                      | add_80_3 (CC.v:80) add_80_4 (CC.v:80)               |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 5     |                                          |
| I2    | PI   | Signed   | 5     |                                          |
| I3    | PI   | Signed   | 5     |                                          |
| I4    | PI   | Signed   | 5     |                                          |
| I5    | PI   | Signed   | 5     |                                          |
| O1    | PO   | Signed   | 9     | I1 + I2 + I3 + I4 + I5 (CC.v:80)         |
==============================================================================


Resource Report for Ungrouped Hierarchy *cell*J3*1857/u_div/u_absval_AAbs
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| NEG            | DW01_inc       | width=13   | NEG                        |
=============================================================================


Resource Report for Ungrouped Hierarchy div_4
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
=============================================================================


Resource Report for Ungrouped Hierarchy *cell*J2*1643/u_div/u_absval_AAbs
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| NEG            | DW01_inc       | width=10   | NEG                        |
=============================================================================


Resource Report for Ungrouped Hierarchy div_2
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
=============================================================================


Datapath Extraction Report

Information: Operator associated with resources 'lt_86 (CC.v:86)' in design 'CC' breaks the datapath extraction because there is leakage due to truncation on the fanout of its driver 'sub_85 (CC.v:85)'.  (HDL-120)

Information: Operator associated with resources 'mult_90_2 (CC.v:90)' in design 'CC' breaks the datapath extraction because there is leakage due to truncation on the fanout of its driver 'div_80 (CC.v:80)'.  (HDL-120)


Implementation Report
===============================================================================
|                    |                  | Current            | Set            |
| Cell               | Module           | Implementation     | Implementation |
===============================================================================
| div_2              | DW_div_tc        | cla3               |                |
| div_4              | DW_div_tc        | cla2               |                |
| gt_x_11            | DW_cmp           | apparch (area)     |                |
| gt_x_13            | DW_cmp           | apparch (area)     |                |
| gt_x_15            | DW_cmp           | apparch (area)     |                |
| gt_x_17            | DW_cmp           | apparch (area)     |                |
| gt_x_19            | DW_cmp           | apparch (area)     |                |
| gt_x_21            | DW_cmp           | apparch (area)     |                |
| gt_x_23            | DW_cmp           | apparch (area)     |                |
| gt_x_25            | DW_cmp           | apparch (area)     |                |
| gt_x_27            | DW_cmp           | apparch (area)     |                |
| NEG                | DW01_inc         | cla                |                |
| NEG                | DW01_inc         | cla                |                |
| DP_OP_97J1_122_9502                   |                    |                |
|                    | DP_OP_97J1_122_9502 | str (area,speed)                 |
| DP_OP_98J1_123_7616                   |                    |                |
|                    | DP_OP_98J1_123_7616 | str (area,speed)                 |
|                    |                  | mult_arch: and     |                |
| DP_OP_99J1_124_4508                   |                    |                |
|                    | DP_OP_99J1_124_4508 | str (area,speed)                 |
|                    |                  | mult_arch: and     |                |
| DP_OP_100J1_125_7573                  |                    |                |
|                    | DP_OP_100J1_125_7573 | str (area,speed)                |
===============================================================================

1
