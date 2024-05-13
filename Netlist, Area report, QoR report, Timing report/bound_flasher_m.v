
// Generated by Cadence Genus(TM) Synthesis Solution 19.13-s073_1
// Generated on: Apr 13 2024 17:06:11 +07 (Apr 13 2024 10:06:11 UTC)

// Verification Directory fv/bound_flasher 

module bound_flasher(clk, rst_n, flick, LED);
  input clk, rst_n, flick;
  output [15:0] LED;
  wire clk, rst_n, flick;
  wire [15:0] LED;
  wire [4:0] N;
  wire [5:0] state;
  wire FLICKED_AT_0, FLICKED_AT_5, UNCONNECTED, UNCONNECTED0,
       UNCONNECTED1, UNCONNECTED2, n_0, n_2;
  wire n_4, n_5, n_7, n_8, n_9, n_10, n_11, n_12;
  wire n_14, n_17, n_18, n_19, n_20, n_21, n_22, n_23;
  wire n_24, n_25, n_26, n_27, n_28, n_29, n_30, n_32;
  wire n_33, n_35, n_36, n_37, n_38, n_39, n_40, n_41;
  wire n_43, n_45, n_46, n_47, n_48, n_49, n_50, n_51;
  wire n_52, n_53, n_54, n_56, n_57, n_58, n_59, n_60;
  wire n_61, n_62, n_63, n_64, n_65, n_66, n_69, n_71;
  wire n_72, n_73, n_74, n_75, n_81, n_82, n_83, n_85;
  wire n_89, n_90, n_92, n_95, n_100, n_101, n_102, n_104;
  wire n_105, n_106, n_107, n_108, n_109, n_110, n_111, n_113;
  wire n_114, n_116, n_117, n_118, n_119, n_120, n_121, n_122;
  wire n_123, n_124, n_125, n_126, n_129, n_130, n_131, n_132;
  wire n_133, n_134, n_135, n_136, n_137, n_138, n_139, n_140;
  wire n_141, n_142, n_143, n_144, n_145, n_146, n_147, n_148;
  wire n_149, n_151, n_152, n_154, n_155, n_156, n_157, n_158;
  wire n_159, n_161, n_162, n_163, n_164, n_165, n_166, n_167;
  wire n_168, n_172, n_173, n_174, n_175, n_180, n_181, n_182;
  DFFRHQX8 \N_reg[3] (.RN (rst_n), .CK (clk), .D (n_167), .Q (N[3]));
  DFFRHQX8 \N_reg[1] (.RN (rst_n), .CK (clk), .D (n_168), .Q (N[1]));
  DFFRHQX8 \N_reg[4] (.RN (rst_n), .CK (clk), .D (n_165), .Q (N[4]));
  DFFRHQX8 \N_reg[2] (.RN (rst_n), .CK (clk), .D (n_166), .Q (N[2]));
  NAND3X2 g4710__2398(.A (n_146), .B (n_181), .C (n_159), .Y (n_167));
  NAND3X2 g4711__5107(.A (n_138), .B (n_154), .C (n_156), .Y (n_166));
  NAND3X2 g4712__6260(.A (n_141), .B (n_163), .C (n_161), .Y (n_165));
  DFFRHQX4 \N_reg[0] (.RN (rst_n), .CK (clk), .D (n_162), .Q (N[0]));
  AOI21X4 g4716__4319(.A0 (n_174), .A1 (n_147), .B0 (n_151), .Y
       (n_164));
  DFFSHQX1 \state_reg[0] (.SN (rst_n), .CK (clk), .D (n_149), .Q
       (state[0]));
  NAND2X4 g4732__8428(.A (N[4]), .B (n_158), .Y (n_163));
  DFFRX2 \state_reg[1] (.RN (rst_n), .CK (clk), .D (n_143), .Q
       (state[1]), .QN (UNCONNECTED));
  DFFRHQX1 \state_reg[4] (.RN (rst_n), .CK (clk), .D (n_142), .Q
       (state[4]));
  NAND2BX4 g4719__6783(.AN (LED[0]), .B (n_155), .Y (n_161));
  NAND2X4 g4720__3680(.A (N[3]), .B (n_158), .Y (n_159));
  NAND2X4 g4721__1617(.A (N[1]), .B (n_158), .Y (n_157));
  NAND2BX4 g4722__2802(.AN (n_51), .B (n_155), .Y (n_156));
  NAND2X4 g4723__1705(.A (N[2]), .B (n_158), .Y (n_154));
  AOI21X1 g4729__5122(.A0 (n_148), .A1 (n_132), .B0 (n_155), .Y
       (n_152));
  NOR2X4 g4727__8246(.A (n_174), .B (n_144), .Y (n_151));
  OAI21X1 g4731__7098(.A0 (n_148), .A1 (n_147), .B0 (n_173), .Y
       (n_149));
  NAND2X2 g4734__6131(.A (n_63), .B (n_147), .Y (n_146));
  INVX6 g4737(.A (n_145), .Y (n_158));
  CLKINVX8 g4736(.A (n_144), .Y (n_155));
  OAI22X1 g4726__1881(.A0 (n_106), .A1 (n_139), .B0 (n_105), .B1
       (n_122), .Y (n_143));
  NAND2X2 g4738__5115(.A (n_82), .B (n_147), .Y (n_141));
  OAI211X1 g4730__7482(.A0 (n_139), .A1 (n_136), .B0 (n_116), .C0
       (n_129), .Y (n_140));
  OR2X1 g4733__4733(.A (n_139), .B (n_49), .Y (n_138));
  AND2X1 g4735__6161(.A (n_114), .B (n_139), .Y (n_137));
  NOR2X8 g4745__9315(.A (n_117), .B (n_134), .Y (n_139));
  TLATX1 FLICKED_AT_0_reg(.G (n_130), .D (n_175), .Q (FLICKED_AT_0),
       .QN (UNCONNECTED0));
  TLATNXL FLICKED_AT_5_reg(.GN (n_131), .D (n_110), .Q (FLICKED_AT_5),
       .QN (UNCONNECTED1));
  NOR3X8 g4749__9945(.A (n_120), .B (n_118), .C (n_126), .Y (n_134));
  CLKAND2X4 g4754__2883(.A (n_125), .B (n_132), .Y (n_135));
  NOR2BX1 g4747__2346(.AN (n_132), .B (n_124), .Y (n_131));
  NAND3BXL g4748__1666(.AN (n_111), .B (n_121), .C (n_129), .Y (n_130));
  OAI211X1 g4751__5477(.A0 (n_123), .A1 (n_122), .B0 (n_113), .C0
       (n_121), .Y (n_124));
  INVX1 g4760(.A (n_118), .Y (n_119));
  NOR2X8 g4775__2398(.A (n_109), .B (n_107), .Y (n_120));
  NAND2BX1 g4767__6260(.AN (n_113), .B (n_122), .Y (n_129));
  AND2X1 g4766__8428(.A (n_109), .B (n_108), .Y (n_110));
  NOR2X6 g4764__5526(.A (n_75), .B (n_108), .Y (n_118));
  NAND2X4 g4778__6783(.A (n_85), .B (n_106), .Y (n_107));
  OAI21X4 g4782__3680(.A0 (n_101), .A1 (n_105), .B0 (n_102), .Y
       (n_114));
  OA22X1 g4784__1617(.A0 (LED[15]), .A1 (n_102), .B0 (n_101), .B1
       (n_148), .Y (n_104));
  NAND2XL g4757__2802(.A (flick), .B (n_100), .Y (n_121));
  INVX1 g4776(.A (n_108), .Y (n_122));
  NAND2X2 g4785__7098(.A (n_41), .B (n_95), .Y (LED[8]));
  OAI2BB1X2 g4779__6131(.A0N (N[1]), .A1N (n_81), .B0 (n_90), .Y
       (LED[1]));
  OAI21X2 g4780__5115(.A0 (N[4]), .A1 (n_48), .B0 (n_90), .Y (LED[2]));
  AO21X1 g4774__7482(.A0 (n_64), .A1 (n_47), .B0 (n_89), .Y (n_116));
  NAND2X2 g4786__6161(.A (n_32), .B (n_92), .Y (LED[4]));
  OAI21X1 g4761__9315(.A0 (n_81), .A1 (n_62), .B0 (n_66), .Y (n_82));
  NAND2BX1 g4794__9945(.AN (n_105), .B (n_101), .Y (n_113));
  NAND2X4 g4795__2883(.A (n_105), .B (n_123), .Y (n_109));
  CLKAND2X3 g4769__2346(.A (n_69), .B (n_74), .Y (n_111));
  AND2X4 g4783__1666(.A (n_72), .B (flick), .Y (n_108));
  INVX1 g4791(.A (n_95), .Y (LED[11]));
  INVX1 g4799(.A (n_182), .Y (LED[13]));
  NOR2X4 g4796__7410(.A (n_71), .B (n_73), .Y (n_106));
  NOR2X4 g4803__6417(.A (n_58), .B (n_65), .Y (n_85));
  INVX1 g4801(.A (n_92), .Y (LED[7]));
  INVX1 g4800(.A (n_90), .Y (LED[3]));
  NOR2X6 g4806__2398(.A (n_14), .B (LED[15]), .Y (n_90));
  NOR2X6 g4797__5107(.A (n_46), .B (LED[15]), .Y (n_95));
  INVX2 g4818(.A (n_123), .Y (n_69));
  NAND2BX1 g4802__4319(.AN (LED[15]), .B (n_66), .Y (LED[14]));
  INVX1 g4815(.A (n_65), .Y (n_89));
  NAND2X6 g4813__8428(.A (n_57), .B (n_54), .Y (n_105));
  NOR2X6 g4807__5526(.A (n_64), .B (LED[15]), .Y (n_92));
  ADDHX1 g4777__6783(.A (N[3]), .B (n_45), .CO (n_62), .S (n_63));
  AOI21X1 g4804__3680(.A0 (N[4]), .A1 (n_61), .B0 (n_74), .Y (LED[0]));
  NOR3X6 g4811__1617(.A (n_60), .B (n_23), .C (n_53), .Y (n_71));
  NOR2X6 g4812__2802(.A (n_60), .B (n_38), .Y (n_73));
  NOR2X4 g4820__5122(.A (n_52), .B (n_39), .Y (n_65));
  INVX2 g4816(.A (n_58), .Y (n_148));
  NAND2X8 g4823__8246(.A (n_57), .B (n_43), .Y (n_123));
  INVX3 g4817(.A (n_101), .Y (n_56));
  NOR2X6 g4840__6131(.A (n_17), .B (n_53), .Y (n_54));
  NOR2X4 g4821__1881(.A (n_52), .B (n_36), .Y (n_58));
  CLKAND2X12 g4824__5115(.A (n_7), .B (n_35), .Y (LED[15]));
  ADDHX1 g4792__7482(.A (n_29), .B (n_40), .CO (n_50), .S (n_51));
  AOI21X1 g4819__4733(.A0 (N[2]), .A1 (n_48), .B0 (n_47), .Y (n_49));
  NAND2X2 g4810__6161(.A (n_45), .B (n_64), .Y (n_66));
  CLKAND2X6 g4822__9315(.A (n_33), .B (n_25), .Y (n_101));
  AND2X6 g4814__9945(.A (n_81), .B (n_28), .Y (n_74));
  NOR2X6 g4839__2346(.A (n_9), .B (n_60), .Y (n_43));
  NAND2BX1 g4830__7410(.AN (n_40), .B (n_64), .Y (n_41));
  NAND2X4 g4841__6417(.A (n_24), .B (n_37), .Y (n_39));
  NAND2X4 g4843__5477(.A (n_27), .B (n_37), .Y (n_38));
  NAND2X2 g4842__2398(.A (n_20), .B (n_19), .Y (n_36));
  NOR2X4 g4828__5107(.A (N[2]), .B (n_11), .Y (n_35));
  CLKINVX6 g4848(.A (n_37), .Y (n_53));
  NAND2BX1 g4831__4319(.AN (n_40), .B (n_33), .Y (n_32));
  NOR2X4 g4833__5526(.A (n_29), .B (n_26), .Y (n_46));
  INVX2 g4835(.A (n_28), .Y (n_61));
  NOR2X4 g4851__3680(.A (n_22), .B (n_21), .Y (n_27));
  AND2X1 g4844__1617(.A (n_29), .B (n_30), .Y (n_47));
  CLKAND2X3 g4845__2802(.A (n_10), .B (n_5), .Y (n_28));
  CLKINVX6 g4860(.A (n_26), .Y (n_64));
  NOR3X4 g4838__1705(.A (N[3]), .B (n_0), .C (N[1]), .Y (n_25));
  NOR2X2 g4867__5122(.A (state[2]), .B (n_4), .Y (n_24));
  NAND2X4 g4866__8246(.A (n_22), .B (n_21), .Y (n_23));
  CLKAND2X3 g4834__7098(.A (N[2]), .B (n_30), .Y (n_45));
  NOR2X8 g4856__6131(.A (n_18), .B (state[5]), .Y (n_37));
  CLKINVX6 g4849(.A (n_20), .Y (n_60));
  NOR2X4 g4862__1881(.A (n_18), .B (n_8), .Y (n_19));
  NAND2BX2 g4852__5115(.AN (state[3]), .B (state[2]), .Y (n_17));
  OA21X1 g4837__7482(.A0 (N[3]), .A1 (N[2]), .B0 (n_81), .Y (n_14));
  NOR2X8 g4868__4733(.A (n_22), .B (n_2), .Y (n_57));
  INVX3 g4846(.A (n_10), .Y (n_11));
  NAND2X4 g4863__6161(.A (n_18), .B (n_8), .Y (n_9));
  NOR2X2 g4864__9315(.A (N[1]), .B (n_81), .Y (n_7));
  NOR2X4 g4857__9945(.A (state[3]), .B (state[2]), .Y (n_20));
  NAND2X8 g4869__2883(.A (n_81), .B (N[3]), .Y (n_26));
  INVX1 g4861(.A (n_30), .Y (n_48));
  CLKAND2X3 g4855__2346(.A (N[2]), .B (n_81), .Y (n_33));
  NOR2X2 g4865__1666(.A (N[2]), .B (N[1]), .Y (n_5));
  NOR2X6 g4853__7410(.A (N[0]), .B (N[3]), .Y (n_10));
  NAND2BX2 g4854__6417(.AN (FLICKED_AT_0), .B (flick), .Y (n_12));
  NOR2X2 g4858__5477(.A (N[0]), .B (N[1]), .Y (n_40));
  CLKAND2X6 g4870__2398(.A (N[0]), .B (N[1]), .Y (n_30));
  BUFX6 g4872(.A (state[0]), .Y (n_2));
  BUFX6 g4875(.A (state[1]), .Y (n_22));
  BUFX6 g4878(.A (state[4]), .Y (n_18));
  INVX2 g4883(.A (N[2]), .Y (n_29));
  NOR2X2 g4898__5107(.A (n_120), .B (n_100), .Y (n_125));
  OR2X2 g4900__6260(.A (n_74), .B (n_123), .Y (n_75));
  NOR2X2 g4902__4319(.A (FLICKED_AT_5), .B (n_56), .Y (n_72));
  NAND2X6 g4904__8428(.A (n_135), .B (n_139), .Y (n_144));
  NAND2X6 g4906__5526(.A (n_133), .B (n_139), .Y (n_145));
  NAND2X6 g4908__6783(.A (n_12), .B (n_111), .Y (n_132));
  AND2X2 g4910__3680(.A (n_74), .B (n_73), .Y (n_100));
  DFFRX2 \state_reg[2] (.RN (rst_n), .CK (clk), .D (n_137), .Q
       (state[2]), .QN (UNCONNECTED2));
  NAND2BX2 g4922__2802(.AN (n_123), .B (n_135), .Y (n_136));
  DFFRHQX2 \state_reg[5] (.RN (rst_n), .CK (clk), .D (n_152), .Q
       (state[5]));
  NAND2X4 g4934__5122(.A (n_116), .B (n_104), .Y (n_117));
  NAND2X4 g4942__7098(.A (n_73), .B (n_59), .Y (n_83));
  CLKINVX4 g4944(.A (n_139), .Y (n_147));
  OAI2BB1X2 g4789__4950(.A0N (N[0]), .A1N (n_46), .B0 (n_182), .Y
       (LED[12]));
  CLKINVX6 g4952(.A (N[4]), .Y (n_81));
  DFFRX2 \state_reg[3] (.RN (rst_n), .CK (clk), .D (n_140), .Q
       (state[3]), .QN (n_4));
  NOR2BX2 g2(.AN (n_85), .B (n_114), .Y (n_172));
  NOR2BXL g4955(.AN (n_83), .B (n_120), .Y (n_173));
  OAI2BB1X2 g4958(.A0N (n_30), .A1N (n_33), .B0 (n_92), .Y (LED[6]));
  OAI2BB1X2 g4959(.A0N (n_64), .A1N (n_30), .B0 (n_95), .Y (LED[10]));
  OAI2BB1X2 g4960(.A0N (N[1]), .A1N (n_33), .B0 (n_92), .Y (LED[5]));
  OAI2BB1X2 g4961(.A0N (N[1]), .A1N (n_64), .B0 (n_95), .Y (LED[9]));
  OAI2BB1X4 g4962(.A0N (n_180), .A1N (n_61), .B0 (n_155), .Y (n_181));
  INVX3 g4964(.A (n_57), .Y (n_52));
  NAND2BX1 g4966(.AN (n_50), .B (N[3]), .Y (n_180));
  NOR2BX1 g4968(.AN (n_48), .B (n_40), .Y (n_174));
  INVX3 g4970(.A (n_2), .Y (n_21));
  INVX3 g4972(.A (N[0]), .Y (n_0));
  INVX3 g4974(.A (state[5]), .Y (n_8));
  INVX3 g4976(.A (n_71), .Y (n_102));
  NAND2X4 g4772__4978(.A (n_74), .B (flick), .Y (n_59));
  NOR2BX1 g4980(.AN (n_111), .B (n_12), .Y (n_175));
  AOI21X1 g4936__4982(.A0 (n_89), .A1 (n_119), .B0 (n_147), .Y (n_142));
  CLKXOR2X1 g4717__4984(.A (N[0]), .B (n_145), .Y (n_162));
  INVX3 g4986(.A (n_135), .Y (n_133));
  NAND2X4 g4753__4988(.A (n_172), .B (n_83), .Y (n_126));
  NAND2X2 g4912__4990(.A (n_157), .B (n_164), .Y (n_168));
  AOI21X4 g4991(.A0 (N[1]), .A1 (n_46), .B0 (LED[15]), .Y (n_182));
endmodule
