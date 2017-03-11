Reading file 'compiled.txt'..
Fabric size (without IO tiles): 12 x 16

.io_tile 9 0
IoCtrl IE_1

.io_tile 1 17
IoCtrl IE_1

.io_tile 3 17
IoCtrl IE_1

.io_tile 6 17
IOB_1 PINTYPE_0
IoCtrl IE_0
IoCtrl REN_1
buffer io_1/D_IN_0 span4_horz_r_10
buffer local_g1_2 fabout
buffer span4_horz_r_10 local_g1_2

.io_tile 4 0
IoCtrl IE_0

.io_tile 13 11
IoCtrl IE_0

.io_tile 6 0
IoCtrl REN_0
IoCtrl REN_1

.io_tile 0 8
IoCtrl IE_0
IoCtrl IE_1
buffer local_g0_5 fabout
buffer span12_horz_5 local_g0_5

.io_tile 2 17
IoCtrl IE_1

.io_tile 11 17
IoCtrl IE_1

.io_tile 7 17
IoCtrl IE_0

.io_tile 13 9
IoCtrl IE_0

.io_tile 0 2
IOB_0 PINTYPE_0
IOB_0 PINTYPE_3
IOB_0 PINTYPE_4
IOB_1 PINTYPE_0
IOB_1 PINTYPE_3
IOB_1 PINTYPE_4
IoCtrl IE_0
IoCtrl IE_1
IoCtrl REN_0
IoCtrl REN_1
buffer local_g0_1 io_1/D_OUT_0
buffer local_g0_4 io_0/D_OUT_0
buffer span12_horz_1 local_g0_1
buffer span12_horz_12 local_g0_4

.logic_tile 6 9
LC_0 0110100110010110 1100 CarryEnable DffEnable
LC_1 0110100110010110 1100 CarryEnable DffEnable
LC_2 0110100110010110 1100 CarryEnable DffEnable
LC_3 0110100110010110 1100 CarryEnable DffEnable
LC_4 0110100110010110 1100 CarryEnable DffEnable
LC_5 0110100110010110 1100 CarryEnable DffEnable
LC_6 0110100110010110 0100 DffEnable
buffer carry_in carry_in_mux
buffer carry_in_mux lutff_0/in_3
buffer glb_netwk_4 lutff_global/clk
buffer glb_netwk_6 lutff_global/s_r
buffer local_g0_0 lutff_0/in_2
buffer local_g0_1 lutff_1/in_2
buffer local_g0_2 lutff_2/in_2
buffer local_g0_3 lutff_3/in_2
buffer local_g0_4 lutff_4/in_2
buffer local_g0_5 lutff_5/in_2
buffer local_g0_6 lutff_6/in_2
buffer lutff_0/cout lutff_1/in_3
buffer lutff_0/out local_g0_0
buffer lutff_1/cout lutff_2/in_3
buffer lutff_1/out local_g0_1
buffer lutff_2/cout lutff_3/in_3
buffer lutff_2/out local_g0_2
buffer lutff_3/cout lutff_4/in_3
buffer lutff_3/out local_g0_3
buffer lutff_4/cout lutff_5/in_3
buffer lutff_4/out local_g0_4
buffer lutff_5/cout lutff_6/in_3
buffer lutff_5/out local_g0_5
buffer lutff_6/out local_g0_6

.logic_tile 5 8
LC_1 0000000010000000 0000
LC_2 0000000100000000 0000
LC_3 0000000000000001 0000
LC_5 1000000000000000 0100 DffEnable
buffer glb_netwk_4 lutff_global/clk
buffer glb_netwk_6 lutff_global/s_r
buffer local_g0_1 lutff_3/in_0
buffer local_g0_2 lutff_global/cen
buffer local_g0_5 lutff_5/in_0
buffer local_g1_1 lutff_1/in_3
buffer local_g1_2 lutff_3/in_2
buffer local_g1_3 lutff_3/in_1
buffer local_g1_5 lutff_3/in_3
buffer local_g1_7 lutff_2/in_2
buffer local_g2_3 lutff_1/in_0
buffer local_g2_6 lutff_1/in_1
buffer local_g2_7 lutff_2/in_1
buffer local_g3_4 lutff_1/in_2
buffer local_g3_5 lutff_2/in_0
buffer lutff_1/out local_g0_1
buffer lutff_2/out local_g1_2
buffer lutff_3/out sp12_h_r_14
buffer lutff_3/out sp4_v_b_6
buffer lutff_5/out local_g0_5
buffer lutff_5/out local_g3_5
buffer neigh_op_rgt_3 local_g2_3
buffer neigh_op_rgt_4 local_g3_4
buffer neigh_op_rgt_6 local_g2_6
buffer neigh_op_rgt_7 local_g2_7
buffer neigh_op_top_3 local_g1_3
buffer neigh_op_top_5 local_g1_5
buffer sp4_h_r_15 local_g1_7
buffer sp4_v_b_1 local_g1_1
buffer sp4_v_b_18 local_g0_2

