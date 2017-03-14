Reading file 'compiled.txt'..
Fabric size (without IO tiles): 12 x 16

.io_tile 9 0
IoCtrl IE_1

.io_tile 1 17
IoCtrl IE_1

.io_tile 3 17
IoCtrl IE_1

.io_tile 4 0
IoCtrl IE_0

.io_tile 0 4
IOB_0 PINTYPE_0
IoCtrl IE_0
IoCtrl REN_1
buffer io_0/D_IN_0 span4_vert_b_0
routing span4_vert_b_0 span4_vert_t_12

.io_tile 13 11
IoCtrl IE_0

.io_tile 6 0
IoCtrl REN_0
IoCtrl REN_1
routing span4_vert_13 span4_horz_r_2

.io_tile 0 8
IoCtrl IE_0
IoCtrl IE_1
buffer local_g1_0 fabout
buffer span4_vert_b_0 local_g1_0

.io_tile 2 17
IoCtrl IE_1

.io_tile 11 17
IoCtrl IE_1

.io_tile 7 0
IoCtrl IE_0
IoCtrl IE_1
buffer local_g1_6 fabout
buffer span4_horz_r_6 local_g1_6

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
buffer local_g0_2 io_0/D_OUT_0
buffer local_g1_0 io_1/D_OUT_0
buffer span12_horz_0 local_g1_0
buffer span12_horz_2 local_g0_2

.logic_tile 6 9
LC_2 1000000000000000 0000
LC_5 0110100110010110 0100 DffEnable
buffer glb_netwk_0 lutff_global/s_r
buffer glb_netwk_6 lutff_global/clk
buffer local_g0_2 lutff_5/in_1
buffer local_g0_5 lutff_5/in_2
buffer lutff_2/out local_g0_2
buffer lutff_5/out local_g0_5
buffer lutff_5/out sp4_v_b_10
routing sp4_v_b_10 sp4_v_t_43

.logic_tile 6 2
routing sp4_h_l_46 sp4_v_t_41
routing sp4_v_t_41 sp4_v_b_0

.logic_tile 6 10
CarryInSet
LC_0 0000000000000000 1000 CarryEnable
LC_1 0000000000000000 1000 CarryEnable
LC_2 0110100110010110 1100 CarryEnable DffEnable
LC_3 0110100110010110 1100 CarryEnable DffEnable
LC_4 0110100110010110 1100 CarryEnable DffEnable
LC_5 0110100110010110 1100 CarryEnable DffEnable
LC_6 0110100110010110 1100 CarryEnable DffEnable
LC_7 0110100110010110 1100 CarryEnable DffEnable
buffer glb_netwk_0 lutff_global/s_r
buffer glb_netwk_6 lutff_global/clk
buffer local_g0_2 lutff_2/in_2
buffer local_g0_3 lutff_3/in_2
buffer local_g0_4 lutff_4/in_2
buffer local_g0_5 lutff_0/in_1
buffer local_g0_6 lutff_6/in_2
buffer local_g0_7 lutff_7/in_2
buffer local_g1_6 lutff_1/in_2
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
buffer lutff_6/cout lutff_7/in_3
buffer lutff_6/out local_g0_6
buffer lutff_6/out sp4_v_b_44
buffer lutff_7/out local_g0_7
buffer neigh_op_bot_5 local_g0_5
buffer neigh_op_lft_6 local_g1_6

.logic_tile 5 11
LC_1 0000000010000000 0000
LC_2 0000000000000001 0000
LC_5 1000000000000000 0000
LC_6 0000000000000001 0000
LC_7 0000000100000000 0000
buffer local_g0_1 lutff_7/in_2
buffer local_g0_2 lutff_2/in_0
buffer local_g0_3 lutff_6/in_3
buffer local_g0_4 lutff_6/in_0
buffer local_g0_5 lutff_2/in_1
buffer local_g0_6 lutff_1/in_3
buffer local_g1_2 lutff_6/in_1
buffer local_g1_5 lutff_6/in_2
buffer local_g1_6 lutff_7/in_0
buffer local_g1_7 lutff_5/in_1
buffer local_g2_1 lutff_5/in_0
buffer local_g2_2 lutff_2/in_2
buffer local_g2_4 lutff_5/in_3
buffer local_g2_5 lutff_5/in_2
buffer local_g2_6 lutff_1/in_1
buffer local_g2_7 lutff_1/in_2
buffer local_g3_0 lutff_2/in_3
buffer local_g3_2 lutff_1/in_0
buffer local_g3_5 lutff_7/in_1
buffer lutff_1/out local_g0_1
buffer lutff_2/out local_g1_2
buffer lutff_5/out local_g3_5
buffer lutff_6/out local_g1_6
buffer lutff_7/out sp12_h_r_6
buffer neigh_op_bnr_5 local_g0_5
buffer neigh_op_bnr_7 local_g1_7
buffer neigh_op_bot_4 local_g0_4
buffer neigh_op_rgt_0 local_g3_0
buffer neigh_op_rgt_1 local_g2_1
buffer neigh_op_rgt_2 local_g2_2
buffer neigh_op_rgt_4 local_g2_4
buffer neigh_op_rgt_5 local_g2_5
buffer neigh_op_rgt_6 local_g2_6
buffer neigh_op_tnr_2 local_g3_2
buffer neigh_op_top_3 local_g0_3
buffer neigh_op_top_5 local_g1_5
buffer sp4_r_v_b_30 local_g0_6
buffer sp4_r_v_b_33 local_g0_2
buffer sp4_r_v_b_39 local_g2_7