.logic_tile 5 5
ColBufCtrl glb_netwk_4
ColBufCtrl glb_netwk_6
LC_2 0110100110010110 0100 DffEnable
buffer glb_netwk_4 lutff_global/clk
buffer glb_netwk_6 lutff_global/s_r
buffer local_g0_2 lutff_2/in_2
buffer local_g2_5 lutff_2/in_1
buffer lutff_2/out local_g0_2
buffer lutff_2/out sp4_r_v_b_37
buffer lutff_2/out sp4_v_b_36
buffer lutff_2/out sp4_v_b_4
buffer sp12_v_b_13 local_g2_5
routing sp4_v_b_4 sp4_v_t_42

.logic_tile 4 2
LC_6 1000000000000000 0100 DffEnable
buffer glb_netwk_4 lutff_global/clk
buffer local_g0_2 lutff_global/cen
buffer local_g0_6 lutff_6/in_0
buffer lutff_6/out local_g0_6
buffer lutff_6/out sp12_h_r_20
buffer sp4_r_v_b_26 local_g0_2

.logic_tile 6 5
ColBufCtrl glb_netwk_4
ColBufCtrl glb_netwk_6

.logic_tile 6 8
CarryInSet
LC_0 0000000000000000 1000 CarryEnable
LC_1 0000000000000000 1000 CarryEnable
LC_2 0110100110010110 1100 CarryEnable DffEnable
LC_3 0110100110010110 1100 CarryEnable DffEnable
LC_4 0110100110010110 1100 CarryEnable DffEnable
LC_5 0110100110010110 1100 CarryEnable DffEnable
LC_6 0110100110010110 1100 CarryEnable DffEnable
LC_7 0110100110010110 1100 CarryEnable DffEnable
buffer glb_netwk_4 lutff_global/clk
buffer glb_netwk_6 lutff_global/s_r
buffer local_g0_2 lutff_2/in_2
buffer local_g0_3 lutff_3/in_2
buffer local_g0_4 lutff_4/in_2
buffer local_g0_5 lutff_1/in_2
buffer local_g0_6 lutff_6/in_2
buffer local_g0_7 lutff_7/in_2
buffer local_g1_0 lutff_0/in_1
buffer local_g2_5 lutff_5/in_2
buffer lutff_1/cout lutff_2/in_3
buffer lutff_2/cout lutff_3/in_3
buffer lutff_2/out local_g0_2
buffer lutff_3/cout lutff_4/in_3
buffer lutff_3/out local_g0_3
buffer lutff_4/cout lutff_5/in_3
buffer lutff_4/out local_g0_4
buffer lutff_5/cout lutff_6/in_3
buffer lutff_5/out local_g2_5
buffer lutff_5/out sp4_h_r_26
buffer lutff_6/cout lutff_7/in_3
buffer lutff_6/out local_g0_6
buffer lutff_7/out local_g0_7
buffer neigh_op_lft_5 local_g0_5
buffer sp4_v_b_0 local_g1_0

.logic_tile 5 9
LC_3 1000000000000000 0000
LC_5 0000000000000001 0000
buffer local_g0_2 lutff_5/in_3
buffer local_g2_0 lutff_5/in_1
buffer local_g2_5 lutff_5/in_0
buffer local_g3_1 lutff_3/in_1
buffer local_g3_2 lutff_3/in_0
buffer local_g3_3 lutff_3/in_3
buffer local_g3_4 lutff_3/in_2
buffer local_g3_6 lutff_5/in_2
buffer neigh_op_bnr_2 local_g0_2
buffer neigh_op_rgt_0 local_g2_0
buffer neigh_op_rgt_1 local_g3_1
buffer neigh_op_rgt_2 local_g3_2
buffer neigh_op_rgt_3 local_g3_3
buffer neigh_op_rgt_4 local_g3_4
buffer neigh_op_rgt_5 local_g2_5
buffer neigh_op_rgt_6 local_g3_6

.logic_tile 4 4
ColBufCtrl glb_netwk_4

.logic_tile 5 4
routing sp4_v_t_43 sp4_v_b_2

.logic_tile 6 12
ColBufCtrl glb_netwk_4
ColBufCtrl glb_netwk_6

.logic_tile 5 2
LC_1 1000000000000000 0000
buffer lutff_1/out sp12_h_r_10
buffer lutff_1/out sp12_v_b_18