.logic_tile 4 2
LC_1 1000000000000000 0100 DffEnable
buffer glb_netwk_6 lutff_global/clk
buffer local_g0_1 lutff_1/in_0
buffer local_g3_3 lutff_global/cen
buffer lutff_1/out local_g0_1
buffer lutff_1/out sp12_h_r_10
buffer sp4_h_r_35 local_g3_3

.logic_tile 2 11
routing sp12_h_r_1 sp12_v_b_1

.logic_tile 2 4
ColBufCtrl glb_netwk_6

.logic_tile 2 1
buffer sp12_v_b_21 sp4_v_b_22

.logic_tile 5 12
ColBufCtrl glb_netwk_0
ColBufCtrl glb_netwk_6
LC_3 0000000000000001 0000
LC_5 0000000100000000 0000
buffer local_g0_3 lutff_5/in_0
buffer local_g1_7 lutff_3/in_3
buffer local_g3_0 lutff_5/in_2
buffer local_g3_1 lutff_5/in_1
buffer local_g3_3 lutff_3/in_1
buffer local_g3_4 lutff_3/in_0
buffer local_g3_6 lutff_3/in_2
buffer neigh_op_bnr_3 local_g0_3
buffer neigh_op_bnr_7 local_g1_7
buffer neigh_op_rgt_0 local_g3_0
buffer neigh_op_rgt_1 local_g3_1
buffer neigh_op_rgt_3 local_g3_3
buffer neigh_op_rgt_4 local_g3_4
buffer neigh_op_rgt_6 local_g3_6

.logic_tile 4 4
ColBufCtrl glb_netwk_6

.logic_tile 2 2
LC_6 1000000000000000 0100 DffEnable
buffer glb_netwk_6 lutff_global/clk
buffer local_g0_6 lutff_6/in_0
buffer local_g2_2 lutff_global/cen
buffer lutff_6/out local_g0_6
buffer lutff_6/out sp12_h_r_4
buffer sp12_v_b_18 local_g2_2
routing sp4_v_b_11 sp4_h_r_11

.logic_tile 6 11
LC_0 0110100110010110 1100 CarryEnable DffEnable
LC_1 0110100110010110 1100 CarryEnable DffEnable
LC_2 0110100110010110 1100 CarryEnable DffEnable
LC_3 0110100110010110 1100 CarryEnable DffEnable
LC_4 0110100110010110 1100 CarryEnable DffEnable
LC_5 0110100110010110 1100 CarryEnable DffEnable
LC_6 0110100110010110 1100 CarryEnable DffEnable
LC_7 0110100110010110 1100 CarryEnable DffEnable
buffer carry_in carry_in_mux
buffer carry_in_mux lutff_0/in_3
buffer glb_netwk_0 lutff_global/s_r
buffer glb_netwk_6 lutff_global/clk
buffer local_g0_0 lutff_0/in_2
buffer local_g0_1 lutff_1/in_2
buffer local_g0_2 lutff_2/in_2
buffer local_g0_3 lutff_3/in_2
buffer local_g0_4 lutff_4/in_2
buffer local_g0_5 lutff_5/in_2
buffer local_g0_6 lutff_6/in_2
buffer local_g0_7 lutff_7/in_2
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
buffer lutff_6/cout lutff_7/in_3
buffer lutff_6/out local_g0_6
buffer lutff_7/out local_g0_7

.logic_tile 6 12
ColBufCtrl glb_netwk_0
ColBufCtrl glb_netwk_6
LC_0 0110100110010110 1100 CarryEnable DffEnable
LC_1 0110100110010110 1100 CarryEnable DffEnable
LC_2 0110100110010110 1100 CarryEnable DffEnable
LC_3 0110100110010110 1100 CarryEnable DffEnable
LC_4 0110100110010110 1100 CarryEnable DffEnable
LC_5 0110100110010110 1100 CarryEnable DffEnable
LC_6 0110100110010110 0100 DffEnable
buffer carry_in carry_in_mux
buffer carry_in_mux lutff_0/in_3
buffer glb_netwk_0 lutff_global/s_r
buffer glb_netwk_6 lutff_global/clk
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
buffer lutff_5/out sp4_v_b_26
buffer lutff_6/out local_g0_6

.logic_tile 5 10
LC_4 0000000000000001 0000
LC_6 1000000000000000 0100 DffEnable
buffer glb_netwk_0 lutff_global/s_r
buffer glb_netwk_6 lutff_global/clk
buffer local_g0_6 lutff_6/in_0
buffer local_g1_6 lutff_4/in_1
buffer local_g2_2 lutff_4/in_0
buffer local_g2_3 lutff_4/in_3
buffer local_g2_4 lutff_4/in_2
buffer local_g3_3 lutff_global/cen
buffer lutff_6/out local_g0_6
buffer lutff_6/out local_g1_6
buffer neigh_op_rgt_2 local_g2_2
buffer neigh_op_rgt_3 local_g2_3
buffer neigh_op_rgt_4 local_g2_4
buffer sp4_r_v_b_43 local_g3_3

