// Verilog netlist created by Tang Dynasty v5.6.69102
// Mon Mar 13 15:48:58 2023

`timescale 1ns / 1ps
module can
  (
  bus2ip_addr,
  bus2ip_cs,
  bus2ip_data,
  bus2ip_reset,
  bus2ip_rnw,
  can_clk,
  can_phy_rx,
  sys_clk,
  can_phy_tx,
  ip2bus_ack,
  ip2bus_data,
  ip2bus_intrevent
  );

  input [5:0] bus2ip_addr;
  input bus2ip_cs;
  input [31:0] bus2ip_data;
  input bus2ip_reset;
  input bus2ip_rnw;
  input can_clk;
  input can_phy_rx;
  input sys_clk;
  output can_phy_tx;
  output ip2bus_ack;
  output [31:0] ip2bus_data;
  output ip2bus_intrevent;

  parameter CAN_AF_CNT = 2;
  parameter CAN_AF_NOT_ZERO = 1'b1;
  parameter CAN_CNT_FILTERS = 2;
  parameter CAN_RXF_DEPTH = 2;
  parameter CAN_RX_FIFO_WIDTH = 1;
  parameter CAN_TXF_DEPTH = 2;
  parameter CAN_TX_FIFO_WIDTH = 1;
  wire [1:0] al_71387e99;
  wire [7:0] al_9b1aea19;
  wire [8:0] al_393235c7;
  wire [1:0] al_23a17017;
  wire [1:0] al_36c01d6;
  wire [1:0] al_cad3b7fb;
  wire [1:0] al_20402b23;
  wire [2:0] al_1a18409a;
  wire [31:0] al_bbad3df6;
  wire [15:0] al_920be55;
  wire [11:0] al_e51dd35d;
  wire [15:0] al_c7470c2f;
  wire [11:0] al_b177c678;
  wire [1:0] al_dd104e51;
  wire [15:0] al_5702ad79;
  wire [15:0] al_5e43b7ef;
  wire [15:0] al_3b157964;
  wire [1:0] al_c8acd60a;
  wire [1:0] al_d3e03398;
  wire [1:0] al_db217863;
  wire [1:0] al_980d37dc;
  wire [1:0] al_c9571165;
  wire [1:0] al_89587562;
  wire [1:0] al_9ad8f828;
  wire [31:0] al_ff999015;
  wire [1:0] al_88860dc0;
  wire [1:0] al_a47d7a31;
  wire [1:0] al_5a30c52e;
  wire [1:0] al_6b8e9c96;
  wire [1:0] al_8c7f4338;
  wire [1:0] al_6d883dbb;
  wire [1:0] al_c9c2f504;
  wire [1:0] al_7aff4c0e;
  wire [1:0] al_fc2b211e;
  wire [5:0] al_31dabf2c;
  wire [8:0] al_43aa735b;
  wire [8:0] al_5a2dd01f;
  wire [31:0] al_8dfe7777;
  wire [1:0] al_ed3ff5cc;
  wire [1:0] al_94b7b2f;
  wire [1:0] al_b046ac38;
  wire [1:0] al_71f53036;
  wire [1:0] al_a6fd6169;
  wire [1:0] al_12b5b7bf;
  wire [1:0] al_15affc73;
  wire [1:0] al_573612fd;
  wire [31:0] al_b5e9db1c;
  wire [31:0] al_ebdd342c;
  wire [1:0] al_bbae41a6;
  wire [1:0] al_3dabf54d;
  wire [1:0] al_d744d2dc;
  wire [1:0] al_d7673322;
  wire [1:0] al_2997e985;
  wire [1:0] al_d3124ca5;
  wire [1:0] al_77fb6286;
  wire [5:0] al_5afa8999;
  wire [5:0] al_dba1ada6;
  wire [1:0] al_e8488bce;
  wire [1:0] al_e53d355d;
  wire [31:0] al_60c9b11d;
  wire [31:0] al_7ba31aac;
  wire  al_8c8aff1c;
  wire [2:0] al_3cadaca3;
  wire [2:0] al_34fe35ec;
  wire [3:0] al_5a0c5b2e;
  wire [14:0] al_7013407a;
  wire [14:0] al_c8d7daaf;
  wire [3:0] al_5e5be818;
  wire [15:0] al_d7293817;
  wire [15:0] al_4b750e7c;
  wire [7:0] al_f0bd1bf4;
  wire [7:0] al_8bb9d017;
  wire [7:0] al_35c86450;
  wire [7:0] al_adc199ce;
  wire [7:0] al_a3aa82f0;
  wire [7:0] al_b3047f66;
  wire [7:0] al_6642c13d;
  wire [2:0] al_71bf180;
  wire  al_44271056;
  wire  al_413324f5;
  wire  al_9f621c;
  wire  al_77d8628;
  wire  al_329ebca6;
  wire [3:0] al_239870ba;
  wire [1:0] al_c5a7a034;
  wire [5:0] al_dbed1f4a;
  wire [5:0] al_53412fa1;
  wire [5:0] al_37bd3c9f;
  wire [3:0] al_deee15b7;
  wire [31:0] al_2339cbd5;
  wire [3:0] al_e3e0848b;
  wire [4:0] al_9d0466fd;
  wire [3:0] al_b850157e;
  wire [7:0] al_b0941661;
  wire [7:0] al_a82321a2;
  wire [3:0] al_c54d0810;
  wire [4:0] al_5be243;
  wire [4:0] al_a9c996b9;
  wire [4:0] al_261227a1;
  wire [5:0] al_67d8ce5;
  wire [4:0] al_4965734;
  wire [4:0] al_c355151b;
  wire [4:0] al_31057df8;
  wire [4:0] al_1c654c99;
  wire [1:0] al_a3b34647;
  wire al_3a99f009;
  wire al_85af3504;
  wire al_dc53f85c;
  wire al_16e91a9e;
  wire al_e193ee90;
  wire al_fff2998a;
  wire al_d1639cf8;
  wire al_d884f79d;
  wire al_d718a6d8;
  wire al_2c3af6cf;
  wire al_61a5d060;
  wire al_16d7041e;
  wire al_115287f1;
  wire al_2aa8d45e;
  wire al_6deddbe0;
  wire al_81ebe8b7;
  wire al_442c0995;
  wire al_7ec52180;
  wire al_e1bea49e;
  wire al_86f22ea6;
  wire al_f8ea711f;
  wire al_1f3c0565;
  wire al_da4cb417;
  wire al_a01dc74b;
  wire al_4d21d8b;
  wire al_63760d07;
  wire al_f11712f2;
  wire al_336be4b8;
  wire al_91a7358e;
  wire al_984b96af;
  wire al_f248b958;
  wire al_c3681e14;
  wire al_106026c7;
  wire al_f3a31c7d;
  wire al_ffb6381f;
  wire al_d3f084a9;
  wire al_b443989b;
  wire al_99baf6a5;
  wire al_c06b045f;
  wire al_6fe0e629;
  wire al_d6dc65a2;
  wire al_3eb9bbc4;
  wire al_6ac22ffe;
  wire al_699828dd;
  wire al_6fa35dfb;
  wire al_95b8b500;
  wire al_72029bee;
  wire al_db34540d;
  wire al_29d6fa33;
  wire al_c2eda8be;
  wire al_e1d86dd6;
  wire al_fc193bfe;
  wire al_f1633e74;
  wire al_c1e9c95e;
  wire al_c76cfdc9;
  wire al_21b6a634;
  wire al_e82a49b1;
  wire al_1efcb07b;
  wire al_75f96deb;
  wire al_3ec8fd19;
  wire al_68ead1ac;
  wire al_94075e8;
  wire al_e16c5ea4;
  wire al_7679365c;
  wire al_32b56e4d;
  wire al_7b19bf65;
  wire al_9cc4ec07;
  wire al_4f21763f;
  wire al_c33e6123;
  wire al_7d282ca5;
  wire al_81327d3e;
  wire al_9cdab7c7;
  wire al_f7f2188f;
  wire al_f00aef70;
  wire al_c5f0c39c;
  wire al_38ad212c;
  wire al_c5fa2051;
  wire al_ec3b4ad8;
  wire al_9c31cda4;
  wire al_b4339c18;
  wire al_7b82efe9;
  wire al_3e1ee599;
  wire al_3d9ab129;
  wire al_a44c38d6;
  wire al_b94d2dfb;
  wire al_af25ba1a;
  wire al_259cbf7a;
  wire al_1b3c9082;
  wire al_676471a2;
  wire al_2353b709;
  wire al_b3762428;
  wire al_82a2d0d5;
  wire al_cd368143;
  wire al_c0a32fb6;
  wire al_c0aa4677;
  wire al_2882a136;
  wire al_cef8f96a;
  wire al_93ab293f;
  wire al_23219d08;
  wire al_68c97bdd;
  wire al_8f23a14e;
  wire al_e5183334;
  wire al_6019d7a8;
  wire al_3ed26a9d;
  wire al_8052f3c3;
  wire al_eeebdcbc;
  wire al_d49161f6;
  wire al_fbb17545;
  wire al_98c2f004;
  wire al_f01c3b03;
  wire al_d419de2f;
  wire al_b6ba1f4d;
  wire al_213a8c8d;
  wire al_e898289a;
  wire al_3642988e;
  wire al_6580cad;
  wire al_b1d99250;
  wire al_2b610613;
  wire al_85f14393;
  wire al_232437af;
  wire al_6e74fe6b;
  wire al_b6f11c75;
  wire al_88802150;
  wire al_99e6bf63;
  wire al_b95ba0d6;
  wire al_7bac5a06;
  wire al_f6244dca;
  wire al_ab2b54bc;
  wire al_8aa38a42;
  wire al_3c4bd696;
  wire al_a8ff2a15;
  wire al_8a568df2;
  wire al_2f72f0f2;
  wire al_5611afac;
  wire al_c23b0060;
  wire al_34845ddd;
  wire al_530ac408;
  wire al_657416bd;
  wire al_3582213c;
  wire al_c677df9a;
  wire al_db86f2c6;
  wire al_cbfb28ec;
  wire al_a27ab75e;
  wire al_797dec46;
  wire al_cb0dd761;
  wire al_307b87e5;
  wire al_26049e20;
  wire al_9c158c73;
  wire al_a77386b6;
  wire al_15a8d44;
  wire al_4e89abab;
  wire al_bd791c3;
  wire al_f2219b69;
  wire al_d520d3da;
  wire al_19a462e4;
  wire al_cd6b6937;
  wire al_7c7a2605;
  wire al_4ce78bd3;
  wire al_8a0dc818;
  wire al_fcd300b5;
  wire al_616c2cfd;
  wire al_3931bff5;
  wire al_13b806f6;
  wire al_5b143ce;
  wire al_d7fdf4d4;
  wire al_35459e8e;
  wire al_15b6cc4d;
  wire al_18ec05dd;
  wire al_5c7bf54b;
  wire al_95573bdf;
  wire al_9fceafe8;
  wire al_f03c518b;
  wire al_de87e673;
  wire al_708020b7;
  wire al_a99152b1;
  wire al_32d460fa;
  wire al_eeb46654;
  wire al_1c33045d;
  wire al_ade0d5b;
  wire al_a0cc3fa9;
  wire al_ac151ce3;
  wire al_1252d5f0;
  wire al_22701a7e;
  wire al_9becb6ad;
  wire al_da60f944;
  wire al_c83b6fd1;
  wire al_3fd2fed8;
  wire al_9e6b7de2;
  wire al_ec80a9a4;
  wire al_b93b255a;
  wire al_c838557b;
  wire al_b1bbeb70;
  wire al_aadedd4f;
  wire al_e8eadd18;
  wire al_7b236973;
  wire al_4fdcf59;
  wire al_52bd88eb;
  wire al_274d6711;
  wire al_61121be0;
  wire al_29c7f166;
  wire al_52c89f39;
  wire al_1d79b1a1;
  wire al_fb416384;
  wire al_16ef234c;
  wire al_8b17c5fb;
  wire al_ba39ed5;
  wire al_8de689b5;
  wire al_6686e514;
  wire al_93e1d9e3;
  wire al_398aa9b7;
  wire al_c899e579;
  wire al_14db5bac;
  wire al_6d898341;
  wire al_61aa8cc4;
  wire al_8117cbaf;
  wire al_8fa78cd7;
  wire al_3614973b;
  wire al_3e3a8c94;
  wire al_505a8ba1;
  wire al_c149ae55;
  wire al_5993299e;
  wire al_d9d89118;
  wire al_30e8aa56;
  wire al_a66d5fb3;
  wire al_b89ef6ac;
  wire al_cdde73b2;
  wire al_da1bb934;
  wire al_4f45a125;
  wire al_37f3ba1a;
  wire al_53163535;
  wire al_d1bcbb90;
  wire al_2fa9acc4;
  wire al_92bbd647;
  wire al_413ac873;
  wire al_2bbbdd94;
  wire al_a4b52ca8;
  wire al_45558a7e;
  wire al_ed722c3;
  wire al_9a1e051f;
  wire al_a44d2fc2;
  wire al_526f0e81;
  wire al_bf002685;
  wire al_57472ce0;
  wire al_955d9cec;
  wire al_dcb4c727;
  wire al_eb8a3dd2;
  wire al_308bb9d7;
  wire al_7f4641de;
  wire al_efc38ce1;
  wire al_2ab47f7;
  wire al_5021181f;
  wire al_a84e89a9;
  wire al_ce03b754;
  wire al_816c81e;
  wire al_3950c0e3;
  wire al_77a200ec;
  wire al_d1619569;
  wire al_9bbae348;
  wire al_a8011722;
  wire al_d2ab2fb0;
  wire al_7627ebd5;
  wire al_a13ef147;
  wire al_bfad85c7;
  wire al_f2b6b48e;
  wire al_455a775f;
  wire al_3be9d50d;
  wire al_eae4cfbd;
  wire al_c7fcc022;
  wire al_3f4d3806;
  wire al_f3eeb5f0;
  wire al_97727312;
  wire al_be948f0a;
  wire al_c4da894e;
  wire al_12b52ca8;
  wire al_bb756df3;
  wire al_3bc3c6cc;
  wire al_458e0e8f;
  wire al_36a8d745;
  wire al_9eeccb84;
  wire al_a5347325;
  wire al_94492ece;
  wire al_cad115d5;
  wire al_ec8f5bc4;
  wire al_5fc28e7c;
  wire al_d97a7544;
  wire al_6ff15277;
  wire al_f325bd5e;
  wire al_46cdf04e;
  wire al_236e50d3;
  wire al_5248952f;
  wire al_8e707a3;
  wire al_108de225;
  wire al_c2d39cc;
  wire al_78b89884;
  wire al_52130ce3;
  wire al_c99a9dcc;
  wire al_9a526227;
  wire al_f3bdb3a9;
  wire al_5974b98c;
  wire al_e712b236;
  wire al_50979a5f;
  wire al_baa5462;
  wire al_585793db;
  wire al_980e419d;
  wire al_f9b9d8be;
  wire al_54cedbdb;
  wire al_5e4391bd;
  wire al_74df656b;
  wire al_4c2b5ca;
  wire al_a1db3d75;
  wire al_5e9e3024;
  wire al_e8431db1;
  wire al_f272ea63;
  wire al_36bef6d8;
  wire al_66cc5c6a;
  wire al_a74000eb;
  wire al_a1598cf0;
  wire al_f2d0af56;
  wire al_1f6f8ce;
  wire al_d37e7352;
  wire al_702339fd;
  wire al_517ad9e5;
  wire al_9c92849d;
  wire al_d8f4a5f3;
  wire al_9963f351;
  wire al_127cf376;
  wire al_db3eff00;
  wire al_a1cb7d76;
  wire al_206a77c9;
  wire al_82442374;
  wire al_97c43af3;
  wire al_9f7ef4f7;
  wire al_dd50e54e;
  wire al_fe9ed33a;
  wire al_d8be0ed7;
  wire al_47ed57fc;
  wire al_9193dcc2;
  wire al_49928f20;
  wire al_3be8c8f0;
  wire al_b25824ab;
  wire al_4431b239;
  wire al_e5ac765c;
  wire al_943194f9;
  wire al_a4e521e2;
  wire al_db7633a;
  wire al_b6ff1b19;
  wire al_814658c2;
  wire al_2c049524;
  wire al_14743a39;
  wire al_561205f4;
  wire al_9977300c;
  wire al_9861c501;
  wire al_829c4571;
  wire al_6ef00a15;
  wire al_fa65ad40;
  wire al_de7b02b0;
  wire al_b52200cf;
  wire al_1546dfc0;
  wire al_994d4aa2;
  wire al_56e53c22;
  wire al_d520631;
  wire al_f4bf6e8f;
  wire al_7f1edc8b;
  wire al_6031507a;
  wire al_d7ec5ae2;
  wire al_162eb00c;
  wire al_dfa8a88f;
  wire al_ca421152;
  wire al_47906a4a;
  wire al_decf78ac;
  wire al_b11de8c9;
  wire al_64f9b17a;
  wire al_b0dd13b;
  wire al_5b0c9acc;
  wire al_c4684efc;
  wire al_9dfcf9d0;
  wire al_1d49c306;
  wire al_2283e006;
  wire al_6f85dee5;
  wire al_7f9cff34;
  wire al_bc7b94b1;
  wire al_85536730;
  wire al_74dfbf70;
  wire al_1d62b8ed;
  wire al_7051760f;
  wire al_90201af6;
  wire al_362ce8a7;
  wire al_7f8253e1;
  wire al_bd2f2452;
  wire al_3eff018b;
  wire al_b485e733;
  wire al_8f35f18b;
  wire al_4a49c209;
  wire al_6a7c2276;
  wire al_343baf96;
  wire al_e28047ee;
  wire al_3122c718;
  wire al_82d3b6a8;
  wire al_1acd2215;
  wire al_3dbc4def;
  wire al_a9ba3de9;
  wire al_34c37ea1;
  wire al_a5f70003;
  wire al_69f06796;
  wire al_2eb4f116;
  wire al_ba022b81;
  wire al_de3304a7;
  wire al_346f767;
  wire al_34fe244e;
  wire al_fbbebd64;
  wire al_76253c29;
  wire al_6f04e102;
  wire al_dc0c2249;
  wire al_ce3db342;
  wire al_8bcfa204;
  wire al_436766ee;
  wire al_ff17bdc5;
  wire al_88560a1f;
  wire al_194e2ba5;
  wire al_6d4ad6d5;
  wire al_c6c079aa;
  wire al_8e2e2769;
  wire al_c0cc8b6d;
  wire al_b94c3b24;
  wire al_349f762c;
  wire al_149a8e69;
  wire al_1afe62ae;
  wire al_880df2a;
  wire al_ffbda4d7;
  wire al_825b2490;
  wire al_f19f764f;
  wire al_911b7d6c;
  wire al_ccae1a5d;
  wire al_1212d4c4;
  wire al_26e619d5;
  wire al_e01cc05a;
  wire al_6f4ce15a;
  wire al_fa37935d;
  wire al_2b58bd0c;
  wire al_7dfbd658;
  wire al_8bdfd47c;
  wire al_5f24bdfc;
  wire al_d998c98b;
  wire al_27c924c5;
  wire al_51fe679f;
  wire al_4cadcb7f;
  wire al_475e6701;
  wire al_82636fac;
  wire al_fcc50591;
  wire al_d1d8ef96;
  wire al_7ba6b416;
  wire al_3beded1c;
  wire al_b4030544;
  wire al_e5256fa6;
  wire al_9be38c32;
  wire al_bcb1fc0c;
  wire al_78acd801;
  wire al_2013bd3d;
  wire al_5e270234;
  wire al_67cdb4ef;
  wire al_44368a14;
  wire al_48c46026;
  wire al_7eea8d34;
  wire al_b0feb4a0;
  wire al_283691cf;
  wire al_8f826531;
  wire al_156ff55b;
  wire al_e4488a9;
  wire al_a6a69c6b;
  wire al_4e5f46d4;
  wire al_561a46d9;
  wire al_9bfc3186;
  wire al_c0aea152;
  wire al_2bb27174;
  wire al_b1e68eef;
  wire al_862a9f67;
  wire al_bf067b6;
  wire al_fb5859f5;
  wire al_ac781d44;
  wire al_a1bace23;
  wire al_793c5a14;
  wire al_4ea395bb;
  wire al_e4a2b19;
  wire al_fd2b7948;
  wire al_1cc7ba22;
  wire al_268aace1;
  wire al_18324f63;
  wire al_1d05987c;
  wire al_aa399956;
  wire al_68c31110;
  wire al_7db16024;
  wire al_2e7aa1c1;
  wire al_538866b5;
  wire al_1deeb789;
  wire al_7e07b9ca;
  wire al_3d37ea1b;
  wire al_17bcd7d3;
  wire al_6f21d658;
  wire al_3986a1c7;
  wire al_2d3bd04d;
  wire al_f7a0bba8;
  wire al_12ffa234;
  wire al_9f0f8226;
  wire al_2f1b008;
  wire al_355480f2;
  wire al_706eedd7;
  wire al_d9ce094e;
  wire al_a29c03e3;
  wire al_581b19be;
  wire al_d5b01b6e;
  wire al_948d9abc;
  wire al_e7b69aab;
  wire al_5f9dd260;
  wire al_f46378cf;
  wire al_4bcecde6;
  wire al_e092bc0c;
  wire al_83a7613a;
  wire al_a24ddb7f;
  wire al_cf81366;
  wire al_75c5858c;
  wire al_5ca421ff;
  wire al_d74756cf;
  wire al_8eb70998;
  wire al_4d45df67;
  wire al_d187bcb1;
  wire al_13f91b9f;
  wire al_7561835e;
  wire al_a0bae2c0;
  wire al_4ccb1eb9;
  wire al_7857d91e;
  wire al_3ff42b2e;
  wire al_5f87e071;
  wire al_a1183b05;
  wire al_7548dbb9;
  wire al_289e0a43;
  wire al_e96a7ab0;
  wire al_273ee948;
  wire al_60ee0b22;
  wire al_143a2769;
  wire al_a4a9297a;
  wire al_34caff68;
  wire al_3e75194b;
  wire al_e1b59a0e;
  wire al_296e25e2;
  wire al_93f02b06;
  wire al_cfc0aaa6;
  wire al_9cdefbbc;
  wire al_9e26bc14;
  wire al_94f3c2f2;
  wire al_be9ec6d0;
  wire al_24412622;
  wire al_e757d758;
  wire al_8ec3f0ed;
  wire al_89bc168e;
  wire al_6e3bd4db;
  wire al_41c5dae8;
  wire al_b952dc06;
  wire al_f9bc6754;
  wire al_41ec2d08;
  wire al_65bf7492;
  wire al_ebfdd7c2;
  wire al_5c4546b6;
  wire al_970ec842;
  wire al_cb29502d;
  wire al_80c49c9c;
  wire al_7b46d796;
  wire al_776a9766;
  wire al_7dc51659;
  wire al_bef58683;
  wire al_1b7837e;
  wire al_b9d2176b;
  wire al_f1946c1e;
  wire al_ac87519;
  wire al_73773ddb;
  wire al_ee07d36;
  wire al_f5afc740;
  wire al_61bbc36d;
  wire al_4957a36e;
  wire al_5f8ce69f;
  wire al_13be6013;
  wire al_6a5ae120;
  wire al_fb87f98b;
  wire al_215183d4;
  wire al_fcfa95d1;
  wire al_3906fe3c;
  wire al_e248fd0;
  wire al_73053f81;
  wire al_1c8bb97d;
  wire al_a9cb67e2;
  wire al_cb8893;
  wire al_1442f340;
  wire al_3fd18196;
  wire al_bee503d;
  wire al_dfd92c0d;
  wire al_49200b4;
  wire al_70bcf2f3;
  wire al_afe826c1;
  wire al_47fcc118;
  wire al_f148793b;
  wire al_7a978a95;
  wire al_8215db20;
  wire al_a0a16e6c;
  wire al_6b3ee95f;
  wire al_13d587dc;
  wire al_8697c16a;
  wire al_8fe9fc8a;
  wire al_a2c41eb3;
  wire al_3e01cb65;
  wire al_4d3a5e56;
  wire al_785db76a;
  wire al_44fb79fa;
  wire al_2cc535d;
  wire al_e1013d80;
  wire al_fa5f734c;
  wire al_e25505e6;
  wire al_9bc6bb2c;
  wire al_eb14a827;
  wire al_2e3fd34b;
  wire al_9f400bf4;
  wire al_b484e2cd;
  wire al_e767c021;
  wire al_923717dc;
  wire al_ede2068e;
  wire al_1349755c;
  wire al_4c7af78d;
  wire al_1aa9ca61;
  wire al_62833b2c;
  wire al_bbd4dfd9;
  wire al_293fa077;
  wire al_e358fae7;
  wire al_3af54e2;
  wire al_4c87e22f;
  wire al_b5db1588;
  wire al_551ac7a7;
  wire al_63913c39;
  wire al_1062483c;
  wire al_44a2aa35;
  wire al_c82a6572;
  wire al_4d72b9b2;
  wire al_65ea8590;
  wire al_44c89cd0;
  wire al_91850552;
  wire al_be3cff1e;
  wire al_c192662b;
  wire al_1302c23a;
  wire al_81db1caf;
  wire al_bd4f9101;
  wire al_4dcaff96;
  wire al_3c9cb754;
  wire al_60f1e377;
  wire al_71db1331;
  wire al_5e6828ed;
  wire al_d117344;
  wire al_e39a8fcf;
  wire al_6688dddf;
  wire al_9470b3e5;
  wire al_53ae79ed;
  wire al_912a8456;
  wire al_b2ae32ac;
  wire al_1250b68a;
  wire al_7c99bfa9;
  wire al_70db22d4;
  wire al_9868fa16;
  wire al_5ce09915;
  wire al_fc33ee46;
  wire al_c2c15264;
  wire al_3487ccc5;
  wire al_168f3490;
  wire al_9a001b07;
  wire al_1131d66;
  wire al_95f563cb;
  wire al_224360dd;
  wire al_d168f320;
  wire al_d3ede9ad;
  wire al_87f537cc;
  wire al_31ec8503;
  wire al_698130a9;
  wire al_2705670e;
  wire al_65b9e79a;
  wire al_ff7238e2;
  wire al_37cf9d46;
  wire al_26e40e69;
  wire al_36e8dc43;
  wire al_f36a218b;
  wire al_107daa3;
  wire al_a989a251;
  wire al_6976d417;
  wire al_98f270c5;
  wire al_b6d7eb5b;
  wire al_580baf29;
  wire al_6414d87a;
  wire al_8362e6d;
  wire al_8b4c506f;
  wire al_8fca448a;
  wire al_4c7af3db;
  wire al_68fb3ab0;
  wire al_f3b82307;
  wire al_aaff2418;
  wire al_f8f38055;
  wire al_580d0476;
  wire al_389a14ba;
  wire al_698a0589;
  wire al_ff1ebd03;
  wire al_684682db;
  wire al_81d09b43;
  wire al_b582986d;
  wire al_72514e14;
  wire al_5bf437e6;
  wire al_fdc2a946;
  wire al_ecb32948;
  wire al_c22565b8;
  wire al_4f2f9b34;
  wire al_8a38481d;
  wire al_57431b45;
  wire al_503d8b42;
  wire al_63f84a65;
  wire al_5c7e8d49;
  wire al_46f7e781;
  wire al_5a53aef1;
  wire al_b5430f5d;
  wire al_11249c6f;
  wire al_e1a629bb;
  wire al_2d0df3d9;
  wire al_2ce97c38;
  wire al_ca126494;
  wire al_b4d141ea;
  wire al_94143c9c;
  wire al_52f3b168;
  wire al_bfedb182;
  wire al_ceec2d0d;
  wire al_c04b3600;
  wire al_90b6515f;
  wire al_8d70ee51;
  wire al_9103b859;
  wire al_80977367;
  wire al_ab55e675;
  wire al_1fa59d;
  wire al_6ea02789;
  wire al_6005c026;
  wire al_1be58835;
  wire al_daee23cd;
  wire al_12c01001;
  wire al_6b13d5d1;
  wire al_85197052;
  wire al_895b20ce;
  wire al_1048e296;
  wire al_636b4d43;
  wire al_9f3f301;
  wire al_b7c06e8;
  wire al_1b442e41;
  wire al_b620e6c4;
  wire al_389e865b;
  wire al_3402cb00;
  wire al_d78bc33c;
  wire al_e28ad7c6;
  wire al_a1f8756e;
  wire al_e822fb38;
  wire al_e399f581;
  wire al_d074f4ee;
  wire al_57863066;
  wire al_ec26d29;
  wire al_785abacb;
  wire al_45ae85f6;
  wire al_925341ce;
  wire al_2c1739c0;
  wire al_1edd903d;
  wire al_78038a8;
  wire al_20c1ffd3;
  wire al_711c48a4;
  wire al_d86d467c;
  wire al_b4c124e;
  wire al_ce93b827;
  wire al_d9396682;
  wire al_8d031e0e;
  wire al_1486f657;
  wire al_2d3bbb90;
  wire al_797410fb;
  wire al_846b1538;
  wire al_1b48393e;
  wire al_ad8c7a1;
  wire al_c8104d86;
  wire al_ef7fbaed;
  wire al_8e83538d;
  wire al_9e6ec0b4;
  wire al_84f88b7d;
  wire al_725282a9;
  wire al_5ad86bea;
  wire al_1d3ed386;
  wire al_4db54d18;
  wire al_1ce97d69;
  wire al_2a574b35;
  wire al_6394d5fa;
  wire al_195089e6;
  wire al_c477a09c;
  wire al_7664d7d4;
  wire al_3c7c8021;
  wire al_b8398389;
  wire al_f7521b25;
  wire al_6b5280e9;
  wire al_5e4d7c;
  wire al_ef19480e;
  wire al_51d40c44;
  wire al_bb2ed901;
  wire al_a86ba7ed;
  wire al_3e084b8a;
  wire al_9fac51b7;
  wire al_f14576;
  wire al_349d4bb2;
  wire al_8fcfc610;
  wire al_ca1ecb12;
  wire al_b002fed8;
  wire al_1de4be18;
  wire al_9c91952c;
  wire al_d6880fcd;
  wire al_28cc37bd;
  wire al_b9c97ef;
  wire al_fc501cf6;
  wire al_a12874af;
  wire al_81ea5b1b;
  wire al_4b1de10;
  wire al_b3cb9027;
  wire al_ae0a8ab1;
  wire al_83fef9c9;
  wire al_2d4a447c;
  wire al_60900f7;
  wire al_d72ee448;
  wire al_f6d33fbb;
  wire al_2c68e766;
  wire al_225e6daf;
  wire al_edad7e0f;
  wire al_ff19272e;
  wire al_dffa28e6;
  wire al_f94476b3;
  wire al_e15cdb87;
  wire al_5dc95721;
  wire al_f03c332d;
  wire al_6a27e63;
  wire al_7cae906d;
  wire al_f4d3e003;
  wire al_d05fa8bb;
  wire al_6c6a3b70;
  wire al_a77c54eb;
  wire al_f101a507;
  wire al_a32003b9;
  wire al_9c2c7a46;
  wire al_fba10168;
  wire al_6eee4106;
  wire al_da3979c2;
  wire al_1123635a;
  wire al_861641df;
  wire al_b9247c23;
  wire al_f06e24ce;
  wire al_1cee29b0;
  wire al_310945e3;
  wire al_3b417b5;
  wire al_c766f9d9;
  wire al_7536f474;
  wire al_ec41d980;
  wire al_54aad2a7;
  wire al_b54d9656;
  wire al_5294bf77;
  wire al_1981dbfd;
  wire al_a779b5a8;
  wire al_de736a66;
  wire al_bbd67df;
  wire al_b9089222;
  wire al_dec39099;
  wire al_25924551;
  wire al_d298757e;
  wire al_6dee4a78;
  wire al_7b2292f9;
  wire al_eec99b85;
  wire al_167c7e95;
  wire al_84fc95be;
  wire al_be4b3284;
  wire al_99e8388;
  wire al_c39e83d1;
  wire al_b3ae1801;
  wire al_db113f6c;
  wire al_f9cd10eb;
  wire al_eb0a610b;
  wire al_cb3465b8;
  wire al_bd98fa85;
  wire al_e4b6ce14;
  wire al_f8e90860;
  wire al_13ae2497;
  wire al_aa17d653;
  wire al_8ccc6681;
  wire al_af04977c;
  wire al_3c599203;
  wire al_6d0bed26;
  wire al_68541276;
  wire al_77c502c6;
  wire al_12ab3421;
  wire al_a70c3978;
  wire al_d305f367;
  wire al_f2ac7e6;
  wire al_e1af705c;
  wire al_73dfca95;
  wire al_13a14436;
  wire al_18a539f1;
  wire al_d0310076;
  wire al_166550a0;
  wire al_cafa9a0;
  wire al_1c30b794;
  wire al_9fe176a7;
  wire al_11e40803;
  wire al_b091f9f9;
  wire al_f007c8b2;
  wire al_b331f8fc;
  wire al_58d868b1;
  wire al_dd66c78a;
  wire al_7ef11259;
  wire al_2747d1b3;
  wire al_2c601c99;
  wire al_67aaf076;
  wire al_2634cad7;
  wire al_8a37f936;
  wire al_268df1dd;
  wire al_f9f6ffab;
  wire al_a16e446b;
  wire al_eb717904;
  wire al_4a1f306a;
  wire al_fc7cfcff;
  wire al_75a38b4f;
  wire al_44b9e64b;
  wire al_b9d2100f;
  wire al_88e48492;
  wire al_57ab269e;
  wire al_69af7ded;
  wire al_fdd97a53;
  wire al_a574bab9;
  wire al_7cf11de1;
  wire al_815e259;
  wire al_a41b6cc7;
  wire al_7a009423;
  wire al_928dbd8a;
  wire al_dd86194c;
  wire al_460d7ea8;
  wire al_babf4d7b;
  wire al_cf818037;
  wire al_a52d77ff;
  wire al_8d254843;
  wire al_9f1aa165;
  wire al_25882c89;
  wire al_2a5461d4;
  wire al_28c82be3;
  wire al_cc7a818a;
  wire al_a05f23c6;
  wire al_3e2203c4;
  wire al_33e22f5d;
  wire al_a00c9c5d;
  wire al_9c926378;
  wire al_9a87b58a;
  wire al_a8fabf1e;
  wire al_2e2b49c4;
  wire al_c4bd9400;
  wire al_b79fae1c;
  wire al_8a119ab2;
  wire al_ebfc5374;
  wire al_6477d9d3;
  wire al_c89f5822;
  wire al_ef5be421;
  wire al_ab3a184f;
  wire al_399b4674;
  wire al_77aa8643;
  wire al_1f590022;
  wire al_f1f99725;
  wire al_8cdcc9fa;
  wire al_3c7eb393;
  wire al_e86f5adb;
  wire al_235aa580;
  wire al_c626cd99;
  wire al_53d9ecb3;
  wire al_9137c46b;
  wire al_749e6b43;
  wire al_8885c01f;
  wire al_44a6a7c2;
  wire al_6412dfc2;
  wire al_3e0c0b03;
  wire al_2470a7c2;
  wire al_15a216ef;
  wire al_a427d43e;
  wire al_9691b7da;
  wire al_ef00f01d;
  wire al_d743da62;
  wire al_d3015eb5;
  wire al_5b5a6e16;
  wire al_8d9dcc29;
  wire al_87e0667d;
  wire al_cabf9095;
  wire al_9939505d;
  wire al_763fe890;
  wire al_c4491240;
  wire al_e39dd6ff;
  wire al_3ba2af1c;
  wire al_a676268a;
  wire al_d7eed70a;
  wire al_c441396d;
  wire al_c857d0ec;
  wire al_acf01f3f;
  wire al_21a3be61;
  wire al_746a2a10;
  wire al_185d4eb8;
  wire al_8278b4f6;
  wire al_d2af260d;
  wire al_6503a531;
  wire al_f4d349c2;
  wire al_d6a02de7;
  wire al_214132aa;
  wire al_967f46f4;
  wire al_140b5d24;
  wire al_f53e5b0a;
  wire al_f743c315;
  wire al_a63bac0c;
  wire al_eb450a8b;
  wire al_9b2723ca;
  wire al_5439e045;
  wire al_8bc642aa;
  wire al_85b20ad3;
  wire al_f6896e61;
  wire al_f321115;
  wire al_84673a50;
  wire al_6c88833b;
  wire al_c124f224;
  wire al_5a4e8efb;
  wire al_62119108;
  wire al_787e0126;
  wire al_23f39cbc;
  wire al_91e030f1;
  wire al_cb7e5089;
  wire al_caeda5fd;
  wire al_6041251f;
  wire al_c0ae55ee;
  wire al_3683e7ab;
  wire al_513770c2;
  wire al_35747f18;
  wire al_fb2f48d1;
  wire al_2aa5e363;
  wire al_605ee510;
  wire al_8fac4c44;
  wire al_4e71988a;
  wire al_5081afcf;
  wire al_b9f88c11;
  wire al_c2b02029;
  wire al_4a4ebdac;
  wire al_4b9103aa;
  wire al_b25e0fc1;
  wire al_ea19f618;

  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    al_c377d1dc (
    .a(al_8278b4f6),
    .b(al_c2b02029),
    .o(can_phy_tx));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*B*A)"),
    .INIT(16'h0008))
    al_b9f9d7c8 (
    .a(al_85f14393),
    .b(al_dd104e51[0]),
    .c(al_dd104e51[1]),
    .d(al_5021181f),
    .o(al_232437af));
  AL_DFF_X al_69904bda (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_232437af),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_12b52ca8));
  AL_MAP_LUT3 #(
    .EQN("(~C*B*A)"),
    .INIT(8'h08))
    al_4a9ee88e (
    .a(al_35459e8e),
    .b(al_16e91a9e),
    .c(al_88802150),
    .o(al_6e74fe6b));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    al_5bd678a8 (
    .a(1'b0),
    .o({al_c0aa4677,open_n2}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_357131af (
    .a(al_393235c7[0]),
    .b(al_393235c7[4]),
    .c(al_c0aa4677),
    .o({al_2882a136,al_b850157e[0]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_cb6b9741 (
    .a(al_393235c7[1]),
    .b(al_393235c7[5]),
    .c(al_2882a136),
    .o({al_cef8f96a,al_b850157e[1]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_d8f9fdad (
    .a(al_393235c7[2]),
    .b(al_393235c7[6]),
    .c(al_cef8f96a),
    .o({al_93ab293f,al_b850157e[2]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_cdb2913 (
    .a(al_393235c7[3]),
    .b(1'b0),
    .c(al_93ab293f),
    .o({al_23219d08,al_b850157e[3]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_eeda7cda (
    .c(al_23219d08),
    .o({open_n5,al_185d4eb8}));
  AL_MAP_LUT5 #(
    .EQN("(~E*D*~C*B*A)"),
    .INIT(32'h00000800))
    al_4fd6d532 (
    .a(al_d7fdf4d4),
    .b(al_16e91a9e),
    .c(al_88802150),
    .d(al_31dabf2c[0]),
    .e(al_31dabf2c[3]),
    .o(al_b6f11c75));
  AL_DFF_X al_d438d974 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_3a99f009),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_88802150));
  AL_MAP_LUT4 #(
    .EQN("(~D*C*B*A)"),
    .INIT(16'h0080))
    al_78575f4d (
    .a(al_d7fdf4d4),
    .b(al_61a5d060),
    .c(al_31dabf2c[0]),
    .d(al_31dabf2c[3]),
    .o(al_99e6bf63));
  AL_MAP_LUT4 #(
    .EQN("(~C*(B*~(D)*~(A)+B*D*~(A)+~(B)*D*A+B*D*A))"),
    .INIT(16'h0e04))
    al_5710348 (
    .a(al_99e6bf63),
    .b(al_88802150),
    .c(al_5fc28e7c),
    .d(al_e51dd35d[1]),
    .o(al_3a99f009));
  AL_DFF_X al_f6f38d8e (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_85af3504),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_b95ba0d6));
  AL_MAP_LUT4 #(
    .EQN("(~C*(B*~(D)*~(A)+B*D*~(A)+~(B)*D*A+B*D*A))"),
    .INIT(16'h0e04))
    al_f9185205 (
    .a(al_99e6bf63),
    .b(al_b95ba0d6),
    .c(al_5fc28e7c),
    .d(al_e51dd35d[0]),
    .o(al_85af3504));
  AL_DFF_X al_706e97b9 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bb756df3),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_7bac5a06));
  AL_DFF_X al_7995747f (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_7bac5a06),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_f6244dca));
  AL_DFF_X al_71f3e9b1 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_f6244dca),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_ab2b54bc));
  AL_DFF_X al_5606335a (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_dc53f85c),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_8aa38a42));
  AL_MAP_LUT4 #(
    .EQN("(~D*~A*~(C@B))"),
    .INIT(16'h0041))
    al_74a143b (
    .a(al_e193ee90),
    .b(al_f6244dca),
    .c(al_ab2b54bc),
    .d(al_5fc28e7c),
    .o(al_dc53f85c));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    al_9050e0b5 (
    .a(al_31dabf2c[1]),
    .b(al_31dabf2c[2]),
    .o(al_16e91a9e));
  AL_MAP_LUT4 #(
    .EQN("(D*~C*B*A)"),
    .INIT(16'h0800))
    al_71a10ba7 (
    .a(al_d7fdf4d4),
    .b(al_16e91a9e),
    .c(al_31dabf2c[0]),
    .d(al_31dabf2c[3]),
    .o(al_2b610613));
  AL_MAP_LUT4 #(
    .EQN("(~B*~(A*~(D*C)))"),
    .INIT(16'h3111))
    al_92dd727d (
    .a(al_2b610613),
    .b(al_8aa38a42),
    .c(al_e51dd35d[0]),
    .d(al_e51dd35d[1]),
    .o(al_e193ee90));
  AL_DFF_X al_269fec3e (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_5611afac),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_3c4bd696));
  AL_DFF_X al_96509f5e (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_3c4bd696),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_a8ff2a15));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    al_c9d13411 (
    .a(al_a8ff2a15),
    .b(al_657416bd),
    .o(al_2f72f0f2));
  AL_DFF_X al_79cdff78 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_2f72f0f2),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_8a568df2));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    al_66bc2e12 (
    .a(al_a8ff2a15),
    .b(al_657416bd),
    .o(al_34845ddd));
  AL_DFF_X al_5144d19a (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_34845ddd),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_c23b0060));
  AL_DFF_X al_edf5883 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_c677df9a),
    .en(1'b1),
    .sr(1'b0),
    .ss(al_5fc28e7c),
    .q(al_530ac408));
  AL_DFF_X al_f371b20f (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_530ac408),
    .en(1'b1),
    .sr(1'b0),
    .ss(al_5fc28e7c),
    .q(al_657416bd));
  AL_DFF_X al_d6919500 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_657416bd),
    .en(1'b1),
    .sr(1'b0),
    .ss(al_5fc28e7c),
    .q(al_3582213c));
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*~A)"),
    .INIT(8'h01))
    al_c729567f (
    .a(al_657416bd),
    .b(al_4e89abab),
    .c(al_cd6b6937),
    .o(al_cbfb28ec));
  AL_DFF_X al_a7593ef2 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_cbfb28ec),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_db86f2c6));
  AL_DFF_X al_df897a5c (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_26049e20),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_a27ab75e));
  AL_DFF_X al_495e7925 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_a27ab75e),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_797dec46));
  AL_MAP_LUT3 #(
    .EQN("(~C*B*~A)"),
    .INIT(8'h04))
    al_e103f66e (
    .a(al_657416bd),
    .b(al_797dec46),
    .c(al_b89ef6ac),
    .o(al_307b87e5));
  AL_DFF_X al_95d691de (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_307b87e5),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_cb0dd761));
  AL_MAP_LUT3 #(
    .EQN("(C*~B*~A)"),
    .INIT(8'h10))
    al_430119a2 (
    .a(al_657416bd),
    .b(al_b89ef6ac),
    .c(al_cad3b7fb[0]),
    .o(al_a77386b6));
  AL_MAP_LUT3 #(
    .EQN("~(~B*~(C*~A))"),
    .INIT(8'hdc))
    al_adde8b64 (
    .a(al_657416bd),
    .b(al_b89ef6ac),
    .c(al_cad3b7fb[1]),
    .o(al_9c158c73));
  AL_DFF_X al_721829df (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_d520d3da),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_15a8d44));
  AL_DFF_X al_78718f8f (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_15a8d44),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_4e89abab));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_b4f742ae (
    .a(al_657416bd),
    .b(al_4e89abab),
    .o(al_f2219b69));
  AL_DFF_X al_52263e2 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_f2219b69),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_bd791c3));
  AL_DFF_X al_dc1da1e9 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_fcd300b5),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_19a462e4));
  AL_DFF_X al_20ec7da4 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_19a462e4),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_cd6b6937));
  AL_DFF_X al_198af454 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_cd6b6937),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_7c7a2605));
  AL_MAP_LUT3 #(
    .EQN("(C*~B*~A)"),
    .INIT(8'h10))
    al_73c6ec57 (
    .a(al_657416bd),
    .b(al_4e89abab),
    .c(al_cd6b6937),
    .o(al_8a0dc818));
  AL_DFF_X al_fd92b573 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_8a0dc818),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_4ce78bd3));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~(B*~A))"),
    .INIT(16'h000b))
    al_77cc9820 (
    .a(al_52130ce3),
    .b(al_31dabf2c[3]),
    .c(al_31dabf2c[4]),
    .d(al_31dabf2c[5]),
    .o(al_616c2cfd));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_be4e2c00 (
    .a(al_dd104e51[0]),
    .b(al_dd104e51[1]),
    .o(al_3931bff5));
  AL_DFF_X al_1011a644 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_3931bff5),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(ip2bus_ack));
  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    al_ce456ef0 (
    .a(al_efc38ce1),
    .b(al_5fc28e7c),
    .o(al_13b806f6));
  AL_MAP_LUT3 #(
    .EQN("(C*~B*~A)"),
    .INIT(8'h10))
    al_7b78e9b3 (
    .a(al_1a18409a[0]),
    .b(al_1a18409a[1]),
    .c(al_1a18409a[2]),
    .o(al_6580cad));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+A*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*B*C*D)"),
    .INIT(16'h9bdf))
    al_7437480e (
    .a(al_1a18409a[0]),
    .b(al_1a18409a[1]),
    .c(al_920be55[0]),
    .d(al_ff999015[0]),
    .o(al_b1d99250));
  AL_MAP_LUT4 #(
    .EQN("~(~(D*B)*~(~C*~A))"),
    .INIT(16'hcd05))
    al_66623810 (
    .a(al_b1d99250),
    .b(al_6580cad),
    .c(al_1a18409a[2]),
    .d(al_ebdd342c[0]),
    .o(al_bbad3df6[0]));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+A*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*B*C*D)"),
    .INIT(16'h9bdf))
    al_a266c4df (
    .a(al_1a18409a[0]),
    .b(al_1a18409a[1]),
    .c(al_920be55[10]),
    .d(al_ff999015[10]),
    .o(al_eeebdcbc));
  AL_MAP_LUT4 #(
    .EQN("~(~(D*B)*~(~C*~A))"),
    .INIT(16'hcd05))
    al_3591ba03 (
    .a(al_eeebdcbc),
    .b(al_6580cad),
    .c(al_1a18409a[2]),
    .d(al_ebdd342c[10]),
    .o(al_bbad3df6[10]));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+A*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*B*C*D)"),
    .INIT(16'h9bdf))
    al_35fd68d6 (
    .a(al_1a18409a[0]),
    .b(al_1a18409a[1]),
    .c(al_920be55[11]),
    .d(al_ff999015[11]),
    .o(al_8052f3c3));
  AL_MAP_LUT4 #(
    .EQN("~(~(D*B)*~(~C*~A))"),
    .INIT(16'hcd05))
    al_ba7f69e0 (
    .a(al_8052f3c3),
    .b(al_6580cad),
    .c(al_1a18409a[2]),
    .d(al_ebdd342c[11]),
    .o(al_bbad3df6[11]));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+A*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*B*C*D)"),
    .INIT(16'h9bdf))
    al_4bc49d89 (
    .a(al_1a18409a[0]),
    .b(al_1a18409a[1]),
    .c(al_920be55[12]),
    .d(al_ff999015[12]),
    .o(al_3ed26a9d));
  AL_MAP_LUT4 #(
    .EQN("~(~(D*B)*~(~C*~A))"),
    .INIT(16'hcd05))
    al_ecb7119c (
    .a(al_3ed26a9d),
    .b(al_6580cad),
    .c(al_1a18409a[2]),
    .d(al_ebdd342c[12]),
    .o(al_bbad3df6[12]));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+A*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*B*C*D)"),
    .INIT(16'h9bdf))
    al_917d542a (
    .a(al_1a18409a[0]),
    .b(al_1a18409a[1]),
    .c(al_920be55[13]),
    .d(al_ff999015[13]),
    .o(al_6019d7a8));
  AL_MAP_LUT4 #(
    .EQN("~(~(D*B)*~(~C*~A))"),
    .INIT(16'hcd05))
    al_2225b5a9 (
    .a(al_6019d7a8),
    .b(al_6580cad),
    .c(al_1a18409a[2]),
    .d(al_ebdd342c[13]),
    .o(al_bbad3df6[13]));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+A*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*B*C*D)"),
    .INIT(16'h9bdf))
    al_96ef4673 (
    .a(al_1a18409a[0]),
    .b(al_1a18409a[1]),
    .c(al_920be55[14]),
    .d(al_ff999015[14]),
    .o(al_e5183334));
  AL_MAP_LUT4 #(
    .EQN("~(~(D*B)*~(~C*~A))"),
    .INIT(16'hcd05))
    al_b9020df (
    .a(al_e5183334),
    .b(al_6580cad),
    .c(al_1a18409a[2]),
    .d(al_ebdd342c[14]),
    .o(al_bbad3df6[14]));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+A*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*B*C*D)"),
    .INIT(16'h9bdf))
    al_eed31176 (
    .a(al_1a18409a[0]),
    .b(al_1a18409a[1]),
    .c(al_920be55[15]),
    .d(al_ff999015[15]),
    .o(al_8f23a14e));
  AL_MAP_LUT4 #(
    .EQN("~(~(D*B)*~(~C*~A))"),
    .INIT(16'hcd05))
    al_7020b47 (
    .a(al_8f23a14e),
    .b(al_6580cad),
    .c(al_1a18409a[2]),
    .d(al_ebdd342c[15]),
    .o(al_bbad3df6[15]));
  AL_MAP_LUT3 #(
    .EQN("(~C*B*~A)"),
    .INIT(8'h04))
    al_df390e27 (
    .a(al_1a18409a[0]),
    .b(al_1a18409a[1]),
    .c(al_1a18409a[2]),
    .o(al_68c97bdd));
  AL_MAP_LUT4 #(
    .EQN("~(~(C*B)*~(D*A))"),
    .INIT(16'heac0))
    al_2366580a (
    .a(al_6580cad),
    .b(al_68c97bdd),
    .c(al_ff999015[16]),
    .d(al_ebdd342c[16]),
    .o(al_bbad3df6[16]));
  AL_MAP_LUT4 #(
    .EQN("~(~(C*B)*~(D*A))"),
    .INIT(16'heac0))
    al_76934168 (
    .a(al_6580cad),
    .b(al_68c97bdd),
    .c(al_ff999015[17]),
    .d(al_ebdd342c[17]),
    .o(al_bbad3df6[17]));
  AL_MAP_LUT4 #(
    .EQN("~(~(C*B)*~(D*A))"),
    .INIT(16'heac0))
    al_75cda1b8 (
    .a(al_6580cad),
    .b(al_68c97bdd),
    .c(al_ff999015[18]),
    .d(al_ebdd342c[18]),
    .o(al_bbad3df6[18]));
  AL_MAP_LUT4 #(
    .EQN("~(~(C*B)*~(D*A))"),
    .INIT(16'heac0))
    al_5995025b (
    .a(al_6580cad),
    .b(al_68c97bdd),
    .c(al_ff999015[19]),
    .d(al_ebdd342c[19]),
    .o(al_bbad3df6[19]));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+A*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*B*C*D)"),
    .INIT(16'h9bdf))
    al_64f2415f (
    .a(al_1a18409a[0]),
    .b(al_1a18409a[1]),
    .c(al_920be55[1]),
    .d(al_ff999015[1]),
    .o(al_3642988e));
  AL_MAP_LUT4 #(
    .EQN("~(~(D*B)*~(~C*~A))"),
    .INIT(16'hcd05))
    al_73391654 (
    .a(al_3642988e),
    .b(al_6580cad),
    .c(al_1a18409a[2]),
    .d(al_ebdd342c[1]),
    .o(al_bbad3df6[1]));
  AL_MAP_LUT4 #(
    .EQN("~(~(C*B)*~(D*A))"),
    .INIT(16'heac0))
    al_faeda1b3 (
    .a(al_6580cad),
    .b(al_68c97bdd),
    .c(al_ff999015[20]),
    .d(al_ebdd342c[20]),
    .o(al_bbad3df6[20]));
  AL_MAP_LUT4 #(
    .EQN("~(~(C*B)*~(D*A))"),
    .INIT(16'heac0))
    al_a0b9dd9f (
    .a(al_6580cad),
    .b(al_68c97bdd),
    .c(al_ff999015[21]),
    .d(al_ebdd342c[21]),
    .o(al_bbad3df6[21]));
  AL_MAP_LUT4 #(
    .EQN("~(~(C*B)*~(D*A))"),
    .INIT(16'heac0))
    al_7e24caaf (
    .a(al_6580cad),
    .b(al_68c97bdd),
    .c(al_ff999015[22]),
    .d(al_ebdd342c[22]),
    .o(al_bbad3df6[22]));
  AL_MAP_LUT4 #(
    .EQN("~(~(C*B)*~(D*A))"),
    .INIT(16'heac0))
    al_c6dea1d4 (
    .a(al_6580cad),
    .b(al_68c97bdd),
    .c(al_ff999015[23]),
    .d(al_ebdd342c[23]),
    .o(al_bbad3df6[23]));
  AL_MAP_LUT4 #(
    .EQN("~(~(C*B)*~(D*A))"),
    .INIT(16'heac0))
    al_91c5a3f1 (
    .a(al_6580cad),
    .b(al_68c97bdd),
    .c(al_ff999015[24]),
    .d(al_ebdd342c[24]),
    .o(al_bbad3df6[24]));
  AL_MAP_LUT4 #(
    .EQN("~(~(C*B)*~(D*A))"),
    .INIT(16'heac0))
    al_f7b3e0c4 (
    .a(al_6580cad),
    .b(al_68c97bdd),
    .c(al_ff999015[25]),
    .d(al_ebdd342c[25]),
    .o(al_bbad3df6[25]));
  AL_MAP_LUT4 #(
    .EQN("~(~(C*B)*~(D*A))"),
    .INIT(16'heac0))
    al_c6c21abb (
    .a(al_6580cad),
    .b(al_68c97bdd),
    .c(al_ff999015[26]),
    .d(al_ebdd342c[26]),
    .o(al_bbad3df6[26]));
  AL_MAP_LUT4 #(
    .EQN("~(~(C*B)*~(D*A))"),
    .INIT(16'heac0))
    al_42de84fc (
    .a(al_6580cad),
    .b(al_68c97bdd),
    .c(al_ff999015[27]),
    .d(al_ebdd342c[27]),
    .o(al_bbad3df6[27]));
  AL_MAP_LUT4 #(
    .EQN("~(~(C*B)*~(D*A))"),
    .INIT(16'heac0))
    al_38202631 (
    .a(al_6580cad),
    .b(al_68c97bdd),
    .c(al_ff999015[28]),
    .d(al_ebdd342c[28]),
    .o(al_bbad3df6[28]));
  AL_MAP_LUT4 #(
    .EQN("~(~(C*B)*~(D*A))"),
    .INIT(16'heac0))
    al_4730a1d4 (
    .a(al_6580cad),
    .b(al_68c97bdd),
    .c(al_ff999015[29]),
    .d(al_ebdd342c[29]),
    .o(al_bbad3df6[29]));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+A*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*B*C*D)"),
    .INIT(16'h9bdf))
    al_a014f453 (
    .a(al_1a18409a[0]),
    .b(al_1a18409a[1]),
    .c(al_920be55[2]),
    .d(al_ff999015[2]),
    .o(al_e898289a));
  AL_MAP_LUT4 #(
    .EQN("~(~(D*B)*~(~C*~A))"),
    .INIT(16'hcd05))
    al_390737cb (
    .a(al_e898289a),
    .b(al_6580cad),
    .c(al_1a18409a[2]),
    .d(al_ebdd342c[2]),
    .o(al_bbad3df6[2]));
  AL_MAP_LUT4 #(
    .EQN("~(~(C*B)*~(D*A))"),
    .INIT(16'heac0))
    al_cf29be6a (
    .a(al_6580cad),
    .b(al_68c97bdd),
    .c(al_ff999015[30]),
    .d(al_ebdd342c[30]),
    .o(al_bbad3df6[30]));
  AL_MAP_LUT4 #(
    .EQN("~(~(C*B)*~(D*A))"),
    .INIT(16'heac0))
    al_50dc14cf (
    .a(al_6580cad),
    .b(al_68c97bdd),
    .c(al_ff999015[31]),
    .d(al_ebdd342c[31]),
    .o(al_bbad3df6[31]));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+A*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*B*C*D)"),
    .INIT(16'h9bdf))
    al_427b7830 (
    .a(al_1a18409a[0]),
    .b(al_1a18409a[1]),
    .c(al_920be55[3]),
    .d(al_ff999015[3]),
    .o(al_213a8c8d));
  AL_MAP_LUT4 #(
    .EQN("~(~(D*B)*~(~C*~A))"),
    .INIT(16'hcd05))
    al_2fd93163 (
    .a(al_213a8c8d),
    .b(al_6580cad),
    .c(al_1a18409a[2]),
    .d(al_ebdd342c[3]),
    .o(al_bbad3df6[3]));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+A*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*B*C*D)"),
    .INIT(16'h9bdf))
    al_6a6cd0da (
    .a(al_1a18409a[0]),
    .b(al_1a18409a[1]),
    .c(al_920be55[4]),
    .d(al_ff999015[4]),
    .o(al_b6ba1f4d));
  AL_MAP_LUT4 #(
    .EQN("~(~(D*B)*~(~C*~A))"),
    .INIT(16'hcd05))
    al_54d77260 (
    .a(al_b6ba1f4d),
    .b(al_6580cad),
    .c(al_1a18409a[2]),
    .d(al_ebdd342c[4]),
    .o(al_bbad3df6[4]));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+A*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*B*C*D)"),
    .INIT(16'h9bdf))
    al_4a997fda (
    .a(al_1a18409a[0]),
    .b(al_1a18409a[1]),
    .c(al_920be55[5]),
    .d(al_ff999015[5]),
    .o(al_d419de2f));
  AL_MAP_LUT4 #(
    .EQN("~(~(D*B)*~(~C*~A))"),
    .INIT(16'hcd05))
    al_44b99584 (
    .a(al_d419de2f),
    .b(al_6580cad),
    .c(al_1a18409a[2]),
    .d(al_ebdd342c[5]),
    .o(al_bbad3df6[5]));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+A*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*B*C*D)"),
    .INIT(16'h9bdf))
    al_5129bffc (
    .a(al_1a18409a[0]),
    .b(al_1a18409a[1]),
    .c(al_920be55[6]),
    .d(al_ff999015[6]),
    .o(al_f01c3b03));
  AL_MAP_LUT4 #(
    .EQN("~(~(D*B)*~(~C*~A))"),
    .INIT(16'hcd05))
    al_ee0f19a6 (
    .a(al_f01c3b03),
    .b(al_6580cad),
    .c(al_1a18409a[2]),
    .d(al_ebdd342c[6]),
    .o(al_bbad3df6[6]));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+A*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*B*C*D)"),
    .INIT(16'h9bdf))
    al_d7b99d0f (
    .a(al_1a18409a[0]),
    .b(al_1a18409a[1]),
    .c(al_920be55[7]),
    .d(al_ff999015[7]),
    .o(al_98c2f004));
  AL_MAP_LUT4 #(
    .EQN("~(~(D*B)*~(~C*~A))"),
    .INIT(16'hcd05))
    al_d58201b5 (
    .a(al_98c2f004),
    .b(al_6580cad),
    .c(al_1a18409a[2]),
    .d(al_ebdd342c[7]),
    .o(al_bbad3df6[7]));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+A*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*B*C*D)"),
    .INIT(16'h9bdf))
    al_30b7da69 (
    .a(al_1a18409a[0]),
    .b(al_1a18409a[1]),
    .c(al_920be55[8]),
    .d(al_ff999015[8]),
    .o(al_fbb17545));
  AL_MAP_LUT4 #(
    .EQN("~(~(D*B)*~(~C*~A))"),
    .INIT(16'hcd05))
    al_5fd8ff63 (
    .a(al_fbb17545),
    .b(al_6580cad),
    .c(al_1a18409a[2]),
    .d(al_ebdd342c[8]),
    .o(al_bbad3df6[8]));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+A*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*B*C*D)"),
    .INIT(16'h9bdf))
    al_a9fc689f (
    .a(al_1a18409a[0]),
    .b(al_1a18409a[1]),
    .c(al_920be55[9]),
    .d(al_ff999015[9]),
    .o(al_d49161f6));
  AL_MAP_LUT4 #(
    .EQN("~(~(D*B)*~(~C*~A))"),
    .INIT(16'hcd05))
    al_51f25fd (
    .a(al_d49161f6),
    .b(al_6580cad),
    .c(al_1a18409a[2]),
    .d(al_ebdd342c[9]),
    .o(al_bbad3df6[9]));
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*A)"),
    .INIT(8'h02))
    al_cec1492b (
    .a(al_d1619569),
    .b(al_31dabf2c[4]),
    .c(al_31dabf2c[5]),
    .o(al_d7fdf4d4));
  AL_MAP_LUT4 #(
    .EQN("(B*A*~(D*C))"),
    .INIT(16'h0888))
    al_991c437b (
    .a(al_15b6cc4d),
    .b(al_18ec05dd),
    .c(al_526f0e81),
    .d(al_b177c678[3]),
    .o(al_5c7bf54b));
  AL_MAP_LUT5 #(
    .EQN("(~A*~(E*C)*~(D*B))"),
    .INIT(32'h01051155))
    al_b814460 (
    .a(al_8fa78cd7),
    .b(al_d9d89118),
    .c(al_7f4641de),
    .d(al_b177c678[0]),
    .e(al_b177c678[11]),
    .o(al_95573bdf));
  AL_MAP_LUT4 #(
    .EQN("(~(C*B)*~(D*A))"),
    .INIT(16'h153f))
    al_3887b429 (
    .a(al_92bbd647),
    .b(al_ed722c3),
    .c(al_b177c678[5]),
    .d(al_b177c678[7]),
    .o(al_9fceafe8));
  AL_MAP_LUT4 #(
    .EQN("(B*A*~(D*C))"),
    .INIT(16'h0888))
    al_32c98760 (
    .a(al_95573bdf),
    .b(al_9fceafe8),
    .c(al_57472ce0),
    .d(al_b177c678[2]),
    .o(al_f03c518b));
  AL_MAP_LUT4 #(
    .EQN("(~(C*B)*~(D*A))"),
    .INIT(16'h153f))
    al_aedca44c (
    .a(al_30e8aa56),
    .b(al_5c7bf54b),
    .c(al_f03c518b),
    .d(al_8b17c5fb),
    .o(al_5b143ce));
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*A)"),
    .INIT(8'h02))
    al_5c82c4a6 (
    .a(al_d7fdf4d4),
    .b(al_31dabf2c[0]),
    .c(al_31dabf2c[3]),
    .o(al_35459e8e));
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    al_6663da37 (
    .a(al_35459e8e),
    .b(al_31dabf2c[1]),
    .c(al_31dabf2c[2]),
    .o(al_30e8aa56));
  AL_MAP_LUT4 #(
    .EQN("(~B*~A*~(D*C))"),
    .INIT(16'h0111))
    al_1871e812 (
    .a(al_3e3a8c94),
    .b(al_3614973b),
    .c(al_da1bb934),
    .d(al_b177c678[9]),
    .o(al_15b6cc4d));
  AL_MAP_LUT4 #(
    .EQN("(~(C*B)*~(D*A))"),
    .INIT(16'h153f))
    al_3142c27c (
    .a(al_2fa9acc4),
    .b(al_45558a7e),
    .c(al_b177c678[4]),
    .d(al_b177c678[6]),
    .o(al_18ec05dd));
  AL_DFF_X al_afc912b3 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_5b143ce),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(ip2bus_intrevent));
  AL_MAP_LUT1 #(
    .EQN("(~A)"),
    .INIT(2'h1))
    al_ab592f5f (
    .a(al_de87e673),
    .o(al_a99152b1));
  AL_MAP_LUT2 #(
    .EQN("(B@A)"),
    .INIT(4'h6))
    al_15cdf6f0 (
    .a(al_1c33045d),
    .b(al_ade0d5b),
    .o(al_32d460fa));
  AL_DFF_X al_fe0e7ebf (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_a99152b1),
    .en(al_32d460fa),
    .sr(al_708020b7),
    .ss(1'b0),
    .q(al_de87e673));
  AL_DFF_X al_98e703b3 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_45ae85f6),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_eeb46654));
  AL_DFF_X al_686b20e0 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_eeb46654),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_1c33045d));
  AL_DFF_X al_1474ad8a (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_1c33045d),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_ade0d5b));
  AL_DFF_X al_f3b7dcf (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_ceec2d0d),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_a0cc3fa9));
  AL_DFF_X al_3d400bd9 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_a0cc3fa9),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_ac151ce3));
  AL_DFF_X al_dffe2e1 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_ac151ce3),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_1252d5f0));
  AL_DFF_X al_f96c793d (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_fff2998a),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_22701a7e));
  AL_MAP_LUT4 #(
    .EQN("(~C*B*~(D*A))"),
    .INIT(16'h040c))
    al_f7b2efc2 (
    .a(al_9becb6ad),
    .b(al_22701a7e),
    .c(al_5fc28e7c),
    .d(al_e51dd35d[4]),
    .o(al_d1639cf8));
  AL_MAP_LUT4 #(
    .EQN("(B*~(~A*~(D@C)))"),
    .INIT(16'h8cc8))
    al_a03e2a4a (
    .a(al_d1639cf8),
    .b(al_88802150),
    .c(al_ac151ce3),
    .d(al_1252d5f0),
    .o(al_fff2998a));
  AL_DFF_X al_340b61a0 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_895b20ce),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_da60f944));
  AL_DFF_X al_d2cdf4a3 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_da60f944),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_c83b6fd1));
  AL_DFF_X al_c89ffe1c (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_c83b6fd1),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_3fd2fed8));
  AL_DFF_X al_b9c2a7d1 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_d884f79d),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_9e6b7de2));
  AL_MAP_LUT4 #(
    .EQN("(~C*B*~(D*A))"),
    .INIT(16'h040c))
    al_4266d587 (
    .a(al_9becb6ad),
    .b(al_9e6b7de2),
    .c(al_5fc28e7c),
    .d(al_e51dd35d[3]),
    .o(al_d718a6d8));
  AL_MAP_LUT4 #(
    .EQN("(B*~(~A*~(D@C)))"),
    .INIT(16'h8cc8))
    al_9cae718c (
    .a(al_d718a6d8),
    .b(al_88802150),
    .c(al_c83b6fd1),
    .d(al_3fd2fed8),
    .o(al_d884f79d));
  AL_DFF_X al_99dc2be2 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_3402cb00),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_ec80a9a4));
  AL_DFF_X al_7992f374 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_ec80a9a4),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_b93b255a));
  AL_DFF_X al_3383a034 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_b93b255a),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_c838557b));
  AL_DFF_X al_f4acc0d8 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_2c3af6cf),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_b1bbeb70));
  AL_MAP_LUT4 #(
    .EQN("(B*~(~A*~(D@C)))"),
    .INIT(16'h8cc8))
    al_d1930d8e (
    .a(al_16d7041e),
    .b(al_88802150),
    .c(al_b93b255a),
    .d(al_c838557b),
    .o(al_2c3af6cf));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    al_9864e539 (
    .a(al_31dabf2c[1]),
    .b(al_31dabf2c[2]),
    .o(al_61a5d060));
  AL_MAP_LUT4 #(
    .EQN("(D*~C*B*A)"),
    .INIT(16'h0800))
    al_dd315ac3 (
    .a(al_d7fdf4d4),
    .b(al_61a5d060),
    .c(al_31dabf2c[0]),
    .d(al_31dabf2c[3]),
    .o(al_9becb6ad));
  AL_MAP_LUT4 #(
    .EQN("(~C*B*~(D*A))"),
    .INIT(16'h040c))
    al_4a9ce7e2 (
    .a(al_9becb6ad),
    .b(al_b1bbeb70),
    .c(al_5fc28e7c),
    .d(al_e51dd35d[0]),
    .o(al_16d7041e));
  AL_DFF_X al_2b79a62e (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_c8104d86),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_aadedd4f));
  AL_DFF_X al_575874f0 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_aadedd4f),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_e8eadd18));
  AL_DFF_X al_9559c4c2 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e8eadd18),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_7b236973));
  AL_DFF_X al_42999503 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_115287f1),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_4fdcf59));
  AL_MAP_LUT4 #(
    .EQN("(~C*B*~(D*A))"),
    .INIT(16'h040c))
    al_a82a192 (
    .a(al_9becb6ad),
    .b(al_4fdcf59),
    .c(al_5fc28e7c),
    .d(al_e51dd35d[1]),
    .o(al_2aa8d45e));
  AL_MAP_LUT4 #(
    .EQN("(B*~(~A*~(D@C)))"),
    .INIT(16'h8cc8))
    al_eb5b6dd1 (
    .a(al_2aa8d45e),
    .b(al_88802150),
    .c(al_e8eadd18),
    .d(al_7b236973),
    .o(al_115287f1));
  AL_MAP_LUT3 #(
    .EQN("(C*~B*A)"),
    .INIT(8'h20))
    al_62926b3f (
    .a(al_35459e8e),
    .b(al_31dabf2c[1]),
    .c(al_31dabf2c[2]),
    .o(al_52bd88eb));
  AL_DFF_X al_f47818de (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_1123635a),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_274d6711));
  AL_DFF_X al_49e9eeac (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_274d6711),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_61121be0));
  AL_DFF_X al_2b59782f (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_61121be0),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_29c7f166));
  AL_DFF_X al_24c7f2e (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_6deddbe0),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_52c89f39));
  AL_MAP_LUT4 #(
    .EQN("(~C*B*~(D*A))"),
    .INIT(16'h040c))
    al_312b1ebd (
    .a(al_9becb6ad),
    .b(al_52c89f39),
    .c(al_5fc28e7c),
    .d(al_e51dd35d[2]),
    .o(al_81ebe8b7));
  AL_MAP_LUT4 #(
    .EQN("(B*~(~A*~(D@C)))"),
    .INIT(16'h8cc8))
    al_54054523 (
    .a(al_81ebe8b7),
    .b(al_88802150),
    .c(al_61121be0),
    .d(al_29c7f166),
    .o(al_6deddbe0));
  AL_DFF_X al_87e3c7d2 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_442c0995),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_1d79b1a1));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_18f5d33c (
    .a(al_35459e8e),
    .b(al_61a5d060),
    .o(al_fb416384));
  AL_MAP_LUT5 #(
    .EQN("(~D*(C*~(E)*~((~B*A))+C*E*~((~B*A))+~(C)*E*(~B*A)+C*E*(~B*A)))"),
    .INIT(32'h00f200d0))
    al_1245ac18 (
    .a(al_fb416384),
    .b(al_88802150),
    .c(al_1d79b1a1),
    .d(al_5fc28e7c),
    .e(al_e51dd35d[1]),
    .o(al_442c0995));
  AL_DFF_X al_2cbfdc54 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_7ec52180),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_16ef234c));
  AL_MAP_LUT3 #(
    .EQN("(~C*~(B*~A))"),
    .INIT(8'h0b))
    al_74eaa40d (
    .a(al_cd6b6937),
    .b(al_7c7a2605),
    .c(al_5fc28e7c),
    .o(al_e1bea49e));
  AL_MAP_LUT4 #(
    .EQN("(B*(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    .INIT(16'hc840))
    al_9506f0fa (
    .a(al_fb416384),
    .b(al_e1bea49e),
    .c(al_16ef234c),
    .d(al_e51dd35d[0]),
    .o(al_7ec52180));
  AL_DFF_X al_292ad56d (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_ba39ed5),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_8b17c5fb));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_5c4c59e0 (
    .a(al_4f45a125),
    .b(al_b177c678[8]),
    .o(al_3e3a8c94));
  AL_MAP_LUT5 #(
    .EQN("(~(D*C*B)*~(E*A))"),
    .INIT(32'h15553fff))
    al_f060379e (
    .a(al_3614973b),
    .b(al_45558a7e),
    .c(al_b177c678[4]),
    .d(al_e51dd35d[4]),
    .e(al_e51dd35d[10]),
    .o(al_93e1d9e3));
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    al_7bda3c45 (
    .a(al_d9d89118),
    .b(al_b177c678[0]),
    .c(al_e51dd35d[0]),
    .o(al_6d898341));
  AL_MAP_LUT5 #(
    .EQN("(~B*A*~(E*D*C))"),
    .INIT(32'h02222222))
    al_348d0d2e (
    .a(al_93e1d9e3),
    .b(al_6d898341),
    .c(al_2fa9acc4),
    .d(al_b177c678[6]),
    .e(al_e51dd35d[6]),
    .o(al_398aa9b7));
  AL_MAP_LUT5 #(
    .EQN("(~(D*C*B)*~(E*A))"),
    .INIT(32'h15553fff))
    al_300f47a (
    .a(al_3e3a8c94),
    .b(al_92bbd647),
    .c(al_b177c678[7]),
    .d(al_e51dd35d[7]),
    .e(al_e51dd35d[8]),
    .o(al_c899e579));
  AL_MAP_LUT5 #(
    .EQN("(~(E*C*B)*~(D*A))"),
    .INIT(32'h153f55ff))
    al_75c9689d (
    .a(al_8fa78cd7),
    .b(al_ed722c3),
    .c(al_b177c678[5]),
    .d(al_e51dd35d[1]),
    .e(al_e51dd35d[5]),
    .o(al_14db5bac));
  AL_MAP_LUT4 #(
    .EQN("~(D*C*B*A)"),
    .INIT(16'h7fff))
    al_7d5e834f (
    .a(al_6686e514),
    .b(al_398aa9b7),
    .c(al_c899e579),
    .d(al_14db5bac),
    .o(al_ba39ed5));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_9c0495c2 (
    .a(al_9a1e051f),
    .b(al_b177c678[10]),
    .o(al_3614973b));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_cbc158b4 (
    .a(al_308bb9d7),
    .b(al_b177c678[1]),
    .o(al_8fa78cd7));
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    al_63178c5c (
    .a(al_7f4641de),
    .b(al_b177c678[11]),
    .c(al_e51dd35d[11]),
    .o(al_61aa8cc4));
  AL_MAP_LUT4 #(
    .EQN("(~A*~(D*C*B))"),
    .INIT(16'h1555))
    al_fb1cf33e (
    .a(al_61aa8cc4),
    .b(al_526f0e81),
    .c(al_b177c678[3]),
    .d(al_e51dd35d[3]),
    .o(al_8de689b5));
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    al_c2b6bbc5 (
    .a(al_57472ce0),
    .b(al_b177c678[2]),
    .c(al_e51dd35d[2]),
    .o(al_8117cbaf));
  AL_MAP_LUT5 #(
    .EQN("(~B*A*~(E*D*C))"),
    .INIT(32'h02222222))
    al_41191205 (
    .a(al_8de689b5),
    .b(al_8117cbaf),
    .c(al_da1bb934),
    .d(al_b177c678[9]),
    .e(al_e51dd35d[9]),
    .o(al_6686e514));
  AL_DFF_X al_43cd0cb8 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_6b13d5d1),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_505a8ba1));
  AL_DFF_X al_aa4dc311 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_505a8ba1),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_c149ae55));
  AL_DFF_X al_cf384190 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_c149ae55),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_5993299e));
  AL_DFF_X al_7e5d88e6 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_f8ea711f),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_d9d89118));
  AL_MAP_LUT4 #(
    .EQN("(C*~B*~(D*A))"),
    .INIT(16'h1030))
    al_b858ce90 (
    .a(al_30e8aa56),
    .b(al_708020b7),
    .c(al_d9d89118),
    .d(al_e51dd35d[0]),
    .o(al_86f22ea6));
  AL_MAP_LUT4 #(
    .EQN("~(~A*~(B*(D@C)))"),
    .INIT(16'haeea))
    al_903b195f (
    .a(al_86f22ea6),
    .b(al_88802150),
    .c(al_c149ae55),
    .d(al_5993299e),
    .o(al_f8ea711f));
  AL_DFF_X al_4eee4595 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_b7c06e8),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_a66d5fb3));
  AL_DFF_X al_da254690 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_a66d5fb3),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_b89ef6ac));
  AL_DFF_X al_6a61ee53 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_b89ef6ac),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_cdde73b2));
  AL_DFF_X al_7701431b (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_da4cb417),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_da1bb934));
  AL_MAP_LUT4 #(
    .EQN("(C*~B*~(D*A))"),
    .INIT(16'h1030))
    al_ca2a4422 (
    .a(al_30e8aa56),
    .b(al_708020b7),
    .c(al_da1bb934),
    .d(al_e51dd35d[9]),
    .o(al_1f3c0565));
  AL_MAP_LUT4 #(
    .EQN("~(~A*~(~D*C*B))"),
    .INIT(16'haaea))
    al_62083cec (
    .a(al_1f3c0565),
    .b(al_88802150),
    .c(al_b89ef6ac),
    .d(al_cdde73b2),
    .o(al_da4cb417));
  AL_DFF_X al_73a03a4 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_a01dc74b),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_4f45a125));
  AL_MAP_LUT4 #(
    .EQN("(~(D@C)*~(B@A))"),
    .INIT(16'h9009))
    al_dc900494 (
    .a(al_b93b255a),
    .b(al_c838557b),
    .c(al_e8eadd18),
    .d(al_7b236973),
    .o(al_f11712f2));
  AL_MAP_LUT4 #(
    .EQN("(B*A*~(D@C))"),
    .INIT(16'h8008))
    al_21a55ccd (
    .a(al_63760d07),
    .b(al_f11712f2),
    .c(al_61121be0),
    .d(al_29c7f166),
    .o(al_336be4b8));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*~A))"),
    .INIT(8'hb0))
    al_a3e61319 (
    .a(al_4d21d8b),
    .b(al_336be4b8),
    .c(al_88802150),
    .o(al_a01dc74b));
  AL_MAP_LUT4 #(
    .EQN("(~C*B*~(D*A))"),
    .INIT(16'h040c))
    al_317ac486 (
    .a(al_30e8aa56),
    .b(al_4f45a125),
    .c(al_5fc28e7c),
    .d(al_e51dd35d[8]),
    .o(al_4d21d8b));
  AL_MAP_LUT4 #(
    .EQN("(~(D@C)*~(B@A))"),
    .INIT(16'h9009))
    al_e3f2d163 (
    .a(al_ac151ce3),
    .b(al_1252d5f0),
    .c(al_c83b6fd1),
    .d(al_3fd2fed8),
    .o(al_63760d07));
  AL_DFF_X al_361fa4f4 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_a32003b9),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_37f3ba1a));
  AL_DFF_X al_ed8e40cc (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_37f3ba1a),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_53163535));
  AL_DFF_X al_b0fa94c6 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_53163535),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_d1bcbb90));
  AL_DFF_X al_fe8cb234 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_984b96af),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_2fa9acc4));
  AL_MAP_LUT4 #(
    .EQN("(C*~B*~(D*A))"),
    .INIT(16'h1030))
    al_bf0ef6ae (
    .a(al_30e8aa56),
    .b(al_708020b7),
    .c(al_2fa9acc4),
    .d(al_e51dd35d[6]),
    .o(al_91a7358e));
  AL_MAP_LUT4 #(
    .EQN("~(~A*~(B*(D@C)))"),
    .INIT(16'haeea))
    al_167b995e (
    .a(al_91a7358e),
    .b(al_88802150),
    .c(al_53163535),
    .d(al_d1bcbb90),
    .o(al_984b96af));
  AL_DFF_X al_4a4f2f3d (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_f248b958),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_92bbd647));
  AL_MAP_LUT5 #(
    .EQN("~(C*~(~D*B*~(E*A)))"),
    .INIT(32'h0f4f0fcf))
    al_ccc339a (
    .a(al_30e8aa56),
    .b(al_92bbd647),
    .c(al_7627ebd5),
    .d(al_5fc28e7c),
    .e(al_e51dd35d[7]),
    .o(al_f248b958));
  AL_DFF_X al_6044e2f2 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_1ce97d69),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_413ac873));
  AL_DFF_X al_ac9a4109 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_413ac873),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_2bbbdd94));
  AL_DFF_X al_b0f9e70d (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_2bbbdd94),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_a4b52ca8));
  AL_DFF_X al_d89ddf25 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_106026c7),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_45558a7e));
  AL_MAP_LUT4 #(
    .EQN("(C*~B*~(D*A))"),
    .INIT(16'h1030))
    al_98d3fd01 (
    .a(al_30e8aa56),
    .b(al_708020b7),
    .c(al_45558a7e),
    .d(al_e51dd35d[4]),
    .o(al_c3681e14));
  AL_MAP_LUT4 #(
    .EQN("~(~A*~(B*(D@C)))"),
    .INIT(16'haeea))
    al_a281155a (
    .a(al_c3681e14),
    .b(al_88802150),
    .c(al_2bbbdd94),
    .d(al_a4b52ca8),
    .o(al_106026c7));
  AL_DFF_X al_65419187 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_ffb6381f),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_ed722c3));
  AL_MAP_LUT4 #(
    .EQN("(~C*B*~(D*A))"),
    .INIT(16'h040c))
    al_433a8d0f (
    .a(al_30e8aa56),
    .b(al_ed722c3),
    .c(al_5fc28e7c),
    .d(al_e51dd35d[5]),
    .o(al_f3a31c7d));
  AL_MAP_LUT3 #(
    .EQN("~(~A*~(C*B))"),
    .INIT(8'hea))
    al_8a6811e1 (
    .a(al_f3a31c7d),
    .b(al_a84e89a9),
    .c(al_7627ebd5),
    .o(al_ffb6381f));
  AL_DFF_X al_8ad7c54 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_b443989b),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_9a1e051f));
  AL_MAP_LUT2 #(
    .EQN("~(~B*A)"),
    .INIT(4'hd))
    al_c17375fc (
    .a(al_88802150),
    .b(al_5fc28e7c),
    .o(al_708020b7));
  AL_MAP_LUT4 #(
    .EQN("(C*~B*~(D*A))"),
    .INIT(16'h1030))
    al_8e1c0b87 (
    .a(al_30e8aa56),
    .b(al_708020b7),
    .c(al_9a1e051f),
    .d(al_e51dd35d[10]),
    .o(al_d3f084a9));
  AL_MAP_LUT4 #(
    .EQN("~(~A*~(~D*C*B))"),
    .INIT(16'haaea))
    al_5bb1386f (
    .a(al_d3f084a9),
    .b(al_88802150),
    .c(al_cd6b6937),
    .d(al_7c7a2605),
    .o(al_b443989b));
  AL_DFF_X al_8edf36c0 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_4c2b5ca),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_a44d2fc2));
  AL_DFF_X al_1640556c (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_c06b045f),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_526f0e81));
  AL_MAP_LUT4 #(
    .EQN("(~C*B*~(D*A))"),
    .INIT(16'h040c))
    al_77ec85b9 (
    .a(al_30e8aa56),
    .b(al_526f0e81),
    .c(al_5fc28e7c),
    .d(al_e51dd35d[3]),
    .o(al_99baf6a5));
  AL_MAP_LUT3 #(
    .EQN("~(~A*~(C*~B))"),
    .INIT(8'hba))
    al_5581cd9b (
    .a(al_99baf6a5),
    .b(al_a44d2fc2),
    .c(al_4c2b5ca),
    .o(al_c06b045f));
  AL_DFF_X al_34915428 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_5e4391bd),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_bf002685));
  AL_DFF_X al_d0532065 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_d6dc65a2),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_57472ce0));
  AL_MAP_LUT4 #(
    .EQN("(~C*B*~(D*A))"),
    .INIT(16'h040c))
    al_3967a41e (
    .a(al_30e8aa56),
    .b(al_57472ce0),
    .c(al_5fc28e7c),
    .d(al_e51dd35d[2]),
    .o(al_6fe0e629));
  AL_MAP_LUT3 #(
    .EQN("~(~A*~(C*~B))"),
    .INIT(8'hba))
    al_e47eb9f7 (
    .a(al_6fe0e629),
    .b(al_bf002685),
    .c(al_5e4391bd),
    .o(al_d6dc65a2));
  AL_DFF_X al_5dd5c24f (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_a779b5a8),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_955d9cec));
  AL_DFF_X al_6b8de221 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_955d9cec),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_dcb4c727));
  AL_DFF_X al_2ebfbc3c (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_dcb4c727),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_eb8a3dd2));
  AL_DFF_X al_abf02e24 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_6ac22ffe),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_308bb9d7));
  AL_MAP_LUT4 #(
    .EQN("(C*~B*~(D*A))"),
    .INIT(16'h1030))
    al_31518de6 (
    .a(al_30e8aa56),
    .b(al_708020b7),
    .c(al_308bb9d7),
    .d(al_e51dd35d[1]),
    .o(al_3eb9bbc4));
  AL_MAP_LUT4 #(
    .EQN("~(~A*~(B*(D@C)))"),
    .INIT(16'haeea))
    al_920ad0 (
    .a(al_3eb9bbc4),
    .b(al_88802150),
    .c(al_dcb4c727),
    .d(al_eb8a3dd2),
    .o(al_6ac22ffe));
  AL_DFF_X al_198074f4 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_699828dd),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_7f4641de));
  AL_MAP_LUT4 #(
    .EQN("(~C*B*~(D*A))"),
    .INIT(16'h040c))
    al_56d26791 (
    .a(al_30e8aa56),
    .b(al_7f4641de),
    .c(al_5fc28e7c),
    .d(al_e51dd35d[11]),
    .o(al_6fa35dfb));
  AL_MAP_LUT4 #(
    .EQN("(B*~(~A*~(D*~C)))"),
    .INIT(16'h8c88))
    al_6401bd46 (
    .a(al_6fa35dfb),
    .b(al_88802150),
    .c(al_cd6b6937),
    .d(al_7c7a2605),
    .o(al_699828dd));
  AL_DFF_X al_3e22b665 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_db34540d),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_efc38ce1));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_9e866577 (
    .a(al_c2eda8be),
    .b(al_2ab47f7),
    .o(al_db34540d));
  AL_DFF_X al_a724e31a (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_29d6fa33),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_2ab47f7));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    al_a4c0cdca (
    .a(bus2ip_cs),
    .b(al_5fc28e7c),
    .o(al_c2eda8be));
  AL_MAP_LUT4 #(
    .EQN("(D*~C*B*A)"),
    .INIT(16'h0800))
    al_48bd2dfe (
    .a(al_c2eda8be),
    .b(al_dd104e51[0]),
    .c(al_dd104e51[1]),
    .d(al_5021181f),
    .o(al_29d6fa33));
  AL_MAP_LUT4 #(
    .EQN("(~C*(B*~(D)*~(A)+B*D*~(A)+~(B)*D*A+B*D*A))"),
    .INIT(16'h0e04))
    al_a6ecca02 (
    .a(al_2b610613),
    .b(al_71387e99[1]),
    .c(al_5fc28e7c),
    .d(al_e51dd35d[1]),
    .o(al_fc193bfe));
  AL_MAP_LUT4 #(
    .EQN("(~C*(B*~(D)*~(A)+B*D*~(A)+~(B)*D*A+B*D*A))"),
    .INIT(16'h0e04))
    al_26457f52 (
    .a(al_2b610613),
    .b(al_71387e99[0]),
    .c(al_5fc28e7c),
    .d(al_e51dd35d[0]),
    .o(al_e1d86dd6));
  AL_DFF_X al_d4a0c13 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e1d86dd6),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_71387e99[0]));
  AL_DFF_X al_dfbf63d3 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_fc193bfe),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_71387e99[1]));
  AL_DFF_X al_a83d2b2f (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[8]),
    .en(al_52bd88eb),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_b177c678[8]));
  AL_DFF_X al_c79f88f3 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[9]),
    .en(al_52bd88eb),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_b177c678[9]));
  AL_DFF_X al_971a5471 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[10]),
    .en(al_52bd88eb),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_b177c678[10]));
  AL_DFF_X al_9845ac36 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[11]),
    .en(al_52bd88eb),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_b177c678[11]));
  AL_DFF_X al_3ab560c2 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[0]),
    .en(al_52bd88eb),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_b177c678[0]));
  AL_DFF_X al_53b34dc4 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[1]),
    .en(al_52bd88eb),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_b177c678[1]));
  AL_DFF_X al_ff060523 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[2]),
    .en(al_52bd88eb),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_b177c678[2]));
  AL_DFF_X al_3935ec8c (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[3]),
    .en(al_52bd88eb),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_b177c678[3]));
  AL_DFF_X al_69498b1c (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[4]),
    .en(al_52bd88eb),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_b177c678[4]));
  AL_DFF_X al_74452781 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[5]),
    .en(al_52bd88eb),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_b177c678[5]));
  AL_DFF_X al_6816266 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[6]),
    .en(al_52bd88eb),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_b177c678[6]));
  AL_DFF_X al_67d37438 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[7]),
    .en(al_52bd88eb),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_b177c678[7]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    al_6fbdaa4c (
    .a(al_c2eda8be),
    .b(al_dd104e51[0]),
    .o(al_f1633e74));
  AL_MAP_LUT3 #(
    .EQN("(A*(C@B))"),
    .INIT(8'h28))
    al_d9bcb824 (
    .a(al_c2eda8be),
    .b(al_dd104e51[0]),
    .c(al_dd104e51[1]),
    .o(al_c1e9c95e));
  AL_DFF_X al_dc2db6e (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_f1633e74),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_dd104e51[0]));
  AL_DFF_X al_eff53df5 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_c1e9c95e),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_dd104e51[1]));
  AL_DFF_X al_4478bf22 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[0]),
    .en(al_6e74fe6b),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_9b1aea19[0]));
  AL_DFF_X al_af2d86fd (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[1]),
    .en(al_6e74fe6b),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_9b1aea19[1]));
  AL_DFF_X al_2deb87a (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[2]),
    .en(al_6e74fe6b),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_9b1aea19[2]));
  AL_DFF_X al_9d22f581 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[3]),
    .en(al_6e74fe6b),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_9b1aea19[3]));
  AL_DFF_X al_feea482 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[4]),
    .en(al_6e74fe6b),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_9b1aea19[4]));
  AL_DFF_X al_909f644f (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[5]),
    .en(al_6e74fe6b),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_9b1aea19[5]));
  AL_DFF_X al_79320c91 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[6]),
    .en(al_6e74fe6b),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_9b1aea19[6]));
  AL_DFF_X al_777bd8f4 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[7]),
    .en(al_6e74fe6b),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_9b1aea19[7]));
  AL_DFF_X al_b76d5969 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[8]),
    .en(al_b6f11c75),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_393235c7[8]));
  AL_DFF_X al_a1651dad (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[0]),
    .en(al_b6f11c75),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_393235c7[0]));
  AL_DFF_X al_ef696488 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[1]),
    .en(al_b6f11c75),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_393235c7[1]));
  AL_DFF_X al_4141ee0d (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[2]),
    .en(al_b6f11c75),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_393235c7[2]));
  AL_DFF_X al_3db4d5f2 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[3]),
    .en(al_b6f11c75),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_393235c7[3]));
  AL_DFF_X al_eb7b2357 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[4]),
    .en(al_b6f11c75),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_393235c7[4]));
  AL_DFF_X al_7d58b333 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[5]),
    .en(al_b6f11c75),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_393235c7[5]));
  AL_DFF_X al_754d1f1 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[6]),
    .en(al_b6f11c75),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_393235c7[6]));
  AL_DFF_X al_cd75a4de (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e51dd35d[7]),
    .en(al_b6f11c75),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_393235c7[7]));
  AL_DFF_X al_7b299cd6 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_23a17017[0]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_36c01d6[0]));
  AL_DFF_X al_662981e8 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_23a17017[1]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_36c01d6[1]));
  AL_DFF_X al_a107eb5e (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_36c01d6[0]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_cad3b7fb[0]));
  AL_DFF_X al_dee8bb30 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_36c01d6[1]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_cad3b7fb[1]));
  AL_DFF_X al_55fa5eaa (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_a77386b6),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_20402b23[0]));
  AL_DFF_X al_4b753320 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_9c158c73),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_20402b23[1]));
  AL_DFF_X al_2284e45c (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_616c2cfd),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_1a18409a[0]));
  AL_DFF_X al_68a65c4c (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_ce03b754),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_1a18409a[1]));
  AL_DFF_X al_9f8e5301 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_85f14393),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_1a18409a[2]));
  AL_DFF_X al_b5bfa166 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_5702ad79[8]),
    .en(1'b1),
    .sr(~al_95b8b500),
    .ss(1'b0),
    .q(al_920be55[8]));
  AL_DFF_X al_989011ee (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_5702ad79[9]),
    .en(1'b1),
    .sr(~al_95b8b500),
    .ss(1'b0),
    .q(al_920be55[9]));
  AL_DFF_X al_4a7edb1 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_5702ad79[10]),
    .en(1'b1),
    .sr(~al_95b8b500),
    .ss(1'b0),
    .q(al_920be55[10]));
  AL_DFF_X al_ca2a3b00 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_5702ad79[11]),
    .en(1'b1),
    .sr(~al_95b8b500),
    .ss(1'b0),
    .q(al_920be55[11]));
  AL_DFF_X al_f27f5dbf (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_c76cfdc9),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_920be55[12]));
  AL_DFF_X al_7fa56cd0 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_21b6a634),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_920be55[13]));
  AL_DFF_X al_6c9c5a1c (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_e82a49b1),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_920be55[14]));
  AL_DFF_X al_4d174cc6 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_1efcb07b),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_920be55[15]));
  AL_DFF_X al_51f1b6f7 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_5702ad79[0]),
    .en(1'b1),
    .sr(~al_95b8b500),
    .ss(1'b0),
    .q(al_920be55[0]));
  AL_MAP_LUT5 #(
    .EQN("(~B*A*~(E*D*~C))"),
    .INIT(32'h20222222))
    al_e667b9ac (
    .a(al_616c2cfd),
    .b(al_5fc28e7c),
    .c(al_31dabf2c[0]),
    .d(al_31dabf2c[1]),
    .e(al_31dabf2c[2]),
    .o(al_95b8b500));
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    al_79dfadf2 (
    .a(al_95b8b500),
    .b(al_31dabf2c[0]),
    .c(al_31dabf2c[3]),
    .o(al_72029bee));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_d3c4b0b (
    .a(al_72029bee),
    .b(al_c7470c2f[12]),
    .o(al_c76cfdc9));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_a3dc76c0 (
    .a(al_72029bee),
    .b(al_c7470c2f[13]),
    .o(al_21b6a634));
  AL_DFF_X al_684dbff3 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_5702ad79[1]),
    .en(1'b1),
    .sr(~al_95b8b500),
    .ss(1'b0),
    .q(al_920be55[1]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_4cf93457 (
    .a(al_72029bee),
    .b(al_c7470c2f[14]),
    .o(al_e82a49b1));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_efa70780 (
    .a(al_72029bee),
    .b(al_c7470c2f[15]),
    .o(al_1efcb07b));
  AL_DFF_X al_be1cdde4 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_5702ad79[2]),
    .en(1'b1),
    .sr(~al_95b8b500),
    .ss(1'b0),
    .q(al_920be55[2]));
  AL_DFF_X al_2e51be68 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_5702ad79[3]),
    .en(1'b1),
    .sr(~al_95b8b500),
    .ss(1'b0),
    .q(al_920be55[3]));
  AL_DFF_X al_afb01ed0 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_5702ad79[4]),
    .en(1'b1),
    .sr(~al_95b8b500),
    .ss(1'b0),
    .q(al_920be55[4]));
  AL_DFF_X al_79316557 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_5702ad79[5]),
    .en(1'b1),
    .sr(~al_95b8b500),
    .ss(1'b0),
    .q(al_920be55[5]));
  AL_DFF_X al_cb86dae6 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_5702ad79[6]),
    .en(1'b1),
    .sr(~al_95b8b500),
    .ss(1'b0),
    .q(al_920be55[6]));
  AL_DFF_X al_4d5e80da (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_5702ad79[7]),
    .en(1'b1),
    .sr(~al_95b8b500),
    .ss(1'b0),
    .q(al_920be55[7]));
  AL_DFF_X al_c3b0c722 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[8]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[8]));
  AL_DFF_X al_ef5d0082 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[9]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[9]));
  AL_DFF_X al_36c92e85 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[10]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[10]));
  AL_DFF_X al_64caa58a (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[11]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[11]));
  AL_DFF_X al_29972797 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[12]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[12]));
  AL_DFF_X al_351ef868 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[13]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[13]));
  AL_DFF_X al_d4cc1e67 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[14]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[14]));
  AL_DFF_X al_5d83ac91 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[15]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[15]));
  AL_DFF_X al_5db6475e (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[16]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[16]));
  AL_DFF_X al_b9243830 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[17]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[17]));
  AL_DFF_X al_720b02dc (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[0]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[0]));
  AL_DFF_X al_a1a6dff1 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[18]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[18]));
  AL_DFF_X al_64fbda11 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[19]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[19]));
  AL_DFF_X al_3749bc9f (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[20]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[20]));
  AL_DFF_X al_edb24b87 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[21]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[21]));
  AL_DFF_X al_bea7c8d (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[22]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[22]));
  AL_DFF_X al_6f4358b9 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[23]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[23]));
  AL_DFF_X al_85e2b015 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[24]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[24]));
  AL_DFF_X al_53e5ab81 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[25]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[25]));
  AL_DFF_X al_ec6482aa (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[26]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[26]));
  AL_DFF_X al_252b5712 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[27]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[27]));
  AL_DFF_X al_1f94e4ab (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[1]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[1]));
  AL_DFF_X al_8c3a01d1 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[28]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[28]));
  AL_DFF_X al_9dc6b41c (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[29]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[29]));
  AL_DFF_X al_a0e38edf (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[30]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[30]));
  AL_DFF_X al_f9f01592 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[31]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[31]));
  AL_DFF_X al_b501e711 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[2]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[2]));
  AL_DFF_X al_de219eb2 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[3]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[3]));
  AL_DFF_X al_7f8ac0c8 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[4]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[4]));
  AL_DFF_X al_4a70d995 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[5]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[5]));
  AL_DFF_X al_6e64f64c (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[6]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[6]));
  AL_DFF_X al_bc613025 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_bbad3df6[7]),
    .en(al_2ab47f7),
    .sr(al_13b806f6),
    .ss(1'b0),
    .q(ip2bus_data[7]));
  AL_DFF_X al_46cd1168 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_d7293817[8]),
    .en(al_32d460fa),
    .sr(al_708020b7),
    .ss(1'b0),
    .q(al_c7470c2f[8]));
  AL_DFF_X al_cf959712 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_d7293817[9]),
    .en(al_32d460fa),
    .sr(al_708020b7),
    .ss(1'b0),
    .q(al_c7470c2f[9]));
  AL_DFF_X al_b4843052 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_d7293817[10]),
    .en(al_32d460fa),
    .sr(al_708020b7),
    .ss(1'b0),
    .q(al_c7470c2f[10]));
  AL_DFF_X al_b81fbbba (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_d7293817[11]),
    .en(al_32d460fa),
    .sr(al_708020b7),
    .ss(1'b0),
    .q(al_c7470c2f[11]));
  AL_DFF_X al_7c6805f4 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_d7293817[12]),
    .en(al_32d460fa),
    .sr(al_708020b7),
    .ss(1'b0),
    .q(al_c7470c2f[12]));
  AL_DFF_X al_70770d7e (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_d7293817[13]),
    .en(al_32d460fa),
    .sr(al_708020b7),
    .ss(1'b0),
    .q(al_c7470c2f[13]));
  AL_DFF_X al_74334060 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_d7293817[14]),
    .en(al_32d460fa),
    .sr(al_708020b7),
    .ss(1'b0),
    .q(al_c7470c2f[14]));
  AL_DFF_X al_ccb4e4b4 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_d7293817[15]),
    .en(al_32d460fa),
    .sr(al_708020b7),
    .ss(1'b0),
    .q(al_c7470c2f[15]));
  AL_DFF_X al_cceede01 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_d7293817[0]),
    .en(al_32d460fa),
    .sr(al_708020b7),
    .ss(1'b0),
    .q(al_c7470c2f[0]));
  AL_DFF_X al_2d646a3b (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_d7293817[1]),
    .en(al_32d460fa),
    .sr(al_708020b7),
    .ss(1'b0),
    .q(al_c7470c2f[1]));
  AL_DFF_X al_48a49392 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_d7293817[2]),
    .en(al_32d460fa),
    .sr(al_708020b7),
    .ss(1'b0),
    .q(al_c7470c2f[2]));
  AL_DFF_X al_300971da (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_d7293817[3]),
    .en(al_32d460fa),
    .sr(al_708020b7),
    .ss(1'b0),
    .q(al_c7470c2f[3]));
  AL_DFF_X al_21a189ee (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_d7293817[4]),
    .en(al_32d460fa),
    .sr(al_708020b7),
    .ss(1'b0),
    .q(al_c7470c2f[4]));
  AL_DFF_X al_c4132801 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_d7293817[5]),
    .en(al_32d460fa),
    .sr(al_708020b7),
    .ss(1'b0),
    .q(al_c7470c2f[5]));
  AL_DFF_X al_69b1d674 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_d7293817[6]),
    .en(al_32d460fa),
    .sr(al_708020b7),
    .ss(1'b0),
    .q(al_c7470c2f[6]));
  AL_DFF_X al_9c7d60f4 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_d7293817[7]),
    .en(al_32d460fa),
    .sr(al_708020b7),
    .ss(1'b0),
    .q(al_c7470c2f[7]));
  AL_DFF_X al_bd238dde (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_75f96deb),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_5021181f));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_b6444a63 (
    .a(al_c2eda8be),
    .b(bus2ip_rnw),
    .o(al_75f96deb));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*C*~(D)+A*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hc5f0))
    al_c1bd4dad (
    .a(al_1b3c9082),
    .b(al_308bb9d7),
    .c(al_676471a2),
    .d(al_9cc4ec07),
    .o(al_5e43b7ef[1]));
  AL_MAP_LUT3 #(
    .EQN("(A*~(B)*~(C)+A*B*~(C)+~(A)*B*C+A*B*C)"),
    .INIT(8'hca))
    al_536de741 (
    .a(al_3b157964[1]),
    .b(al_5e43b7ef[1]),
    .c(al_31dabf2c[0]),
    .o(al_5702ad79[1]));
  AL_MAP_LUT3 #(
    .EQN("~(A*~(B)*~(C)+A*B*~(C)+~(A)*B*C+A*B*C)"),
    .INIT(8'h35))
    al_f6bcce90 (
    .a(al_16ef234c),
    .b(al_9b1aea19[0]),
    .c(al_31dabf2c[1]),
    .o(al_2353b709));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*B*~(C)*~(D)+A*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+A*~(B)*~(C)*D+A*B*~(C)*D+A*~(B)*C*D+A*B*C*D)"),
    .INIT(16'haae4))
    al_b2b87233 (
    .a(al_31dabf2c[3]),
    .b(al_b177c678[0]),
    .c(al_71387e99[0]),
    .d(al_af25ba1a),
    .o(al_b3762428));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*C*~(D)+A*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hc5f0))
    al_cd0a2e99 (
    .a(al_2353b709),
    .b(al_b1bbeb70),
    .c(al_b3762428),
    .d(al_af25ba1a),
    .o(al_3b157964[0]));
  AL_MAP_LUT3 #(
    .EQN("~(A*~(B)*~(C)+A*B*~(C)+~(A)*B*C+A*B*C)"),
    .INIT(8'h35))
    al_617dc53f (
    .a(al_b95ba0d6),
    .b(al_393235c7[0]),
    .c(al_31dabf2c[1]),
    .o(al_82a2d0d5));
  AL_MAP_LUT4 #(
    .EQN("(A*B*~(C)*~(D)+~(A)*~(B)*C*~(D)+A*~(B)*C*~(D)+A*B*C*~(D)+~(A)*B*~(C)*D+A*B*~(C)*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hccb8))
    al_fbb90e04 (
    .a(al_3582213c),
    .b(al_31dabf2c[2]),
    .c(al_c7470c2f[0]),
    .d(al_9cc4ec07),
    .o(al_cd368143));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*C*~(D)+A*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hc5f0))
    al_b13470d5 (
    .a(al_82a2d0d5),
    .b(al_d9d89118),
    .c(al_cd368143),
    .d(al_9cc4ec07),
    .o(al_5e43b7ef[0]));
  AL_MAP_LUT3 #(
    .EQN("(A*~(B)*~(C)+A*B*~(C)+~(A)*B*C+A*B*C)"),
    .INIT(8'hca))
    al_4301743e (
    .a(al_3b157964[0]),
    .b(al_5e43b7ef[0]),
    .c(al_31dabf2c[0]),
    .o(al_5702ad79[0]));
  AL_MAP_LUT3 #(
    .EQN("~(A*~(B)*~(C)+A*B*~(C)+~(A)*B*C+A*B*C)"),
    .INIT(8'h35))
    al_e28851d3 (
    .a(al_da1bb934),
    .b(al_a44d2fc2),
    .c(al_31dabf2c[1]),
    .o(al_3ec8fd19));
  AL_MAP_LUT4 #(
    .EQN("(~(D*B)*~(A)*~(C)+~(D*B)*A*~(C)+~(~(D*B))*A*C+~(D*B)*A*C)"),
    .INIT(16'ha3af))
    al_4dccbf28 (
    .a(al_3ec8fd19),
    .b(al_c7470c2f[9]),
    .c(al_31dabf2c[2]),
    .d(al_31dabf2c[3]),
    .o(al_68ead1ac));
  AL_MAP_LUT3 #(
    .EQN("(~C*B*~A)"),
    .INIT(8'h04))
    al_6ef7cc4e (
    .a(al_31dabf2c[0]),
    .b(al_31dabf2c[2]),
    .c(al_31dabf2c[3]),
    .o(al_94075e8));
  AL_MAP_LUT4 #(
    .EQN("~(~(C*B)*~(D*~A))"),
    .INIT(16'hd5c0))
    al_4632f674 (
    .a(al_68ead1ac),
    .b(al_94075e8),
    .c(al_b177c678[9]),
    .d(al_31dabf2c[0]),
    .o(al_5702ad79[9]));
  AL_MAP_LUT3 #(
    .EQN("~(A*~(B)*~(C)+A*B*~(C)+~(A)*B*C+A*B*C)"),
    .INIT(8'h35))
    al_b19436f2 (
    .a(al_9a1e051f),
    .b(al_bf002685),
    .c(al_31dabf2c[1]),
    .o(al_e16c5ea4));
  AL_MAP_LUT4 #(
    .EQN("(~(D*B)*~(A)*~(C)+~(D*B)*A*~(C)+~(~(D*B))*A*C+~(D*B)*A*C)"),
    .INIT(16'ha3af))
    al_4881b345 (
    .a(al_e16c5ea4),
    .b(al_c7470c2f[10]),
    .c(al_31dabf2c[2]),
    .d(al_31dabf2c[3]),
    .o(al_7679365c));
  AL_MAP_LUT4 #(
    .EQN("~(~(C*B)*~(D*~A))"),
    .INIT(16'hd5c0))
    al_dd8cdb6d (
    .a(al_7679365c),
    .b(al_94075e8),
    .c(al_b177c678[10]),
    .d(al_31dabf2c[0]),
    .o(al_5702ad79[10]));
  AL_MAP_LUT3 #(
    .EQN("~(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C)"),
    .INIT(8'h53))
    al_abced2c0 (
    .a(al_8aa38a42),
    .b(al_7f4641de),
    .c(al_31dabf2c[1]),
    .o(al_32b56e4d));
  AL_MAP_LUT4 #(
    .EQN("(~(D*B)*~(A)*~(C)+~(D*B)*A*~(C)+~(~(D*B))*A*C+~(D*B)*A*C)"),
    .INIT(16'ha3af))
    al_8d82d888 (
    .a(al_32b56e4d),
    .b(al_c7470c2f[11]),
    .c(al_31dabf2c[2]),
    .d(al_31dabf2c[3]),
    .o(al_7b19bf65));
  AL_MAP_LUT4 #(
    .EQN("~(~(C*B)*~(D*~A))"),
    .INIT(16'hd5c0))
    al_1cabc (
    .a(al_7b19bf65),
    .b(al_94075e8),
    .c(al_b177c678[11]),
    .d(al_31dabf2c[0]),
    .o(al_5702ad79[11]));
  AL_MAP_LUT3 #(
    .EQN("~(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'h47))
    al_c0c0d105 (
    .a(al_31dabf2c[1]),
    .b(al_31dabf2c[2]),
    .c(al_31dabf2c[3]),
    .o(al_9cc4ec07));
  AL_MAP_LUT4 #(
    .EQN("~(C*~((D*B))*~(A)+C*(D*B)*~(A)+~(C)*(D*B)*A+C*(D*B)*A)"),
    .INIT(16'h27af))
    al_74188084 (
    .a(al_9cc4ec07),
    .b(al_393235c7[8]),
    .c(al_c7470c2f[8]),
    .d(al_31dabf2c[1]),
    .o(al_4f21763f));
  AL_MAP_LUT5 #(
    .EQN("(~A*~((B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D))*~(E)+~A*(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)*~(E)+~(~A)*(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)*E+~A*(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)*E)"),
    .INIT(32'hf0cc5555))
    al_6a1762cb (
    .a(al_4f21763f),
    .b(al_4f45a125),
    .c(al_20402b23[1]),
    .d(al_31dabf2c[1]),
    .e(al_31dabf2c[2]),
    .o(al_5e43b7ef[8]));
  AL_MAP_LUT4 #(
    .EQN("~(~(C*B)*~(D*A))"),
    .INIT(16'heac0))
    al_b2374c00 (
    .a(al_5e43b7ef[8]),
    .b(al_94075e8),
    .c(al_b177c678[8]),
    .d(al_31dabf2c[0]),
    .o(al_5702ad79[8]));
  AL_MAP_LUT4 #(
    .EQN("~(C*~((D*B))*~(A)+C*(D*B)*~(A)+~(C)*(D*B)*A+C*(D*B)*A)"),
    .INIT(16'h27af))
    al_71b0c2f4 (
    .a(al_9cc4ec07),
    .b(al_393235c7[7]),
    .c(al_c7470c2f[7]),
    .d(al_31dabf2c[1]),
    .o(al_c33e6123));
  AL_MAP_LUT5 #(
    .EQN("(~A*~((B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D))*~(E)+~A*(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)*~(E)+~(~A)*(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)*E+~A*(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)*E)"),
    .INIT(32'hf0cc5555))
    al_cd16d3ea (
    .a(al_c33e6123),
    .b(al_92bbd647),
    .c(al_20402b23[0]),
    .d(al_31dabf2c[1]),
    .e(al_31dabf2c[2]),
    .o(al_5e43b7ef[7]));
  AL_MAP_LUT4 #(
    .EQN("~((C*A)*~(B)*~(D)+(C*A)*B*~(D)+~((C*A))*B*D+(C*A)*B*D)"),
    .INIT(16'h335f))
    al_943055ae (
    .a(al_9b1aea19[7]),
    .b(al_b177c678[7]),
    .c(al_31dabf2c[1]),
    .d(al_31dabf2c[2]),
    .o(al_7d282ca5));
  AL_MAP_LUT4 #(
    .EQN("((~D*~B)*~(A)*~(C)+(~D*~B)*A*~(C)+~((~D*~B))*A*C+(~D*~B)*A*C)"),
    .INIT(16'ha0a3))
    al_47f3bece (
    .a(al_5e43b7ef[7]),
    .b(al_7d282ca5),
    .c(al_31dabf2c[0]),
    .d(al_31dabf2c[3]),
    .o(al_5702ad79[7]));
  AL_MAP_LUT4 #(
    .EQN("~(C*~((D*B))*~(A)+C*(D*B)*~(A)+~(C)*(D*B)*A+C*(D*B)*A)"),
    .INIT(16'h27af))
    al_bcd10830 (
    .a(al_9cc4ec07),
    .b(al_393235c7[6]),
    .c(al_c7470c2f[6]),
    .d(al_31dabf2c[1]),
    .o(al_81327d3e));
  AL_MAP_LUT5 #(
    .EQN("(~A*~((C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D))*~(E)+~A*(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)*~(E)+~(~A)*(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)*E+~A*(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)*E)"),
    .INIT(32'hccf05555))
    al_139c21b8 (
    .a(al_81327d3e),
    .b(al_cb0dd761),
    .c(al_2fa9acc4),
    .d(al_31dabf2c[1]),
    .e(al_31dabf2c[2]),
    .o(al_5e43b7ef[6]));
  AL_MAP_LUT4 #(
    .EQN("~((C*A)*~(B)*~(D)+(C*A)*B*~(D)+~((C*A))*B*D+(C*A)*B*D)"),
    .INIT(16'h335f))
    al_2c63facf (
    .a(al_9b1aea19[6]),
    .b(al_b177c678[6]),
    .c(al_31dabf2c[1]),
    .d(al_31dabf2c[2]),
    .o(al_9cdab7c7));
  AL_MAP_LUT4 #(
    .EQN("((~D*~B)*~(A)*~(C)+(~D*~B)*A*~(C)+~((~D*~B))*A*C+(~D*~B)*A*C)"),
    .INIT(16'ha0a3))
    al_6aa54973 (
    .a(al_5e43b7ef[6]),
    .b(al_9cdab7c7),
    .c(al_31dabf2c[0]),
    .d(al_31dabf2c[3]),
    .o(al_5702ad79[6]));
  AL_MAP_LUT4 #(
    .EQN("~(C*~((D*B))*~(A)+C*(D*B)*~(A)+~(C)*(D*B)*A+C*(D*B)*A)"),
    .INIT(16'h27af))
    al_e1a0b422 (
    .a(al_9cc4ec07),
    .b(al_393235c7[5]),
    .c(al_c7470c2f[5]),
    .d(al_31dabf2c[1]),
    .o(al_f7f2188f));
  AL_MAP_LUT5 #(
    .EQN("(~A*~((C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D))*~(E)+~A*(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)*~(E)+~(~A)*(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)*E+~A*(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)*E)"),
    .INIT(32'hccf05555))
    al_9540c953 (
    .a(al_f7f2188f),
    .b(al_c23b0060),
    .c(al_ed722c3),
    .d(al_31dabf2c[1]),
    .e(al_31dabf2c[2]),
    .o(al_5e43b7ef[5]));
  AL_MAP_LUT4 #(
    .EQN("~((C*A)*~(B)*~(D)+(C*A)*B*~(D)+~((C*A))*B*D+(C*A)*B*D)"),
    .INIT(16'h335f))
    al_badfde23 (
    .a(al_9b1aea19[5]),
    .b(al_b177c678[5]),
    .c(al_31dabf2c[1]),
    .d(al_31dabf2c[2]),
    .o(al_f00aef70));
  AL_MAP_LUT4 #(
    .EQN("((~D*~B)*~(A)*~(C)+(~D*~B)*A*~(C)+~((~D*~B))*A*C+(~D*~B)*A*C)"),
    .INIT(16'ha0a3))
    al_e2b460a5 (
    .a(al_5e43b7ef[5]),
    .b(al_f00aef70),
    .c(al_31dabf2c[0]),
    .d(al_31dabf2c[3]),
    .o(al_5702ad79[5]));
  AL_MAP_LUT4 #(
    .EQN("~(C*~((D*B))*~(A)+C*(D*B)*~(A)+~(C)*(D*B)*A+C*(D*B)*A)"),
    .INIT(16'h27af))
    al_5a700777 (
    .a(al_9cc4ec07),
    .b(al_393235c7[4]),
    .c(al_c7470c2f[4]),
    .d(al_31dabf2c[1]),
    .o(al_c5f0c39c));
  AL_MAP_LUT5 #(
    .EQN("(~A*~((C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D))*~(E)+~A*(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)*~(E)+~(~A)*(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)*E+~A*(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)*E)"),
    .INIT(32'hccf05555))
    al_3bdda1fd (
    .a(al_c5f0c39c),
    .b(al_8a568df2),
    .c(al_45558a7e),
    .d(al_31dabf2c[1]),
    .e(al_31dabf2c[2]),
    .o(al_5e43b7ef[4]));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    al_50284cff (
    .a(al_94075e8),
    .b(al_31dabf2c[0]),
    .o(al_38ad212c));
  AL_MAP_LUT4 #(
    .EQN("~(A*~((~D*C))*~(B)+A*(~D*C)*~(B)+~(A)*(~D*C)*B+A*(~D*C)*B)"),
    .INIT(16'hdd1d))
    al_a4d5344 (
    .a(al_5e43b7ef[4]),
    .b(al_38ad212c),
    .c(al_22701a7e),
    .d(al_31dabf2c[1]),
    .o(al_c5fa2051));
  AL_MAP_LUT4 #(
    .EQN("~(C*~((D*B))*~(A)+C*(D*B)*~(A)+~(C)*(D*B)*A+C*(D*B)*A)"),
    .INIT(16'h27af))
    al_747f6c1a (
    .a(al_38ad212c),
    .b(al_9b1aea19[4]),
    .c(al_b177c678[4]),
    .d(al_31dabf2c[1]),
    .o(al_ec3b4ad8));
  AL_MAP_LUT4 #(
    .EQN("~(A*~(B)*~((~D*~C))+A*B*~((~D*~C))+~(A)*B*(~D*~C)+A*B*(~D*~C))"),
    .INIT(16'h5553))
    al_79f22e30 (
    .a(al_c5fa2051),
    .b(al_ec3b4ad8),
    .c(al_31dabf2c[0]),
    .d(al_31dabf2c[3]),
    .o(al_5702ad79[4]));
  AL_MAP_LUT4 #(
    .EQN("~(C*~((D*B))*~(A)+C*(D*B)*~(A)+~(C)*(D*B)*A+C*(D*B)*A)"),
    .INIT(16'h27af))
    al_ae6db744 (
    .a(al_9cc4ec07),
    .b(al_393235c7[3]),
    .c(al_c7470c2f[3]),
    .d(al_31dabf2c[1]),
    .o(al_9c31cda4));
  AL_MAP_LUT5 #(
    .EQN("(~A*~((C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D))*~(E)+~A*(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)*~(E)+~(~A)*(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)*E+~A*(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)*E)"),
    .INIT(32'hccf05555))
    al_13a13ccf (
    .a(al_9c31cda4),
    .b(al_db86f2c6),
    .c(al_526f0e81),
    .d(al_31dabf2c[1]),
    .e(al_31dabf2c[2]),
    .o(al_5e43b7ef[3]));
  AL_MAP_LUT4 #(
    .EQN("~(A*~((~D*C))*~(B)+A*(~D*C)*~(B)+~(A)*(~D*C)*B+A*(~D*C)*B)"),
    .INIT(16'hdd1d))
    al_55980d84 (
    .a(al_5e43b7ef[3]),
    .b(al_38ad212c),
    .c(al_9e6b7de2),
    .d(al_31dabf2c[1]),
    .o(al_b4339c18));
  AL_MAP_LUT4 #(
    .EQN("~(C*~((D*B))*~(A)+C*(D*B)*~(A)+~(C)*(D*B)*A+C*(D*B)*A)"),
    .INIT(16'h27af))
    al_98848a2e (
    .a(al_38ad212c),
    .b(al_9b1aea19[3]),
    .c(al_b177c678[3]),
    .d(al_31dabf2c[1]),
    .o(al_7b82efe9));
  AL_MAP_LUT4 #(
    .EQN("~(A*~(B)*~((~D*~C))+A*B*~((~D*~C))+~(A)*B*(~D*~C)+A*B*(~D*~C))"),
    .INIT(16'h5553))
    al_64986245 (
    .a(al_b4339c18),
    .b(al_7b82efe9),
    .c(al_31dabf2c[0]),
    .d(al_31dabf2c[3]),
    .o(al_5702ad79[3]));
  AL_MAP_LUT4 #(
    .EQN("~(C*~((D*B))*~(A)+C*(D*B)*~(A)+~(C)*(D*B)*A+C*(D*B)*A)"),
    .INIT(16'h27af))
    al_fcfc7ac7 (
    .a(al_9cc4ec07),
    .b(al_393235c7[2]),
    .c(al_c7470c2f[2]),
    .d(al_31dabf2c[1]),
    .o(al_3e1ee599));
  AL_MAP_LUT5 #(
    .EQN("(~A*~((C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D))*~(E)+~A*(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)*~(E)+~(~A)*(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)*E+~A*(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)*E)"),
    .INIT(32'hccf05555))
    al_c54e8df2 (
    .a(al_3e1ee599),
    .b(al_4ce78bd3),
    .c(al_57472ce0),
    .d(al_31dabf2c[1]),
    .e(al_31dabf2c[2]),
    .o(al_5e43b7ef[2]));
  AL_MAP_LUT4 #(
    .EQN("~(A*~((~D*C))*~(B)+A*(~D*C)*~(B)+~(A)*(~D*C)*B+A*(~D*C)*B)"),
    .INIT(16'hdd1d))
    al_d2e21993 (
    .a(al_5e43b7ef[2]),
    .b(al_38ad212c),
    .c(al_52c89f39),
    .d(al_31dabf2c[1]),
    .o(al_3d9ab129));
  AL_MAP_LUT4 #(
    .EQN("~(C*~((D*B))*~(A)+C*(D*B)*~(A)+~(C)*(D*B)*A+C*(D*B)*A)"),
    .INIT(16'h27af))
    al_26b8a1f5 (
    .a(al_38ad212c),
    .b(al_9b1aea19[2]),
    .c(al_b177c678[2]),
    .d(al_31dabf2c[1]),
    .o(al_a44c38d6));
  AL_MAP_LUT4 #(
    .EQN("~(A*~(B)*~((~D*~C))+A*B*~((~D*~C))+~(A)*B*(~D*~C)+A*B*(~D*~C))"),
    .INIT(16'h5553))
    al_ced6061b (
    .a(al_3d9ab129),
    .b(al_a44c38d6),
    .c(al_31dabf2c[0]),
    .d(al_31dabf2c[3]),
    .o(al_5702ad79[2]));
  AL_MAP_LUT3 #(
    .EQN("~(A*~(B)*~(C)+A*B*~(C)+~(A)*B*C+A*B*C)"),
    .INIT(8'h35))
    al_d2efbaa0 (
    .a(al_1d79b1a1),
    .b(al_9b1aea19[1]),
    .c(al_31dabf2c[1]),
    .o(al_b94d2dfb));
  AL_MAP_LUT3 #(
    .EQN("~(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C)"),
    .INIT(8'h53))
    al_205fa594 (
    .a(al_31dabf2c[1]),
    .b(al_31dabf2c[2]),
    .c(al_31dabf2c[3]),
    .o(al_af25ba1a));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*B*~(C)*~(D)+A*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+A*~(B)*~(C)*D+A*B*~(C)*D+A*~(B)*C*D+A*B*C*D)"),
    .INIT(16'haae4))
    al_e963b8df (
    .a(al_31dabf2c[3]),
    .b(al_b177c678[1]),
    .c(al_71387e99[1]),
    .d(al_af25ba1a),
    .o(al_259cbf7a));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*C*~(D)+A*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hc5f0))
    al_c2ecffd1 (
    .a(al_b94d2dfb),
    .b(al_4fdcf59),
    .c(al_259cbf7a),
    .d(al_af25ba1a),
    .o(al_3b157964[1]));
  AL_MAP_LUT3 #(
    .EQN("~(A*~(B)*~(C)+A*B*~(C)+~(A)*B*C+A*B*C)"),
    .INIT(8'h35))
    al_3645a1b8 (
    .a(al_88802150),
    .b(al_393235c7[1]),
    .c(al_31dabf2c[1]),
    .o(al_1b3c9082));
  AL_MAP_LUT4 #(
    .EQN("(A*B*~(C)*~(D)+~(A)*~(B)*C*~(D)+A*~(B)*C*~(D)+A*B*C*~(D)+~(A)*B*~(C)*D+A*B*~(C)*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hccb8))
    al_903b19d7 (
    .a(al_bd791c3),
    .b(al_31dabf2c[2]),
    .c(al_c7470c2f[1]),
    .d(al_9cc4ec07),
    .o(al_676471a2));
  AL_MAP_LUT4 #(
    .EQN("(A*(B*C*~(D)+~(B)*~(C)*D))"),
    .INIT(16'h0280))
    al_ad3e7c9b (
    .a(al_77a200ec),
    .b(al_bfad85c7),
    .c(al_31dabf2c[2]),
    .d(al_31dabf2c[3]),
    .o(al_816c81e));
  AL_DFF_X al_b299359f (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_816c81e),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_1f6f8ce));
  AL_MAP_LUT5 #(
    .EQN("(~E*D*~C*~B*A)"),
    .INIT(32'h00000200))
    al_983d4a6 (
    .a(al_dd104e51[0]),
    .b(al_dd104e51[1]),
    .c(al_5021181f),
    .d(al_31dabf2c[4]),
    .e(al_31dabf2c[5]),
    .o(al_77a200ec));
  AL_MAP_LUT4 #(
    .EQN("(D*A*(C@B))"),
    .INIT(16'h2800))
    al_92eb3d65 (
    .a(al_77a200ec),
    .b(al_bfad85c7),
    .c(al_31dabf2c[2]),
    .d(al_31dabf2c[3]),
    .o(al_3950c0e3));
  AL_DFF_X al_beee295f (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_3950c0e3),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_d37e7352));
  AL_DFF_X al_16c5d811 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_c0a32fb6),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_d1619569));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*B*A)"),
    .INIT(16'h0008))
    al_7be7c9b9 (
    .a(al_c2eda8be),
    .b(al_dd104e51[0]),
    .c(al_dd104e51[1]),
    .d(al_5021181f),
    .o(al_c0a32fb6));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_f37b0289 (
    .a(al_31dabf2c[0]),
    .b(al_31dabf2c[1]),
    .o(al_bfad85c7));
  AL_MAP_LUT5 #(
    .EQN("(~E*D*~C*(B@A))"),
    .INIT(32'h00000600))
    al_1df94635 (
    .a(al_bfad85c7),
    .b(al_31dabf2c[2]),
    .c(al_31dabf2c[3]),
    .d(al_31dabf2c[4]),
    .e(al_31dabf2c[5]),
    .o(al_ce03b754));
  AL_MAP_LUT4 #(
    .EQN("(D*~C*B*A)"),
    .INIT(16'h0800))
    al_36f76f5c (
    .a(al_ce03b754),
    .b(al_dd104e51[0]),
    .c(al_dd104e51[1]),
    .d(al_5021181f),
    .o(al_a84e89a9));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    al_8f9d6513 (
    .a(al_a84e89a9),
    .b(al_7627ebd5),
    .o(al_3be9d50d));
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    al_62cf103a (
    .a(al_3be9d50d),
    .b(al_db217863[0]),
    .c(al_db217863[1]),
    .o(al_eae4cfbd));
  AL_MAP_LUT3 #(
    .EQN("(C@(B*A))"),
    .INIT(8'h78))
    al_8e62c7d9 (
    .a(al_eae4cfbd),
    .b(al_c8acd60a[0]),
    .c(al_c8acd60a[1]),
    .o(al_d3e03398[1]));
  AL_MAP_LUT2 #(
    .EQN("(B@A)"),
    .INIT(4'h6))
    al_eaadc362 (
    .a(al_eae4cfbd),
    .b(al_c8acd60a[0]),
    .o(al_d3e03398[0]));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~((C@B))*~(D)+A*(C@B)*D)"),
    .INIT(16'h2841))
    al_3514b79a (
    .a(al_d3e03398[1]),
    .b(al_d3e03398[0]),
    .c(al_c9c2f504[0]),
    .d(al_c9c2f504[1]),
    .o(al_a13ef147));
  AL_DFF_X al_b67d51a8 (
    .ar(1'b0),
    .as(al_5fc28e7c),
    .clk(sys_clk),
    .d(al_a13ef147),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_7627ebd5));
  AL_MAP_LUT3 #(
    .EQN("(~C*B*~A)"),
    .INIT(8'h04))
    al_e859b379 (
    .a(al_f2b6b48e),
    .b(al_28cc37bd),
    .c(al_fc501cf6),
    .o(al_3f4d3806));
  AL_MAP_LUT3 #(
    .EQN("(C@(B*A))"),
    .INIT(8'h78))
    al_661b1d8c (
    .a(al_3f4d3806),
    .b(al_5a30c52e[0]),
    .c(al_5a30c52e[1]),
    .o(al_6b8e9c96[1]));
  AL_MAP_LUT2 #(
    .EQN("(B@A)"),
    .INIT(4'h6))
    al_f000145a (
    .a(al_3f4d3806),
    .b(al_5a30c52e[0]),
    .o(al_6b8e9c96[0]));
  AL_MAP_LUT4 #(
    .EQN("(A*~((C@B))*~(D)+~(A)*(C@B)*D)"),
    .INIT(16'h1482))
    al_6ac9d9bc (
    .a(al_6b8e9c96[1]),
    .b(al_6b8e9c96[0]),
    .c(al_89587562[0]),
    .d(al_89587562[1]),
    .o(al_455a775f));
  AL_DFF_X al_4b9d2f60 (
    .ar(al_f325bd5e),
    .as(1'b0),
    .clk(can_clk),
    .d(al_455a775f),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_f2b6b48e));
  AL_MAP_LUT2 #(
    .EQN("(B@A)"),
    .INIT(4'h6))
    al_e1ba810 (
    .a(al_d3e03398[1]),
    .b(al_d3e03398[0]),
    .o(al_9ad8f828[0]));
  AL_DFF_X al_fab95310 (
    .ar(al_5fc28e7c),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_9bbae348),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_db217863[0]));
  AL_DFF_X al_71f94bbb (
    .ar(al_5fc28e7c),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_a8011722),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_db217863[1]));
  AL_MAP_LUT3 #(
    .EQN("(C@(B*A))"),
    .INIT(8'h78))
    al_bb380d2f (
    .a(al_3be9d50d),
    .b(al_db217863[0]),
    .c(al_db217863[1]),
    .o(al_a8011722));
  AL_MAP_LUT2 #(
    .EQN("(B@A)"),
    .INIT(4'h6))
    al_c9fb3bf1 (
    .a(al_3be9d50d),
    .b(al_db217863[0]),
    .o(al_9bbae348));
  AL_DFF_X al_1ed4a101 (
    .ar(al_5fc28e7c),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_d3e03398[0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_c8acd60a[0]));
  AL_DFF_X al_db4825b0 (
    .ar(al_5fc28e7c),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_d3e03398[1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_c8acd60a[1]));
  AL_DFF_X al_7ccf3a02 (
    .ar(al_f325bd5e),
    .as(1'b0),
    .clk(can_clk),
    .d(al_980d37dc[0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_c9571165[0]));
  AL_DFF_X al_8ee6dfce (
    .ar(al_f325bd5e),
    .as(1'b0),
    .clk(can_clk),
    .d(al_c8acd60a[1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_c9571165[1]));
  AL_DFF_X al_2ccdff24 (
    .ar(al_f325bd5e),
    .as(1'b0),
    .clk(can_clk),
    .d(al_c9571165[0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_89587562[0]));
  AL_DFF_X al_f6413be7 (
    .ar(al_f325bd5e),
    .as(1'b0),
    .clk(can_clk),
    .d(al_c9571165[1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_89587562[1]));
  AL_DFF_X al_d7969ac1 (
    .ar(al_5fc28e7c),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_9ad8f828[0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_980d37dc[0]));
  AL_DFF_X al_938b79a7 (
    .ar(al_f325bd5e),
    .as(1'b0),
    .clk(can_clk),
    .d(al_a47d7a31[0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_88860dc0[0]));
  AL_DFF_X al_74224ce7 (
    .ar(al_f325bd5e),
    .as(1'b0),
    .clk(can_clk),
    .d(al_a47d7a31[1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_88860dc0[1]));
  AL_DFF_X al_8e4d9bfb (
    .ar(al_f325bd5e),
    .as(1'b0),
    .clk(can_clk),
    .d(al_6b8e9c96[0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_5a30c52e[0]));
  AL_DFF_X al_bbb350aa (
    .ar(al_f325bd5e),
    .as(1'b0),
    .clk(can_clk),
    .d(al_6b8e9c96[1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_5a30c52e[1]));
  AL_DFF_X al_95760f9f (
    .ar(al_5fc28e7c),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_8c7f4338[0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_6d883dbb[0]));
  AL_DFF_X al_5573fcc4 (
    .ar(al_5fc28e7c),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_5a30c52e[1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_6d883dbb[1]));
  AL_DFF_X al_4ef96899 (
    .ar(al_5fc28e7c),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_6d883dbb[0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_c9c2f504[0]));
  AL_DFF_X al_eee34a20 (
    .ar(al_5fc28e7c),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_6d883dbb[1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_c9c2f504[1]));
  AL_DFF_X al_1a8dec36 (
    .ar(al_f325bd5e),
    .as(1'b0),
    .clk(can_clk),
    .d(al_7aff4c0e[0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_8c7f4338[0]));
  EF2_LOGIC_BRAM #(
    //.FORCE_KEEP("OFF"),
    .ADDR_WIDTH_A(9),
    .ADDR_WIDTH_B(9),
    .BYTE_A(1),
    .BYTE_B(1),
    .BYTE_ENABLE(0),
    .DATA_DEPTH_A(512),
    .DATA_DEPTH_B(512),
    .DATA_WIDTH_A(32),
    .DATA_WIDTH_B(32),
    .DEBUGGABLE("NO"),
    .FILL_ALL("NONE"),
    .IMPLEMENT("AUTO"),
    .INIT_FILE("init_str:00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000"),
    .MODE("DP"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("ASYNC"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("READBEFOREWRITE"))
    al_f0d3d911 (
    .addra({6'b000000,al_c8acd60a[0],al_db217863}),
    .addrb({6'b000000,al_5a30c52e[0],al_88860dc0}),
    .bea(1'b0),
    .beb(1'b0),
    .cea(al_3be9d50d),
    .ceb(1'b1),
    .clka(sys_clk),
    .clkb(can_clk),
    .dia(32'b00000000000000000000000000000000),
    .dib({al_4d72b9b2,al_c82a6572,al_44a2aa35,al_1062483c,al_63913c39,al_551ac7a7,al_b5db1588,al_4c87e22f,al_3af54e2,al_e358fae7,al_293fa077,al_bbd4dfd9,al_62833b2c,al_1aa9ca61,al_4c7af78d,al_1349755c,al_ede2068e,al_923717dc,al_e767c021,al_b484e2cd,al_9f400bf4,al_2e3fd34b,al_eb14a827,al_9bc6bb2c,al_e25505e6,al_fa5f734c,al_e1013d80,al_2cc535d,al_44fb79fa,al_785db76a,al_4d3a5e56,al_3e01cb65}),
    .ocea(1'b1),
    .oceb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .wea(1'b0),
    .web(al_c7fcc022),
    .doa(al_ff999015));
  AL_MAP_LUT3 #(
    .EQN("(~C*B*~A)"),
    .INIT(8'h04))
    al_80ba342 (
    .a(al_f2b6b48e),
    .b(al_6a27e63),
    .c(al_6c6a3b70),
    .o(al_c7fcc022));
  AL_MAP_LUT4 #(
    .EQN("(~B*~A*~(~D*C))"),
    .INIT(16'h1101))
    al_f38e5d98 (
    .a(al_3f4d3806),
    .b(al_46cdf04e),
    .c(al_ef19480e),
    .d(al_51d40c44),
    .o(al_d2ab2fb0));
  AL_MAP_LUT3 #(
    .EQN("(A*(C@B))"),
    .INIT(8'h28))
    al_b5a451f0 (
    .a(al_d2ab2fb0),
    .b(al_c7fcc022),
    .c(al_88860dc0[0]),
    .o(al_a47d7a31[0]));
  AL_MAP_LUT4 #(
    .EQN("(A*(D@(C*B)))"),
    .INIT(16'h2a80))
    al_deb6842f (
    .a(al_d2ab2fb0),
    .b(al_c7fcc022),
    .c(al_88860dc0[0]),
    .d(al_88860dc0[1]),
    .o(al_a47d7a31[1]));
  AL_MAP_LUT2 #(
    .EQN("(B@A)"),
    .INIT(4'h6))
    al_e689dc02 (
    .a(al_6b8e9c96[1]),
    .b(al_6b8e9c96[0]),
    .o(al_7aff4c0e[0]));
  AL_DFF_X al_3864a120 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_f3eeb5f0),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_bb756df3));
  AL_MAP_LUT4 #(
    .EQN("(~D*(A@(~C*B)))"),
    .INIT(16'h00a6))
    al_5f5d356 (
    .a(al_bb756df3),
    .b(al_458e0e8f),
    .c(al_36a8d745),
    .d(al_f325bd5e),
    .o(al_f3eeb5f0));
  AL_DFF_X al_aa105c54 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_97727312),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_3bc3c6cc));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    al_f0467af3 (
    .a(al_8aa38a42),
    .b(al_f325bd5e),
    .o(al_97727312));
  AL_DFF_X al_a296cbbb (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_be948f0a),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_458e0e8f));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    al_23c890e8 (
    .a(al_3bc3c6cc),
    .b(al_f325bd5e),
    .o(al_be948f0a));
  AL_DFF_X al_fe889234 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_c4da894e),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_36a8d745));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    al_c4b02063 (
    .a(al_458e0e8f),
    .b(al_f325bd5e),
    .o(al_c4da894e));
  AL_DFF_X al_7742eb54 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_1048e296),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_9eeccb84));
  AL_DFF_X al_28317de (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_9eeccb84),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_5611afac));
  AL_DFF_X al_69d064b3 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_636b4d43),
    .en(1'b1),
    .sr(1'b0),
    .ss(al_5fc28e7c),
    .q(al_a5347325));
  AL_DFF_X al_ab38bac4 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_a5347325),
    .en(1'b1),
    .sr(1'b0),
    .ss(al_5fc28e7c),
    .q(al_c677df9a));
  AL_DFF_X al_7702ad0d (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_2c1739c0),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_94492ece));
  AL_DFF_X al_c9ca11e2 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_94492ece),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_26049e20));
  AL_DFF_X al_22d43f6c (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_5e4d7c),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_cad115d5));
  AL_DFF_X al_b0de93f7 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_cad115d5),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_d520d3da));
  AL_DFF_X al_c3053dba (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_9c2c7a46),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_ec8f5bc4));
  AL_DFF_X al_135c166f (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_ec8f5bc4),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_fcd300b5));
  AL_DFF_X al_3a4d8693 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_d97a7544),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_5fc28e7c));
  AL_DFF_X al_7342e869 (
    .ar(1'b0),
    .as(al_d97a7544),
    .clk(can_clk),
    .d(1'b0),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_6ff15277));
  AL_DFF_X al_e9657168 (
    .ar(1'b0),
    .as(al_d97a7544),
    .clk(can_clk),
    .d(al_6ff15277),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_f325bd5e));
  AL_DFF_X al_1fca45a0 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(1'b1),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_fc2b211e[0]));
  AL_DFF_X al_d9879240 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_da3979c2),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_fc2b211e[1]));
  AL_DFF_X al_c9a08299 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_fc2b211e[0]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_23a17017[0]));
  AL_DFF_X al_70b991a1 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_fc2b211e[1]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_23a17017[1]));
  AL_DFF_X al_6834283b (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_addr[0]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_31dabf2c[0]));
  AL_DFF_X al_558945d9 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_addr[1]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_31dabf2c[1]));
  AL_DFF_X al_12a9eb31 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_addr[2]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_31dabf2c[2]));
  AL_DFF_X al_1fe0051a (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_addr[3]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_31dabf2c[3]));
  AL_DFF_X al_7eab6425 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_addr[4]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_31dabf2c[4]));
  AL_DFF_X al_196bf4bd (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_addr[5]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_31dabf2c[5]));
  AL_DFF_X al_ca5a118d (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[8]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_e51dd35d[8]));
  AL_DFF_X al_4b73cf07 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[9]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_e51dd35d[9]));
  AL_DFF_X al_def12a04 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[10]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_e51dd35d[10]));
  AL_DFF_X al_79a6f359 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[11]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_e51dd35d[11]));
  AL_DFF_X al_9b8c5a03 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[12]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_8dfe7777[12]));
  AL_DFF_X al_34cb8062 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[13]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_8dfe7777[13]));
  AL_DFF_X al_a2e4d05b (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[14]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_8dfe7777[14]));
  AL_DFF_X al_1af2a7c2 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[15]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_8dfe7777[15]));
  AL_DFF_X al_10487f2c (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[16]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_8dfe7777[16]));
  AL_DFF_X al_37fd6ae5 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[17]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_8dfe7777[17]));
  AL_DFF_X al_abeaedf6 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[0]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_e51dd35d[0]));
  AL_DFF_X al_3caa85d8 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[18]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_8dfe7777[18]));
  AL_DFF_X al_a5d67a26 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[19]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_8dfe7777[19]));
  AL_DFF_X al_3d08f0ae (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[20]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_8dfe7777[20]));
  AL_DFF_X al_750e3049 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[21]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_8dfe7777[21]));
  AL_DFF_X al_9fcc8aac (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[22]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_8dfe7777[22]));
  AL_DFF_X al_7f01ae8e (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[23]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_8dfe7777[23]));
  AL_DFF_X al_9bad48f4 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[24]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_8dfe7777[24]));
  AL_DFF_X al_13557d45 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[25]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_8dfe7777[25]));
  AL_DFF_X al_56ab9e72 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[26]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_8dfe7777[26]));
  AL_DFF_X al_ad5a60e8 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[27]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_8dfe7777[27]));
  AL_DFF_X al_f329f819 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[1]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_e51dd35d[1]));
  AL_DFF_X al_19c82e05 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[28]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_8dfe7777[28]));
  AL_DFF_X al_f1defece (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[29]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_8dfe7777[29]));
  AL_DFF_X al_98dac115 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[30]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_8dfe7777[30]));
  AL_DFF_X al_72e9dca7 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[31]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_8dfe7777[31]));
  AL_DFF_X al_59d89761 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[2]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_e51dd35d[2]));
  AL_DFF_X al_139bb48e (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[3]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_e51dd35d[3]));
  AL_DFF_X al_2c400c01 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[4]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_e51dd35d[4]));
  AL_DFF_X al_c59aa9a (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[5]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_e51dd35d[5]));
  AL_DFF_X al_412ead6d (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[6]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_e51dd35d[6]));
  AL_DFF_X al_86c92c0 (
    .ar(1'b0),
    .as(1'b0),
    .clk(sys_clk),
    .d(bus2ip_data[7]),
    .en(1'b1),
    .sr(al_5fc28e7c),
    .ss(1'b0),
    .q(al_e51dd35d[7]));
  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    al_b61a2ea8 (
    .a(bus2ip_reset),
    .b(al_b95ba0d6),
    .o(al_d97a7544));
  AL_MAP_LUT2 #(
    .EQN("~(B*~A)"),
    .INIT(4'hb))
    al_bb07dbca (
    .a(al_d97a7544),
    .b(al_88802150),
    .o(al_5248952f));
  AL_DFF_X al_dabd73f4 (
    .ar(1'b0),
    .as(al_5248952f),
    .clk(can_clk),
    .d(1'b0),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_236e50d3));
  AL_DFF_X al_dc5adbb7 (
    .ar(1'b0),
    .as(al_5248952f),
    .clk(can_clk),
    .d(al_236e50d3),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_8e707a3));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B)*~(A)+C*B*~(A)+~(C)*B*A+C*B*A)"),
    .INIT(8'hd8))
    al_38fc251d (
    .a(al_6031507a),
    .b(al_ed3ff5cc[0]),
    .c(al_5afa8999[0]),
    .o(al_43aa735b[0]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B)*~(A)+C*B*~(A)+~(C)*B*A+C*B*A)"),
    .INIT(8'hd8))
    al_13591e90 (
    .a(al_6031507a),
    .b(al_ed3ff5cc[1]),
    .c(al_5afa8999[1]),
    .o(al_43aa735b[1]));
  AL_MAP_LUT3 #(
    .EQN("~(B*~(~C*A))"),
    .INIT(8'h3b))
    al_16023d8a (
    .a(al_edad7e0f),
    .b(al_6031507a),
    .c(al_ec26d29),
    .o(al_43aa735b[8]));
  AL_MAP_LUT4 #(
    .EQN("(~(~D*~B)*~(~C*~A))"),
    .INIT(16'hfac8))
    al_bbc285eb (
    .a(al_43aa735b[8]),
    .b(al_6031507a),
    .c(al_b046ac38[0]),
    .d(al_5afa8999[2]),
    .o(al_43aa735b[2]));
  AL_MAP_LUT3 #(
    .EQN("(A*~(~C*~B))"),
    .INIT(8'ha8))
    al_3d9f1201 (
    .a(al_43aa735b[8]),
    .b(al_6031507a),
    .c(al_5afa8999[3]),
    .o(al_43aa735b[3]));
  AL_MAP_LUT3 #(
    .EQN("(A*~(~C*~B))"),
    .INIT(8'ha8))
    al_bd9d8827 (
    .a(al_43aa735b[8]),
    .b(al_6031507a),
    .c(al_5afa8999[4]),
    .o(al_43aa735b[4]));
  AL_MAP_LUT3 #(
    .EQN("(A*~(~C*~B))"),
    .INIT(8'ha8))
    al_59a2b426 (
    .a(al_43aa735b[8]),
    .b(al_6031507a),
    .c(al_5afa8999[5]),
    .o(al_43aa735b[5]));
  AL_MAP_LUT3 #(
    .EQN("(~C*B*A)"),
    .INIT(8'h08))
    al_e8edf02d (
    .a(al_edad7e0f),
    .b(al_6031507a),
    .c(al_ec26d29),
    .o(al_43aa735b[6]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B)*~(A)+C*B*~(A)+~(C)*B*A+C*B*A)"),
    .INIT(8'hd8))
    al_45aeb60c (
    .a(al_85f14393),
    .b(al_31dabf2c[0]),
    .c(al_bbae41a6[0]),
    .o(al_5a2dd01f[0]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B)*~(A)+C*B*~(A)+~(C)*B*A+C*B*A)"),
    .INIT(8'hd8))
    al_74dc832 (
    .a(al_85f14393),
    .b(al_31dabf2c[1]),
    .c(al_bbae41a6[1]),
    .o(al_5a2dd01f[1]));
  AL_MAP_LUT4 #(
    .EQN("(~(~D*~B)*~(C)*~(A)+~(~D*~B)*C*~(A)+~(~(~D*~B))*C*A+~(~D*~B)*C*A)"),
    .INIT(16'hf5e4))
    al_e6635a32 (
    .a(al_85f14393),
    .b(al_d37e7352),
    .c(al_31dabf2c[2]),
    .d(al_3dabf54d[0]),
    .o(al_5a2dd01f[2]));
  AL_MAP_LUT5 #(
    .EQN("(~(A)*B*~(C)*~(D)*~(E)+A*B*~(C)*~(D)*~(E)+~(A)*~(B)*C*~(D)*~(E)+~(A)*B*C*~(D)*~(E)+A*B*C*~(D)*~(E)+~(A)*B*~(C)*D*~(E)+~(A)*B*C*D*~(E)+A*B*C*D*~(E)+~(A)*B*~(C)*~(D)*E+A*B*~(C)*~(D)*E+~(A)*B*C*~(D)*E+A*B*C*~(D)*E+~(A)*B*~(C)*D*E+A*B*~(C)*D*E+~(A)*B*C*D*E+A*B*C*D*E)"),
    .INIT(32'hccccc4dc))
    al_584a12a3 (
    .a(al_52130ce3),
    .b(al_d37e7352),
    .c(al_31dabf2c[3]),
    .d(al_31dabf2c[4]),
    .e(al_31dabf2c[5]),
    .o(al_5a2dd01f[3]));
  AL_MAP_LUT5 #(
    .EQN("(~(A)*B*~(C)*~(D)*~(E)+A*B*~(C)*~(D)*~(E)+A*B*C*~(D)*~(E)+A*~(B)*~(C)*D*~(E)+~(A)*B*~(C)*D*~(E)+A*B*~(C)*D*~(E)+~(A)*B*C*D*~(E)+A*B*C*D*~(E)+~(A)*B*~(C)*~(D)*E+A*B*~(C)*~(D)*E+~(A)*B*C*~(D)*E+A*B*C*~(D)*E+~(A)*B*~(C)*D*E+A*B*~(C)*D*E+~(A)*B*C*D*E+A*B*C*D*E)"),
    .INIT(32'hccccce8c))
    al_67ce6149 (
    .a(al_52130ce3),
    .b(al_d37e7352),
    .c(al_31dabf2c[3]),
    .d(al_31dabf2c[4]),
    .e(al_31dabf2c[5]),
    .o(al_5a2dd01f[4]));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    al_423d454d (
    .a(al_bfad85c7),
    .b(al_31dabf2c[2]),
    .o(al_52130ce3));
  AL_MAP_LUT4 #(
    .EQN("(~D*(~(A)*B*~(C)+A*~(B)*C))"),
    .INIT(16'h0024))
    al_d51b9c12 (
    .a(al_52130ce3),
    .b(al_31dabf2c[3]),
    .c(al_31dabf2c[4]),
    .d(al_31dabf2c[5]),
    .o(al_85f14393));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_33248498 (
    .a(al_85f14393),
    .b(al_d37e7352),
    .o(al_5a2dd01f[6]));
  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    al_3c238da6 (
    .a(al_85f14393),
    .b(al_d37e7352),
    .o(al_5a2dd01f[8]));
  AL_MAP_LUT4 #(
    .EQN("(~(~D*B)*~(~C*A))"),
    .INIT(16'hf531))
    al_254ecb70 (
    .a(al_1f6f8ce),
    .b(al_d37e7352),
    .c(al_5e4391bd),
    .d(al_4c2b5ca),
    .o(al_baa5462));
  AL_MAP_LUT2 #(
    .EQN("~(~B*A)"),
    .INIT(4'hd))
    al_58c3746b (
    .a(al_baa5462),
    .b(al_12b52ca8),
    .o(al_108de225));
  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    al_d55d73f (
    .a(al_85f14393),
    .b(al_108de225),
    .o(al_50979a5f));
  AL_MAP_LUT3 #(
    .EQN("(C@(B*A))"),
    .INIT(8'h78))
    al_f3578e95 (
    .a(al_5e9e3024),
    .b(al_b046ac38[0]),
    .c(al_b046ac38[1]),
    .o(al_71f53036[1]));
  AL_MAP_LUT2 #(
    .EQN("(B@A)"),
    .INIT(4'h6))
    al_9d0ee3c1 (
    .a(al_5e9e3024),
    .b(al_b046ac38[0]),
    .o(al_71f53036[0]));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~((C@B))*~(D)+A*(C@B)*D)"),
    .INIT(16'h2841))
    al_47f31e7d (
    .a(al_71f53036[1]),
    .b(al_71f53036[0]),
    .c(al_d3124ca5[0]),
    .d(al_d3124ca5[1]),
    .o(al_980e419d));
  AL_DFF_X al_d113ae18 (
    .ar(1'b0),
    .as(al_f325bd5e),
    .clk(can_clk),
    .d(al_980e419d),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_585793db));
  AL_MAP_LUT2 #(
    .EQN("(B@A)"),
    .INIT(4'h6))
    al_8c1a0a5b (
    .a(al_e8431db1),
    .b(al_66cc5c6a),
    .o(al_f2d0af56));
  AL_MAP_LUT2 #(
    .EQN("~(B@A)"),
    .INIT(4'h9))
    al_14aee728 (
    .a(al_f2d0af56),
    .b(al_d8f4a5f3),
    .o(al_54cedbdb));
  AL_DFF_X al_bcaf41f8 (
    .ar(1'b0),
    .as(al_f325bd5e),
    .clk(can_clk),
    .d(al_54cedbdb),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_f9b9d8be));
  AL_MAP_LUT4 #(
    .EQN("(D*C*~B*A)"),
    .INIT(16'h2000))
    al_f03b3624 (
    .a(al_1f6f8ce),
    .b(al_5e4391bd),
    .c(al_bbae41a6[0]),
    .d(al_bbae41a6[1]),
    .o(al_702339fd));
  AL_MAP_LUT3 #(
    .EQN("(C@(B*A))"),
    .INIT(8'h78))
    al_ae9bbda1 (
    .a(al_702339fd),
    .b(al_3dabf54d[0]),
    .c(al_3dabf54d[1]),
    .o(al_d744d2dc[1]));
  AL_MAP_LUT2 #(
    .EQN("(B@A)"),
    .INIT(4'h6))
    al_5b85ba34 (
    .a(al_702339fd),
    .b(al_3dabf54d[0]),
    .o(al_d744d2dc[0]));
  AL_MAP_LUT4 #(
    .EQN("(A*~((C@B))*~(D)+~(A)*(C@B)*D)"),
    .INIT(16'h1482))
    al_db50daed (
    .a(al_d744d2dc[1]),
    .b(al_d744d2dc[0]),
    .c(al_15affc73[0]),
    .d(al_15affc73[1]),
    .o(al_74df656b));
  AL_DFF_X al_9d70fbff (
    .ar(al_5fc28e7c),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_74df656b),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_5e4391bd));
  AL_MAP_LUT5 #(
    .EQN("(E@(D*C*~B*A))"),
    .INIT(32'hdfff2000))
    al_9a7f867d (
    .a(al_d37e7352),
    .b(al_4c2b5ca),
    .c(al_bbae41a6[0]),
    .d(al_bbae41a6[1]),
    .e(al_517ad9e5),
    .o(al_9963f351));
  AL_MAP_LUT2 #(
    .EQN("(B@A)"),
    .INIT(4'h6))
    al_bd18772 (
    .a(al_9963f351),
    .b(al_a1598cf0),
    .o(al_a1db3d75));
  AL_DFF_X al_e5fec5c (
    .ar(al_5fc28e7c),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_a1db3d75),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_4c2b5ca));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_b32af8ae (
    .a(al_236e50d3),
    .b(al_8e707a3),
    .o(al_46cdf04e));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    al_585c746c (
    .a(al_f3bdb3a9),
    .b(al_7536f474),
    .o(al_edad7e0f));
  AL_MAP_LUT4 #(
    .EQN("~(~B*~((~C*~A))*~(D)+~B*(~C*~A)*~(D)+~(~B)*(~C*~A)*D+~B*(~C*~A)*D)"),
    .INIT(16'hfacc))
    al_50035e7a (
    .a(al_585793db),
    .b(al_f9b9d8be),
    .c(al_57863066),
    .d(al_ec26d29),
    .o(al_5974b98c));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    al_a68cf217 (
    .a(al_edad7e0f),
    .b(al_5974b98c),
    .o(al_f272ea63));
  AL_MAP_LUT5 #(
    .EQN("(~C*~B*~A*~(~E*D))"),
    .INIT(32'h01010001))
    al_ad67761a (
    .a(al_e8431db1),
    .b(al_5e9e3024),
    .c(al_46cdf04e),
    .d(al_9fac51b7),
    .e(al_f14576),
    .o(al_e712b236));
  AL_MAP_LUT3 #(
    .EQN("(B*(C@A))"),
    .INIT(8'h48))
    al_66ea673b (
    .a(al_f272ea63),
    .b(al_e712b236),
    .c(al_ed3ff5cc[0]),
    .o(al_94b7b2f[0]));
  AL_MAP_LUT3 #(
    .EQN("(C*~B*A)"),
    .INIT(8'h20))
    al_ef944100 (
    .a(al_a12874af),
    .b(al_81ea5b1b),
    .c(al_5294bf77),
    .o(al_b54d9656));
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*A)"),
    .INIT(8'h02))
    al_2d26c9a4 (
    .a(al_b54d9656),
    .b(al_f9b9d8be),
    .c(al_ec26d29),
    .o(al_e8431db1));
  AL_MAP_LUT4 #(
    .EQN("(D*~C*~B*A)"),
    .INIT(16'h0200))
    al_56ed4665 (
    .a(al_b54d9656),
    .b(al_585793db),
    .c(al_57863066),
    .d(al_ec26d29),
    .o(al_5e9e3024));
  AL_MAP_LUT5 #(
    .EQN("(~(E*D*B)*~(C*A))"),
    .INIT(32'h135f5f5f))
    al_9ed32655 (
    .a(al_d6880fcd),
    .b(al_1be58835),
    .c(al_225e6daf),
    .d(al_2f1b008),
    .e(al_581b19be),
    .o(al_c99a9dcc));
  AL_MAP_LUT4 #(
    .EQN("(~(~C*B)*~(~D*~A))"),
    .INIT(16'hf3a2))
    al_1f7a2a76 (
    .a(al_c99a9dcc),
    .b(al_1048e296),
    .c(al_60900f7),
    .d(al_f06e24ce),
    .o(al_9a526227));
  AL_MAP_LUT4 #(
    .EQN("(~(C*B)*~(D*~A))"),
    .INIT(16'h2a3f))
    al_ffe73ac1 (
    .a(al_9a526227),
    .b(al_5dc95721),
    .c(al_2d3bbb90),
    .d(al_5294bf77),
    .o(al_f3bdb3a9));
  AL_MAP_LUT5 #(
    .EQN("(B*(E@(D*~C*A)))"),
    .INIT(32'hc4cc0800))
    al_5d966f56 (
    .a(al_edad7e0f),
    .b(al_e712b236),
    .c(al_5974b98c),
    .d(al_ed3ff5cc[0]),
    .e(al_ed3ff5cc[1]),
    .o(al_94b7b2f[1]));
  AL_MAP_LUT2 #(
    .EQN("~(B*~A)"),
    .INIT(4'hb))
    al_2055b87 (
    .a(al_f272ea63),
    .b(al_6031507a),
    .o(al_36bef6d8));
  AL_MAP_LUT2 #(
    .EQN("(B@A)"),
    .INIT(4'h6))
    al_39422cc (
    .a(al_71f53036[1]),
    .b(al_71f53036[0]),
    .o(al_573612fd[0]));
  AL_DFF_X al_41e601ff (
    .ar(al_5fc28e7c),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_66cc5c6a),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_a74000eb));
  AL_DFF_X al_9bc163d3 (
    .ar(al_5fc28e7c),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_a74000eb),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_a1598cf0));
  AL_DFF_X al_6540047e (
    .ar(al_f325bd5e),
    .as(1'b0),
    .clk(can_clk),
    .d(al_f2d0af56),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_66cc5c6a));
  AL_DFF_X al_f4781536 (
    .ar(al_f325bd5e),
    .as(1'b0),
    .clk(can_clk),
    .d(al_94b7b2f[0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_ed3ff5cc[0]));
  AL_DFF_X al_45ed7945 (
    .ar(al_f325bd5e),
    .as(1'b0),
    .clk(can_clk),
    .d(al_94b7b2f[1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_ed3ff5cc[1]));
  AL_DFF_X al_7e1a8840 (
    .ar(al_f325bd5e),
    .as(1'b0),
    .clk(can_clk),
    .d(al_71f53036[0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_b046ac38[0]));
  AL_DFF_X al_bb3534a5 (
    .ar(al_f325bd5e),
    .as(1'b0),
    .clk(can_clk),
    .d(al_71f53036[1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_b046ac38[1]));
  AL_DFF_X al_92437612 (
    .ar(al_5fc28e7c),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_a6fd6169[0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_12b5b7bf[0]));
  AL_DFF_X al_3333e8d5 (
    .ar(al_5fc28e7c),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_b046ac38[1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_12b5b7bf[1]));
  AL_DFF_X al_20e92f95 (
    .ar(al_5fc28e7c),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_12b5b7bf[0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_15affc73[0]));
  AL_DFF_X al_c7debcf0 (
    .ar(al_5fc28e7c),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_12b5b7bf[1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_15affc73[1]));
  AL_DFF_X al_c21a10c2 (
    .ar(al_f325bd5e),
    .as(1'b0),
    .clk(can_clk),
    .d(al_573612fd[0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_a6fd6169[0]));
  AL_DFF_X al_49711397 (
    .ar(al_5fc28e7c),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_c2d39cc),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_bbae41a6[0]));
  AL_DFF_X al_8d1f9c0 (
    .ar(al_5fc28e7c),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_78b89884),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_bbae41a6[1]));
  AL_MAP_LUT3 #(
    .EQN("(C@(B*~A))"),
    .INIT(8'hb4))
    al_dcc138cb (
    .a(al_baa5462),
    .b(al_bbae41a6[0]),
    .c(al_bbae41a6[1]),
    .o(al_78b89884));
  AL_MAP_LUT2 #(
    .EQN("~(B@A)"),
    .INIT(4'h9))
    al_a051836f (
    .a(al_baa5462),
    .b(al_bbae41a6[0]),
    .o(al_c2d39cc));
  AL_DFF_X al_67aa502c (
    .ar(al_5fc28e7c),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_d744d2dc[0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_3dabf54d[0]));
  AL_DFF_X al_38421584 (
    .ar(al_5fc28e7c),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_d744d2dc[1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_3dabf54d[1]));
  AL_DFF_X al_4cdb1ea (
    .ar(al_f325bd5e),
    .as(1'b0),
    .clk(can_clk),
    .d(al_d7673322[0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_2997e985[0]));
  AL_DFF_X al_952e357e (
    .ar(al_f325bd5e),
    .as(1'b0),
    .clk(can_clk),
    .d(al_3dabf54d[1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_2997e985[1]));
  AL_DFF_X al_cb2c79d9 (
    .ar(al_f325bd5e),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2997e985[0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_d3124ca5[0]));
  AL_DFF_X al_fb230c9e (
    .ar(al_f325bd5e),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2997e985[1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_d3124ca5[1]));
  AL_DFF_X al_3910797b (
    .ar(al_5fc28e7c),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_77fb6286[0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_d7673322[0]));
  EF2_LOGIC_BRAM #(
    //.FORCE_KEEP("OFF"),
    .ADDR_WIDTH_A(9),
    .ADDR_WIDTH_B(9),
    .BYTE_A(1),
    .BYTE_B(1),
    .BYTE_ENABLE(0),
    .DATA_DEPTH_A(512),
    .DATA_DEPTH_B(512),
    .DATA_WIDTH_A(32),
    .DATA_WIDTH_B(32),
    .DEBUGGABLE("NO"),
    .FILL_ALL("NONE"),
    .IMPLEMENT("AUTO"),
    .INIT_FILE("init_str:00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000 00000000000000000000000000000000"),
    .MODE("DP"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("ASYNC"),
    .WRITEMODE_A("WRITETHROUGH"),
    .WRITEMODE_B("NORMAL"))
    al_ae48349a (
    .addra({al_5a2dd01f[8],al_5a2dd01f[6],al_5a2dd01f[6],al_5a2dd01f[6],al_5a2dd01f[4:0]}),
    .addrb({al_43aa735b[8],al_43aa735b[6],al_43aa735b[6:0]}),
    .bea(1'b0),
    .beb(1'b0),
    .cea(al_50979a5f),
    .ceb(al_36bef6d8),
    .clka(sys_clk),
    .clkb(can_clk),
    .dia({al_8dfe7777[31:12],al_e51dd35d}),
    .dib(32'b00000000000000000000000000000000),
    .ocea(1'b1),
    .oceb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .wea(al_108de225),
    .web(1'b0),
    .doa(al_ebdd342c),
    .dob(al_b5e9db1c));
  AL_MAP_LUT2 #(
    .EQN("(B@A)"),
    .INIT(4'h6))
    al_67a54b8c (
    .a(al_d744d2dc[1]),
    .b(al_d744d2dc[0]),
    .o(al_77fb6286[0]));
  AL_DFF_X al_cc679e03 (
    .ar(al_f325bd5e),
    .as(1'b0),
    .clk(can_clk),
    .d(al_517ad9e5),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_9c92849d));
  AL_DFF_X al_17dca2f6 (
    .ar(al_f325bd5e),
    .as(1'b0),
    .clk(can_clk),
    .d(al_9c92849d),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_d8f4a5f3));
  AL_DFF_X al_208885d4 (
    .ar(al_5fc28e7c),
    .as(1'b0),
    .clk(sys_clk),
    .d(al_9963f351),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_517ad9e5));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_e700af65 (
    .a(al_1d79b1a1),
    .b(al_16ef234c),
    .o(al_127cf376));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_3631f091 (
    .a(al_5afa8999[4]),
    .b(1'b0),
    .c(al_97c43af3),
    .o({al_9f7ef4f7,al_dba1ada6[4]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_91d492dd (
    .a(al_5afa8999[5]),
    .b(1'b0),
    .c(al_9f7ef4f7),
    .o({open_n42,al_dba1ada6[5]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    al_b131e163 (
    .a(1'b0),
    .o({al_db3eff00,open_n45}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_55cb25b4 (
    .a(al_5afa8999[0]),
    .b(1'b1),
    .c(al_db3eff00),
    .o({al_a1cb7d76,al_dba1ada6[0]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_ce3854dc (
    .a(al_5afa8999[1]),
    .b(1'b0),
    .c(al_a1cb7d76),
    .o({al_206a77c9,al_dba1ada6[1]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_8dcd187f (
    .a(al_5afa8999[2]),
    .b(1'b0),
    .c(al_206a77c9),
    .o({al_82442374,al_dba1ada6[2]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_8f2181d2 (
    .a(al_5afa8999[3]),
    .b(1'b0),
    .c(al_82442374),
    .o({al_97c43af3,al_dba1ada6[3]}));
  AL_DFF_X al_37113603 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_dd50e54e),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_362ce8a7));
  AL_MAP_LUT4 #(
    .EQN("(~C*~(D*B*A))"),
    .INIT(16'h070f))
    al_e59b4be6 (
    .a(al_74dfbf70),
    .b(al_d8be0ed7),
    .c(al_362ce8a7),
    .d(al_e8488bce[1]),
    .o(al_47ed57fc));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~(B*~A))"),
    .INIT(16'h000b))
    al_1031fd94 (
    .a(al_fe9ed33a),
    .b(al_47ed57fc),
    .c(al_6a7c2276),
    .d(al_8e707a3),
    .o(al_dd50e54e));
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*A)"),
    .INIT(8'h02))
    al_321d34ee (
    .a(al_34fe35ec[0]),
    .b(al_34fe35ec[1]),
    .c(al_34fe35ec[2]),
    .o(al_8f35f18b));
  AL_MAP_LUT5 #(
    .EQN("(B*(~E*~((C*A))*~(D)+~E*(C*A)*~(D)+~(~E)*(C*A)*D+~E*(C*A)*D))"),
    .INIT(32'h800080cc))
    al_296d9c07 (
    .a(al_74dfbf70),
    .b(al_8f35f18b),
    .c(al_90201af6),
    .d(al_e8488bce[0]),
    .e(al_e8488bce[1]),
    .o(al_fe9ed33a));
  AL_MAP_LUT3 #(
    .EQN("(~C*B*A)"),
    .INIT(8'h08))
    al_27541f24 (
    .a(al_8c8aff1c),
    .b(al_4a49c209),
    .c(al_34fe35ec[0]),
    .o(al_d8be0ed7));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    al_16650a5a (
    .a(al_2a574b35),
    .b(al_195089e6),
    .o(al_bd2f2452));
  AL_MAP_LUT4 #(
    .EQN("(~D*(~A*~(B)*~(C)+~A*B*~(C)+~(~A)*B*C+~A*B*C))"),
    .INIT(16'h00c5))
    al_2ad1937d (
    .a(al_56e53c22),
    .b(al_8f35f18b),
    .c(al_e53d355d[0]),
    .d(al_e53d355d[1]),
    .o(al_b485e733));
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*~A)"),
    .INIT(8'h01))
    al_fcfcf9eb (
    .a(al_34fe35ec[0]),
    .b(al_34fe35ec[1]),
    .c(al_34fe35ec[2]),
    .o(al_6031507a));
  AL_MAP_LUT4 #(
    .EQN("(A*~(D*(C@B)))"),
    .INIT(16'h82aa))
    al_69a1369d (
    .a(al_162eb00c),
    .b(al_b5e9db1c[0]),
    .c(al_60c9b11d[0]),
    .d(al_7ba31aac[0]),
    .o(al_dfa8a88f));
  AL_MAP_LUT3 #(
    .EQN("(C*(B@A))"),
    .INIT(8'h60))
    al_a682ed8e (
    .a(al_b5e9db1c[8]),
    .b(al_60c9b11d[8]),
    .c(al_7ba31aac[8]),
    .o(al_3be8c8f0));
  AL_MAP_LUT4 #(
    .EQN("(~A*~(D*(C@B)))"),
    .INIT(16'h4155))
    al_fcf344bc (
    .a(al_3be8c8f0),
    .b(al_b5e9db1c[3]),
    .c(al_60c9b11d[3]),
    .d(al_7ba31aac[3]),
    .o(al_ca421152));
  AL_MAP_LUT3 #(
    .EQN("(C*(B@A))"),
    .INIT(8'h60))
    al_40722d1c (
    .a(al_b5e9db1c[16]),
    .b(al_60c9b11d[16]),
    .c(al_7ba31aac[16]),
    .o(al_943194f9));
  AL_MAP_LUT4 #(
    .EQN("(~A*~(D*(C@B)))"),
    .INIT(16'h4155))
    al_dfc335b1 (
    .a(al_943194f9),
    .b(al_b5e9db1c[4]),
    .c(al_60c9b11d[4]),
    .d(al_7ba31aac[4]),
    .o(al_47906a4a));
  AL_MAP_LUT3 #(
    .EQN("(C*(B@A))"),
    .INIT(8'h60))
    al_a895b4a (
    .a(al_b5e9db1c[18]),
    .b(al_60c9b11d[18]),
    .c(al_7ba31aac[18]),
    .o(al_db7633a));
  AL_MAP_LUT4 #(
    .EQN("(~A*~(D*(C@B)))"),
    .INIT(16'h4155))
    al_863f855e (
    .a(al_db7633a),
    .b(al_b5e9db1c[15]),
    .c(al_60c9b11d[15]),
    .d(al_7ba31aac[15]),
    .o(al_decf78ac));
  AL_MAP_LUT3 #(
    .EQN("(C*(B@A))"),
    .INIT(8'h60))
    al_c9d9143d (
    .a(al_b5e9db1c[12]),
    .b(al_60c9b11d[12]),
    .c(al_7ba31aac[12]),
    .o(al_4431b239));
  AL_MAP_LUT4 #(
    .EQN("(~A*~(D*(C@B)))"),
    .INIT(16'h4155))
    al_2558beb2 (
    .a(al_4431b239),
    .b(al_b5e9db1c[9]),
    .c(al_60c9b11d[9]),
    .d(al_7ba31aac[9]),
    .o(al_b11de8c9));
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    al_354ecd46 (
    .a(al_ca421152),
    .b(al_47906a4a),
    .c(al_decf78ac),
    .d(al_b11de8c9),
    .o(al_64f9b17a));
  AL_MAP_LUT3 #(
    .EQN("(C*(B@A))"),
    .INIT(8'h60))
    al_51698cba (
    .a(al_b5e9db1c[11]),
    .b(al_60c9b11d[11]),
    .c(al_7ba31aac[11]),
    .o(al_b25824ab));
  AL_MAP_LUT4 #(
    .EQN("(~A*~(D*(C@B)))"),
    .INIT(16'h4155))
    al_5fe85282 (
    .a(al_b25824ab),
    .b(al_b5e9db1c[1]),
    .c(al_60c9b11d[1]),
    .d(al_7ba31aac[1]),
    .o(al_b0dd13b));
  AL_MAP_LUT3 #(
    .EQN("(C*(B@A))"),
    .INIT(8'h60))
    al_a161d97b (
    .a(al_b5e9db1c[7]),
    .b(al_60c9b11d[7]),
    .c(al_7ba31aac[7]),
    .o(al_49928f20));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    al_71d81210 (
    .a(al_e53d355d[0]),
    .b(al_e53d355d[1]),
    .o(al_8c8aff1c));
  AL_MAP_LUT5 #(
    .EQN("(~B*A*~(E*(D@C)))"),
    .INIT(32'h20022222))
    al_356f7007 (
    .a(al_b0dd13b),
    .b(al_49928f20),
    .c(al_b5e9db1c[10]),
    .d(al_60c9b11d[10]),
    .e(al_7ba31aac[10]),
    .o(al_5b0c9acc));
  AL_MAP_LUT3 #(
    .EQN("(C*(B@A))"),
    .INIT(8'h60))
    al_8dbe2238 (
    .a(al_b5e9db1c[5]),
    .b(al_60c9b11d[5]),
    .c(al_7ba31aac[5]),
    .o(al_9193dcc2));
  AL_MAP_LUT4 #(
    .EQN("(~A*~(D*(C@B)))"),
    .INIT(16'h4155))
    al_7ce740b6 (
    .a(al_9193dcc2),
    .b(al_b5e9db1c[14]),
    .c(al_60c9b11d[14]),
    .d(al_7ba31aac[14]),
    .o(al_c4684efc));
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    al_fa25fb78 (
    .a(al_dfa8a88f),
    .b(al_64f9b17a),
    .c(al_5b0c9acc),
    .d(al_c4684efc),
    .o(al_7f8253e1));
  AL_MAP_LUT3 #(
    .EQN("(C*(B@A))"),
    .INIT(8'h60))
    al_cd724dc4 (
    .a(al_b5e9db1c[25]),
    .b(al_60c9b11d[25]),
    .c(al_7ba31aac[25]),
    .o(al_14743a39));
  AL_MAP_LUT4 #(
    .EQN("(~A*~(D*(C@B)))"),
    .INIT(16'h4155))
    al_9954de5 (
    .a(al_14743a39),
    .b(al_b5e9db1c[27]),
    .c(al_60c9b11d[27]),
    .d(al_7ba31aac[27]),
    .o(al_9dfcf9d0));
  AL_MAP_LUT3 #(
    .EQN("(C*(B@A))"),
    .INIT(8'h60))
    al_fa3c725d (
    .a(al_b5e9db1c[31]),
    .b(al_60c9b11d[31]),
    .c(al_7ba31aac[31]),
    .o(al_9977300c));
  AL_MAP_LUT3 #(
    .EQN("(C*(B@A))"),
    .INIT(8'h60))
    al_4e8b1cbe (
    .a(al_b5e9db1c[17]),
    .b(al_60c9b11d[17]),
    .c(al_7ba31aac[17]),
    .o(al_a4e521e2));
  AL_MAP_LUT5 #(
    .EQN("(~B*A*~(E*(D@C)))"),
    .INIT(32'h20022222))
    al_79141f50 (
    .a(al_9dfcf9d0),
    .b(al_9977300c),
    .c(al_b5e9db1c[22]),
    .d(al_60c9b11d[22]),
    .e(al_7ba31aac[22]),
    .o(al_1d49c306));
  AL_MAP_LUT4 #(
    .EQN("(A*~(D*(C@B)))"),
    .INIT(16'h82aa))
    al_b8c7a82 (
    .a(al_1d49c306),
    .b(al_b5e9db1c[26]),
    .c(al_60c9b11d[26]),
    .d(al_7ba31aac[26]),
    .o(al_2283e006));
  AL_MAP_LUT3 #(
    .EQN("(C*(B@A))"),
    .INIT(8'h60))
    al_5e9b9be4 (
    .a(al_b5e9db1c[28]),
    .b(al_60c9b11d[28]),
    .c(al_7ba31aac[28]),
    .o(al_561205f4));
  AL_MAP_LUT4 #(
    .EQN("(~A*~(D*(C@B)))"),
    .INIT(16'h4155))
    al_8e995d38 (
    .a(al_561205f4),
    .b(al_b5e9db1c[23]),
    .c(al_60c9b11d[23]),
    .d(al_7ba31aac[23]),
    .o(al_6f85dee5));
  AL_MAP_LUT3 #(
    .EQN("(C*(B@A))"),
    .INIT(8'h60))
    al_5b2094bc (
    .a(al_b5e9db1c[19]),
    .b(al_60c9b11d[19]),
    .c(al_7ba31aac[19]),
    .o(al_b6ff1b19));
  AL_MAP_LUT5 #(
    .EQN("(~B*A*~(E*(D@C)))"),
    .INIT(32'h20022222))
    al_85966361 (
    .a(al_6f85dee5),
    .b(al_b6ff1b19),
    .c(al_b5e9db1c[20]),
    .d(al_60c9b11d[20]),
    .e(al_7ba31aac[20]),
    .o(al_7f9cff34));
  AL_MAP_LUT4 #(
    .EQN("(~A*~(D*(C@B)))"),
    .INIT(16'h4155))
    al_36ea00e5 (
    .a(al_a4e521e2),
    .b(al_b5e9db1c[6]),
    .c(al_60c9b11d[6]),
    .d(al_7ba31aac[6]),
    .o(al_d7ec5ae2));
  AL_MAP_LUT3 #(
    .EQN("(C*(B@A))"),
    .INIT(8'h60))
    al_4b7832e1 (
    .a(al_b5e9db1c[24]),
    .b(al_60c9b11d[24]),
    .c(al_7ba31aac[24]),
    .o(al_2c049524));
  AL_MAP_LUT4 #(
    .EQN("(~A*~(D*(C@B)))"),
    .INIT(16'h4155))
    al_b2295707 (
    .a(al_2c049524),
    .b(al_b5e9db1c[30]),
    .c(al_60c9b11d[30]),
    .d(al_7ba31aac[30]),
    .o(al_bc7b94b1));
  AL_MAP_LUT3 #(
    .EQN("(C*(B@A))"),
    .INIT(8'h60))
    al_f2b61c58 (
    .a(al_b5e9db1c[21]),
    .b(al_60c9b11d[21]),
    .c(al_7ba31aac[21]),
    .o(al_814658c2));
  AL_MAP_LUT4 #(
    .EQN("(~A*~(D*(C@B)))"),
    .INIT(16'h4155))
    al_3b001cb4 (
    .a(al_814658c2),
    .b(al_b5e9db1c[29]),
    .c(al_60c9b11d[29]),
    .d(al_7ba31aac[29]),
    .o(al_85536730));
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    al_c37708bb (
    .a(al_2283e006),
    .b(al_7f9cff34),
    .c(al_bc7b94b1),
    .d(al_85536730),
    .o(al_3eff018b));
  AL_MAP_LUT4 #(
    .EQN("(B*~(D*C*~A))"),
    .INIT(16'h8ccc))
    al_13257b0 (
    .a(al_7f8253e1),
    .b(al_3eff018b),
    .c(al_b5e9db1c[19]),
    .d(al_7ba31aac[19]),
    .o(al_74dfbf70));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_59ab5a6f (
    .a(al_74dfbf70),
    .b(al_e8488bce[1]),
    .o(al_1d62b8ed));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    al_f2022809 (
    .a(al_34fe35ec[1]),
    .b(al_34fe35ec[2]),
    .o(al_4a49c209));
  AL_MAP_LUT3 #(
    .EQN("(~C*B*A)"),
    .INIT(8'h08))
    al_246e928 (
    .a(al_6031507a),
    .b(al_1fa59d),
    .c(al_6005c026),
    .o(al_6a7c2276));
  AL_MAP_LUT4 #(
    .EQN("(~A*~(~D*~C*B))"),
    .INIT(16'h5551))
    al_1e6e48f7 (
    .a(al_6a7c2276),
    .b(al_d520631),
    .c(al_34fe35ec[1]),
    .d(al_34fe35ec[2]),
    .o(al_7051760f));
  AL_MAP_LUT5 #(
    .EQN("~(B*~(D*(~(A)*C*~(E)+~(A)*~(C)*E+A*~(C)*E)))"),
    .INIT(32'h3f337333))
    al_c2edb17f (
    .a(al_1d62b8ed),
    .b(al_7051760f),
    .c(al_8c8aff1c),
    .d(al_4a49c209),
    .e(al_34fe35ec[0]),
    .o(al_3cadaca3[0]));
  AL_MAP_LUT3 #(
    .EQN("(C*(B@A))"),
    .INIT(8'h60))
    al_6420c281 (
    .a(al_b5e9db1c[13]),
    .b(al_60c9b11d[13]),
    .c(al_7ba31aac[13]),
    .o(al_e5ac765c));
  AL_MAP_LUT5 #(
    .EQN("(~B*A*~(E*(D@C)))"),
    .INIT(32'h20022222))
    al_6da84198 (
    .a(al_d7ec5ae2),
    .b(al_e5ac765c),
    .c(al_b5e9db1c[2]),
    .d(al_60c9b11d[2]),
    .e(al_7ba31aac[2]),
    .o(al_162eb00c));
  AL_MAP_LUT5 #(
    .EQN("(C*B*~(~E*~(A)*~(D)+~E*A*~(D)+~(~E)*A*D+~E*A*D))"),
    .INIT(32'h40c04000))
    al_981edc30 (
    .a(al_74dfbf70),
    .b(al_8f35f18b),
    .c(al_90201af6),
    .d(al_e8488bce[0]),
    .e(al_e8488bce[1]),
    .o(al_7f1edc8b));
  AL_MAP_LUT5 #(
    .EQN("~(~A*~(D*~(C*~(~E*~B))))"),
    .INIT(32'hafaabfaa))
    al_4f59314 (
    .a(al_7f1edc8b),
    .b(al_1d62b8ed),
    .c(al_8c8aff1c),
    .d(al_4a49c209),
    .e(al_34fe35ec[0]),
    .o(al_3cadaca3[1]));
  AL_MAP_LUT4 #(
    .EQN("(A*B*C*~(D)+~(A)*~(B)*~(C)*D)"),
    .INIT(16'h0180))
    al_7a299d27 (
    .a(al_8c8aff1c),
    .b(al_34fe35ec[0]),
    .c(al_34fe35ec[1]),
    .d(al_34fe35ec[2]),
    .o(al_3cadaca3[2]));
  AL_DFF_X al_6a6868e8 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_fa65ad40),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_5afa8999[0]));
  AL_MAP_LUT3 #(
    .EQN("(C*~B*~A)"),
    .INIT(8'h10))
    al_d766d532 (
    .a(al_6031507a),
    .b(al_8e707a3),
    .c(al_dba1ada6[5]),
    .o(al_6ef00a15));
  AL_MAP_LUT3 #(
    .EQN("~(~C*~B*~A)"),
    .INIT(8'hfe))
    al_119d290a (
    .a(al_6031507a),
    .b(al_8e707a3),
    .c(al_dba1ada6[0]),
    .o(al_fa65ad40));
  AL_MAP_LUT3 #(
    .EQN("~(~C*~B*~A)"),
    .INIT(8'hfe))
    al_86a0fd70 (
    .a(al_6031507a),
    .b(al_8e707a3),
    .c(al_dba1ada6[1]),
    .o(al_de7b02b0));
  AL_MAP_LUT3 #(
    .EQN("(C*~B*~A)"),
    .INIT(8'h10))
    al_b3def38d (
    .a(al_6031507a),
    .b(al_8e707a3),
    .c(al_dba1ada6[2]),
    .o(al_9861c501));
  AL_MAP_LUT3 #(
    .EQN("~(~C*~B*~A)"),
    .INIT(8'hfe))
    al_80b23309 (
    .a(al_6031507a),
    .b(al_8e707a3),
    .c(al_dba1ada6[3]),
    .o(al_b52200cf));
  AL_MAP_LUT3 #(
    .EQN("(C*~B*~A)"),
    .INIT(8'h10))
    al_183dc065 (
    .a(al_6031507a),
    .b(al_8e707a3),
    .c(al_dba1ada6[4]),
    .o(al_829c4571));
  AL_DFF_X al_b875a2c4 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_de7b02b0),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_5afa8999[1]));
  AL_DFF_X al_56da631e (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_9861c501),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_5afa8999[2]));
  AL_DFF_X al_bbd51a5f (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b52200cf),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_5afa8999[3]));
  AL_DFF_X al_4d67ebfa (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_829c4571),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_5afa8999[4]));
  AL_DFF_X al_fd7d4b33 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_6ef00a15),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_5afa8999[5]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_4a8e2365 (
    .a(al_e53d355d[0]),
    .b(al_e53d355d[1]),
    .o(al_90201af6));
  AL_MAP_LUT4 #(
    .EQN("(B*~A*~(~D*~C))"),
    .INIT(16'h4440))
    al_6774ceef (
    .a(al_90201af6),
    .b(al_34fe35ec[0]),
    .c(al_e8488bce[0]),
    .d(al_e8488bce[1]),
    .o(al_d520631));
  AL_MAP_LUT4 #(
    .EQN("(~B*~(~D*~C*~A))"),
    .INIT(16'h3332))
    al_4eba6a11 (
    .a(al_d520631),
    .b(al_8e707a3),
    .c(al_34fe35ec[1]),
    .d(al_34fe35ec[2]),
    .o(al_f4bf6e8f));
  AL_MAP_LUT4 #(
    .EQN("(A*(B*C*~(D)+~(B)*~(C)*D+B*~(C)*D))"),
    .INIT(16'h0a80))
    al_cdef57c (
    .a(al_f4bf6e8f),
    .b(al_56e53c22),
    .c(al_e53d355d[0]),
    .d(al_e53d355d[1]),
    .o(al_994d4aa2));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    al_6287ba41 (
    .a(al_f4bf6e8f),
    .b(al_e53d355d[0]),
    .o(al_1546dfc0));
  AL_DFF_X al_7f67f91b (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_1546dfc0),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_e53d355d[0]));
  AL_DFF_X al_af667ef2 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_994d4aa2),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_e53d355d[1]));
  AL_MAP_LUT3 #(
    .EQN("(~(A)*~(B)*~(C)+A*~(B)*~(C)+A*~(B)*C+~(A)*B*C+A*B*C)"),
    .INIT(8'he3))
    al_fdcace3e (
    .a(al_34fe35ec[0]),
    .b(al_34fe35ec[1]),
    .c(al_34fe35ec[2]),
    .o(al_56e53c22));
  AL_DFF_X al_f0e53b2a (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_9bc6bb2c),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[8]));
  AL_DFF_X al_68311f97 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_eb14a827),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[9]));
  AL_DFF_X al_43c7a9a8 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2e3fd34b),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[10]));
  AL_DFF_X al_692d0424 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_9f400bf4),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[11]));
  AL_DFF_X al_42388279 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b484e2cd),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[12]));
  AL_DFF_X al_94cc28f7 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_e767c021),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[13]));
  AL_DFF_X al_4b8141fc (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_923717dc),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[14]));
  AL_DFF_X al_e028c602 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_ede2068e),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[15]));
  AL_DFF_X al_723ba9f4 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_1349755c),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[16]));
  AL_DFF_X al_57974114 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_4c7af78d),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[17]));
  AL_DFF_X al_e8195311 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_3e01cb65),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[0]));
  AL_DFF_X al_12db1d1c (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_1aa9ca61),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[18]));
  AL_DFF_X al_b6d1c100 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_62833b2c),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[19]));
  AL_DFF_X al_3a01fc54 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_bbd4dfd9),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[20]));
  AL_DFF_X al_df07f7a2 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_293fa077),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[21]));
  AL_DFF_X al_665f0b33 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_e358fae7),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[22]));
  AL_DFF_X al_1b758de3 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_3af54e2),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[23]));
  AL_DFF_X al_9008c2f (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_4c87e22f),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[24]));
  AL_DFF_X al_1af39472 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5db1588),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[25]));
  AL_DFF_X al_3358a22a (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_551ac7a7),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[26]));
  AL_DFF_X al_f70a6955 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_63913c39),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[27]));
  AL_DFF_X al_de931a97 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_4d3a5e56),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[1]));
  AL_DFF_X al_a2ac3526 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_1062483c),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[28]));
  AL_DFF_X al_dcd7bde9 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_44a2aa35),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[29]));
  AL_DFF_X al_d704fc69 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_c82a6572),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[30]));
  AL_DFF_X al_1c24abbe (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_4d72b9b2),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[31]));
  AL_DFF_X al_7d9455ea (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_785db76a),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[2]));
  AL_DFF_X al_998a09e4 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_44fb79fa),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[3]));
  AL_DFF_X al_1720426b (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2cc535d),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[4]));
  AL_DFF_X al_1a19edfc (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_e1013d80),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[5]));
  AL_DFF_X al_5ddbb061 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_fa5f734c),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[6]));
  AL_DFF_X al_b04d7d13 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_e25505e6),
    .en(al_bd2f2452),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_60c9b11d[7]));
  AL_DFF_X al_fdf96228 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[8]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[8]));
  AL_DFF_X al_588c9458 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[9]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[9]));
  AL_DFF_X al_c499874c (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[10]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[10]));
  AL_DFF_X al_c5a9c027 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[11]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[11]));
  AL_DFF_X al_dc175aed (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[12]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[12]));
  AL_DFF_X al_ab0d10a3 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[13]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[13]));
  AL_DFF_X al_acc730ee (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[14]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[14]));
  AL_DFF_X al_85461550 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[15]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[15]));
  AL_DFF_X al_9f7eea59 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[16]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[16]));
  AL_DFF_X al_6b3eb49e (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[17]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[17]));
  AL_DFF_X al_ddc9eaf5 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[0]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[0]));
  AL_DFF_X al_9c4dc2a0 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[18]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[18]));
  AL_DFF_X al_799d88d (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[19]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[19]));
  AL_DFF_X al_10c23963 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[20]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[20]));
  AL_DFF_X al_dacb043e (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[21]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[21]));
  AL_DFF_X al_a51a17e5 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[22]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[22]));
  AL_DFF_X al_da76f989 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[23]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[23]));
  AL_DFF_X al_1cc97efe (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[24]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[24]));
  AL_DFF_X al_e11849c6 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[25]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[25]));
  AL_DFF_X al_4c2d0773 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[26]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[26]));
  AL_DFF_X al_2f2859d1 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[27]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[27]));
  AL_DFF_X al_3cb352ff (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[1]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[1]));
  AL_DFF_X al_2e66f115 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[28]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[28]));
  AL_DFF_X al_d15976f5 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[29]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[29]));
  AL_DFF_X al_7ad7db3d (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[30]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[30]));
  AL_DFF_X al_5142643f (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[31]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[31]));
  AL_DFF_X al_6e713b8c (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[2]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[2]));
  AL_DFF_X al_9c44a1b0 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[3]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[3]));
  AL_DFF_X al_98416a67 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[4]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[4]));
  AL_DFF_X al_e4ca5b69 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[5]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[5]));
  AL_DFF_X al_456979d1 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[6]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[6]));
  AL_DFF_X al_eef35d69 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b5e9db1c[7]),
    .en(al_b485e733),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_7ba31aac[7]));
  AL_DFF_X al_7375017d (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_3cadaca3[0]),
    .en(1'b1),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_34fe35ec[0]));
  AL_DFF_X al_d9488a6 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_3cadaca3[1]),
    .en(1'b1),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_34fe35ec[1]));
  AL_DFF_X al_478e5f39 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_3cadaca3[2]),
    .en(1'b1),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_34fe35ec[2]));
  AL_DFF_X al_16fa17a4 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_343baf96),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_ceec2d0d));
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    al_3dd9728b (
    .a(al_8d70ee51),
    .b(al_d9ce094e),
    .c(al_35747f18),
    .o(al_c04b3600));
  AL_MAP_LUT3 #(
    .EQN("(~B*(C@A))"),
    .INIT(8'h12))
    al_f022eaf7 (
    .a(al_c04b3600),
    .b(al_8e707a3),
    .c(al_ceec2d0d),
    .o(al_343baf96));
  AL_DFF_X al_6effbbda (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_e28047ee),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_80977367));
  AL_MAP_LUT4 #(
    .EQN("(~C*~A*~(~D*~B))"),
    .INIT(16'h0504))
    al_4f233b81 (
    .a(al_82d3b6a8),
    .b(al_c04b3600),
    .c(al_8e707a3),
    .d(al_80977367),
    .o(al_e28047ee));
  AL_MAP_LUT5 #(
    .EQN("(~(~E*B)*~(D*C*A))"),
    .INIT(32'h5fff1333))
    al_aff6d00a (
    .a(al_9103b859),
    .b(al_ab55e675),
    .c(al_17bcd7d3),
    .d(al_e7b69aab),
    .e(al_c0ae55ee),
    .o(al_3122c718));
  AL_MAP_LUT3 #(
    .EQN("(C*~(~B*A))"),
    .INIT(8'hd0))
    al_76bbfba3 (
    .a(al_3122c718),
    .b(al_3c7c8021),
    .c(al_35747f18),
    .o(al_82d3b6a8));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_b3806813 (
    .a(al_8bb9d017[3]),
    .b(al_f0bd1bf4[3]),
    .c(al_34c37ea1),
    .o({al_a5f70003,al_adc199ce[3]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_58ca54ec (
    .a(al_8bb9d017[1]),
    .b(al_f0bd1bf4[4]),
    .c(al_a5f70003),
    .o({al_69f06796,al_adc199ce[4]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_1e4e2cbd (
    .a(al_8bb9d017[1]),
    .b(al_f0bd1bf4[5]),
    .c(al_69f06796),
    .o({al_2eb4f116,al_adc199ce[5]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_69eb355e (
    .a(al_8bb9d017[1]),
    .b(al_f0bd1bf4[6]),
    .c(al_2eb4f116),
    .o({al_ba022b81,al_adc199ce[6]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_a022ed36 (
    .a(al_8bb9d017[1]),
    .b(al_f0bd1bf4[7]),
    .c(al_ba022b81),
    .o({open_n46,al_adc199ce[7]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    al_73b8cff0 (
    .a(1'b0),
    .o({al_1acd2215,open_n49}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_b9eb5f30 (
    .a(al_8bb9d017[0]),
    .b(al_f0bd1bf4[0]),
    .c(al_1acd2215),
    .o({al_3dbc4def,al_adc199ce[0]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_889adfcc (
    .a(al_8bb9d017[1]),
    .b(al_f0bd1bf4[1]),
    .c(al_3dbc4def),
    .o({al_a9ba3de9,al_adc199ce[1]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_4ea12669 (
    .a(al_8bb9d017[1]),
    .b(al_f0bd1bf4[2]),
    .c(al_a9ba3de9),
    .o({al_34c37ea1,al_adc199ce[2]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_97da6c8f (
    .a(al_b3047f66[0]),
    .b(al_a3aa82f0[2]),
    .c(al_34fe244e),
    .o({al_fbbebd64,al_6642c13d[2]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_2d2ba356 (
    .a(al_b3047f66[3]),
    .b(al_a3aa82f0[3]),
    .c(al_fbbebd64),
    .o({al_76253c29,al_6642c13d[3]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_81f6edc6 (
    .a(al_b3047f66[0]),
    .b(al_a3aa82f0[4]),
    .c(al_76253c29),
    .o({al_6f04e102,al_6642c13d[4]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_3bf02411 (
    .a(al_b3047f66[0]),
    .b(al_a3aa82f0[5]),
    .c(al_6f04e102),
    .o({al_dc0c2249,al_6642c13d[5]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_4873b6bf (
    .a(al_b3047f66[0]),
    .b(al_a3aa82f0[6]),
    .c(al_dc0c2249),
    .o({al_ce3db342,al_6642c13d[6]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_a6e7eb6c (
    .a(al_b3047f66[0]),
    .b(al_a3aa82f0[7]),
    .c(al_ce3db342),
    .o({open_n50,al_6642c13d[7]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    al_26cde371 (
    .a(1'b0),
    .o({al_de3304a7,open_n53}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_3a6b848b (
    .a(al_b3047f66[0]),
    .b(al_a3aa82f0[0]),
    .c(al_de3304a7),
    .o({al_346f767,al_6642c13d[0]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_21d5bf66 (
    .a(al_b3047f66[0]),
    .b(al_a3aa82f0[1]),
    .c(al_346f767),
    .o({al_34fe244e,al_6642c13d[1]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_f1be900d (
    .a(al_53412fa1[4]),
    .b(1'b0),
    .c(al_194e2ba5),
    .o({al_6d4ad6d5,al_37bd3c9f[4]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_c2f1c41b (
    .a(al_53412fa1[5]),
    .b(1'b0),
    .c(al_6d4ad6d5),
    .o({open_n54,al_37bd3c9f[5]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    al_c6cefe2b (
    .a(1'b0),
    .o({al_8bcfa204,open_n57}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_f5eb6046 (
    .a(al_53412fa1[0]),
    .b(1'b1),
    .c(al_8bcfa204),
    .o({al_436766ee,al_37bd3c9f[0]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_3a428d1d (
    .a(al_53412fa1[1]),
    .b(1'b0),
    .c(al_436766ee),
    .o({al_ff17bdc5,al_37bd3c9f[1]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_9c936e4 (
    .a(al_53412fa1[2]),
    .b(1'b0),
    .c(al_ff17bdc5),
    .o({al_88560a1f,al_37bd3c9f[2]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_24df3804 (
    .a(al_53412fa1[3]),
    .b(1'b0),
    .c(al_88560a1f),
    .o({al_194e2ba5,al_37bd3c9f[3]}));
  AL_DFF_X al_3f26e4e2 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_c6c079aa),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_1fa59d));
  AL_MAP_LUT4 #(
    .EQN("(~D*C*B*~A)"),
    .INIT(16'h0040))
    al_b10807d0 (
    .a(al_1cee29b0),
    .b(al_9103b859),
    .c(al_1be58835),
    .d(al_725282a9),
    .o(al_6ea02789));
  AL_MAP_LUT4 #(
    .EQN("(~B*(C*~(A)*~(D)+C*A*~(D)+~(C)*A*D+C*A*D))"),
    .INIT(16'h2230))
    al_68fd2d41 (
    .a(al_6ea02789),
    .b(al_8e707a3),
    .c(al_1fa59d),
    .d(al_fb2f48d1),
    .o(al_c6c079aa));
  AL_DFF_X al_27b93abb (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_1fa59d),
    .en(1'b1),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_6005c026));
  AL_DFF_X al_32ab71 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_8e2e2769),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_6b13d5d1));
  AL_MAP_LUT3 #(
    .EQN("(~B*(C@A))"),
    .INIT(8'h12))
    al_b2d75e0a (
    .a(al_85197052),
    .b(al_8e707a3),
    .c(al_6b13d5d1),
    .o(al_8e2e2769));
  AL_DFF_X al_257d02f (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_c0cc8b6d),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_895b20ce));
  AL_MAP_LUT4 #(
    .EQN("(~B*(C@(D*~A)))"),
    .INIT(16'h2130))
    al_1210846e (
    .a(al_60ee0b22),
    .b(al_8e707a3),
    .c(al_895b20ce),
    .d(al_35747f18),
    .o(al_c0cc8b6d));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_88dc5b48 (
    .a(al_538866b5),
    .b(al_1deeb789),
    .o(al_636b4d43));
  AL_MAP_LUT5 #(
    .EQN("(E*~A*~(~B*~(D*C)))"),
    .INIT(32'h54440000))
    al_dfac6774 (
    .a(al_a29c03e3),
    .b(al_d6880fcd),
    .c(al_538866b5),
    .d(al_e3e0848b[1]),
    .e(al_35747f18),
    .o(al_1b442e41));
  AL_MAP_LUT4 #(
    .EQN("(~A*~(D*C*B))"),
    .INIT(16'h1555))
    al_7a669e38 (
    .a(al_b7c06e8),
    .b(al_a1f8756e),
    .c(al_9f0f8226),
    .d(al_e3e0848b[0]),
    .o(al_389e865b));
  AL_MAP_LUT5 #(
    .EQN("~(~D*~(E*~(A*~(C*B))))"),
    .INIT(32'hffd5ff00))
    al_f95f80b8 (
    .a(al_389e865b),
    .b(al_9103b859),
    .c(al_ef7fbaed),
    .d(al_8e707a3),
    .e(al_35747f18),
    .o(al_b620e6c4));
  AL_MAP_LUT2 #(
    .EQN("(B@A)"),
    .INIT(4'h6))
    al_ed476a8f (
    .a(al_7013407a[0]),
    .b(al_c8d7daaf[9]),
    .o(al_7013407a[10]));
  AL_MAP_LUT2 #(
    .EQN("(B@A)"),
    .INIT(4'h6))
    al_251df301 (
    .a(al_c8d7daaf[14]),
    .b(al_c0ae55ee),
    .o(al_7013407a[0]));
  AL_MAP_LUT2 #(
    .EQN("(B@A)"),
    .INIT(4'h6))
    al_4e13e114 (
    .a(al_7013407a[0]),
    .b(al_c8d7daaf[13]),
    .o(al_7013407a[14]));
  AL_MAP_LUT2 #(
    .EQN("(B@A)"),
    .INIT(4'h6))
    al_5e07e3c2 (
    .a(al_7013407a[0]),
    .b(al_c8d7daaf[2]),
    .o(al_7013407a[3]));
  AL_MAP_LUT2 #(
    .EQN("(B@A)"),
    .INIT(4'h6))
    al_14850e60 (
    .a(al_7013407a[0]),
    .b(al_c8d7daaf[3]),
    .o(al_7013407a[4]));
  AL_MAP_LUT2 #(
    .EQN("(B@A)"),
    .INIT(4'h6))
    al_2c7e8454 (
    .a(al_7013407a[0]),
    .b(al_c8d7daaf[6]),
    .o(al_7013407a[7]));
  AL_MAP_LUT2 #(
    .EQN("(B@A)"),
    .INIT(4'h6))
    al_4abdc035 (
    .a(al_7013407a[0]),
    .b(al_c8d7daaf[7]),
    .o(al_7013407a[8]));
  AL_DFF_X al_b72a04a4 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b94c3b24),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_3402cb00));
  AL_MAP_LUT4 #(
    .EQN("(D*C*~(B*A))"),
    .INIT(16'h7000))
    al_cc17947a (
    .a(al_75c5858c),
    .b(al_4d45df67),
    .c(al_e28ad7c6),
    .d(al_35747f18),
    .o(al_d78bc33c));
  AL_MAP_LUT3 #(
    .EQN("(~B*(C@A))"),
    .INIT(8'h12))
    al_564e5a53 (
    .a(al_d78bc33c),
    .b(al_8e707a3),
    .c(al_3402cb00),
    .o(al_b94c3b24));
  AL_MAP_LUT3 #(
    .EQN("(A*~(C*B))"),
    .INIT(8'h2a))
    al_43f832e2 (
    .a(al_edad7e0f),
    .b(al_57863066),
    .c(al_ec26d29),
    .o(al_e399f581));
  AL_DFF_X al_42befd2e (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_e399f581),
    .en(1'b1),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_e822fb38));
  AL_DFF_X al_4c5895f7 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_349f762c),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_57863066));
  AL_MAP_LUT3 #(
    .EQN("(~A*~(~C*B))"),
    .INIT(8'h51))
    al_8c8a733d (
    .a(al_8e707a3),
    .b(al_a12874af),
    .c(al_81ea5b1b),
    .o(al_149a8e69));
  AL_MAP_LUT4 #(
    .EQN("(B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .INIT(16'hc480))
    al_dc27ffec (
    .a(al_49200b4),
    .b(al_149a8e69),
    .c(al_585793db),
    .d(al_57863066),
    .o(al_349f762c));
  AL_DFF_X al_cdea3c34 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_1afe62ae),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_ec26d29));
  AL_MAP_LUT4 #(
    .EQN("(B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .INIT(16'hc480))
    al_fa1fa936 (
    .a(al_49200b4),
    .b(al_149a8e69),
    .c(al_f9b9d8be),
    .d(al_ec26d29),
    .o(al_1afe62ae));
  AL_MAP_LUT4 #(
    .EQN("(D*~C*~(B*A))"),
    .INIT(16'h0700))
    al_7d00d80a (
    .a(al_26e619d5),
    .b(al_1212d4c4),
    .c(al_20c1ffd3),
    .d(al_35747f18),
    .o(al_785abacb));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_4b21b933 (
    .a(al_1212d4c4),
    .b(al_6642c13d[0]),
    .o(al_4b750e7c[0]));
  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    al_4633b261 (
    .a(al_8215db20),
    .b(al_adc199ce[2]),
    .o(al_35c86450[2]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_3022591f (
    .a(al_1212d4c4),
    .b(al_35c86450[2]),
    .o(al_4b750e7c[10]));
  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    al_a8c3c6f (
    .a(al_8215db20),
    .b(al_adc199ce[3]),
    .o(al_35c86450[3]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_ad05076e (
    .a(al_1212d4c4),
    .b(al_35c86450[3]),
    .o(al_4b750e7c[11]));
  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    al_a35bf755 (
    .a(al_8215db20),
    .b(al_adc199ce[4]),
    .o(al_35c86450[4]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_251a2f31 (
    .a(al_1212d4c4),
    .b(al_35c86450[4]),
    .o(al_4b750e7c[12]));
  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    al_51cad465 (
    .a(al_8215db20),
    .b(al_adc199ce[5]),
    .o(al_35c86450[5]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_a45d3349 (
    .a(al_1212d4c4),
    .b(al_35c86450[5]),
    .o(al_4b750e7c[13]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_da5bc3d5 (
    .a(al_d074f4ee),
    .b(al_f0bd1bf4[7]),
    .o(al_8215db20));
  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    al_fdcce197 (
    .a(al_8215db20),
    .b(al_adc199ce[6]),
    .o(al_35c86450[6]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_822c23fc (
    .a(al_1212d4c4),
    .b(al_35c86450[6]),
    .o(al_4b750e7c[14]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_18fd282c (
    .a(al_8215db20),
    .b(al_adc199ce[7]),
    .o(al_35c86450[7]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_368f6ca6 (
    .a(al_1212d4c4),
    .b(al_35c86450[7]),
    .o(al_4b750e7c[15]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_ef76033e (
    .a(al_1212d4c4),
    .b(al_6642c13d[1]),
    .o(al_4b750e7c[1]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_36186fee (
    .a(al_1212d4c4),
    .b(al_6642c13d[2]),
    .o(al_4b750e7c[2]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_f63e51f (
    .a(al_1212d4c4),
    .b(al_6642c13d[3]),
    .o(al_4b750e7c[3]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_cd3038a5 (
    .a(al_1212d4c4),
    .b(al_6642c13d[4]),
    .o(al_4b750e7c[4]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_ab0b52f2 (
    .a(al_1212d4c4),
    .b(al_6642c13d[5]),
    .o(al_4b750e7c[5]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_98583fe2 (
    .a(al_1212d4c4),
    .b(al_6642c13d[6]),
    .o(al_4b750e7c[6]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_b8b080a6 (
    .a(al_1212d4c4),
    .b(al_6642c13d[7]),
    .o(al_4b750e7c[7]));
  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    al_e00e3181 (
    .a(al_8215db20),
    .b(al_adc199ce[0]),
    .o(al_35c86450[0]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_fe33d3d8 (
    .a(al_1212d4c4),
    .b(al_35c86450[0]),
    .o(al_4b750e7c[8]));
  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    al_3233c8e6 (
    .a(al_8215db20),
    .b(al_adc199ce[1]),
    .o(al_35c86450[1]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_d04b0b36 (
    .a(al_1212d4c4),
    .b(al_35c86450[1]),
    .o(al_4b750e7c[9]));
  AL_MAP_LUT1 #(
    .EQN("(~A)"),
    .INIT(2'h1))
    al_e6ab21b4 (
    .a(al_45ae85f6),
    .o(al_925341ce));
  AL_DFF_X al_38865cb3 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_925341ce),
    .en(al_785abacb),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_45ae85f6));
  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    al_30b65dce (
    .a(al_1edd903d),
    .b(al_78038a8),
    .o(al_2c1739c0));
  AL_DFF_X al_5cf7753 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_880df2a),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_20c1ffd3));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_1ff40344 (
    .a(al_13f91b9f),
    .b(al_2d3bd04d),
    .o(al_8d70ee51));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*A)"),
    .INIT(16'h0002))
    al_3afa8f45 (
    .a(al_8d70ee51),
    .b(al_ffbda4d7),
    .c(al_54aad2a7),
    .d(al_c0ae55ee),
    .o(al_d074f4ee));
  AL_MAP_LUT5 #(
    .EQN("(~D*~B*A*~(E*~C))"),
    .INIT(32'h00200022))
    al_55d7664f (
    .a(al_e1b59a0e),
    .b(al_ff19272e),
    .c(al_a29c03e3),
    .d(al_c766f9d9),
    .e(al_8e83538d),
    .o(al_825b2490));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_1d830f06 (
    .a(al_26e40e69),
    .b(al_b7c06e8),
    .o(al_1981dbfd));
  AL_MAP_LUT5 #(
    .EQN("(A*B*~(C)*~(D)*~(E)+~(A)*~(B)*~(C)*D*~(E)+A*~(B)*~(C)*D*~(E)+~(A)*B*~(C)*D*~(E)+A*B*~(C)*D*~(E)+~(A)*~(B)*C*D*~(E)+A*~(B)*C*D*~(E)+A*~(B)*~(C)*~(D)*E+A*B*~(C)*~(D)*E+A*~(B)*C*~(D)*E+~(A)*~(B)*~(C)*D*E+A*~(B)*~(C)*D*E+~(A)*B*~(C)*D*E+A*B*~(C)*D*E+~(A)*~(B)*C*D*E+A*~(B)*C*D*E)"),
    .INIT(32'h3f2a3f08))
    al_49efbedb (
    .a(al_825b2490),
    .b(al_1981dbfd),
    .c(al_9f3f301),
    .d(al_5294bf77),
    .e(al_93f02b06),
    .o(al_f19f764f));
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    al_52ad936b (
    .a(al_355480f2),
    .b(al_3e75194b),
    .c(al_9f0f8226),
    .o(al_6b5280e9));
  AL_MAP_LUT4 #(
    .EQN("(~A*~(~D*C*B))"),
    .INIT(16'h5515))
    al_6b8d1831 (
    .a(al_6b5280e9),
    .b(al_9e26bc14),
    .c(al_ab55e675),
    .d(al_c0ae55ee),
    .o(al_911b7d6c));
  AL_MAP_LUT3 #(
    .EQN("(A*~(C*B))"),
    .INIT(8'h2a))
    al_274bf92a (
    .a(al_a1183b05),
    .b(al_da3979c2),
    .c(al_e3e0848b[2]),
    .o(al_f7521b25));
  AL_MAP_LUT4 #(
    .EQN("(~D*~(~C*~B*A))"),
    .INIT(16'h00fd))
    al_1451b129 (
    .a(al_911b7d6c),
    .b(al_f7521b25),
    .c(al_ce93b827),
    .d(al_5294bf77),
    .o(al_b8398389));
  AL_MAP_LUT4 #(
    .EQN("(D*~(C*B*A))"),
    .INIT(16'h7f00))
    al_40d711e6 (
    .a(al_8a38481d),
    .b(al_41c5dae8),
    .c(al_273ee948),
    .d(al_5294bf77),
    .o(al_ccae1a5d));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    al_a55422ab (
    .a(al_41ec2d08),
    .b(al_36e8dc43),
    .o(al_1212d4c4));
  AL_MAP_LUT5 #(
    .EQN("(~E*~D*~C*~B*A)"),
    .INIT(32'h00000002))
    al_372f54a4 (
    .a(al_f19f764f),
    .b(al_ccae1a5d),
    .c(al_b8398389),
    .d(al_d074f4ee),
    .e(al_4b1de10),
    .o(al_26e619d5));
  AL_MAP_LUT3 #(
    .EQN("(~A*~(C@B))"),
    .INIT(8'h41))
    al_40e04152 (
    .a(al_8e707a3),
    .b(al_bbd67df),
    .c(al_b9089222),
    .o(al_e01cc05a));
  AL_MAP_LUT5 #(
    .EQN("(C*~(~D*~(E*~(B*A))))"),
    .INIT(32'hf070f000))
    al_97022b23 (
    .a(al_26e619d5),
    .b(al_1212d4c4),
    .c(al_e01cc05a),
    .d(al_20c1ffd3),
    .e(al_35747f18),
    .o(al_880df2a));
  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    al_d98f0ece (
    .a(al_f0bd1bf4[7]),
    .b(al_a3aa82f0[7]),
    .o(al_da3979c2));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_eb28e7c9 (
    .a(al_3d37ea1b),
    .b(al_17bcd7d3),
    .o(al_b7c06e8));
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    al_2fba7ab7 (
    .a(al_355480f2),
    .b(al_ef7fbaed),
    .c(al_d9ce094e),
    .o(al_4b1de10));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    al_14cd7691 (
    .a(al_5294bf77),
    .b(al_c2b02029),
    .o(al_ffbda4d7));
  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    al_fad41f78 (
    .a(al_8697c16a),
    .b(al_13d587dc),
    .o(al_8bb9d017[0]));
  AL_MAP_LUT4 #(
    .EQN("(A*~(~D*~C*B))"),
    .INIT(16'haaa2))
    al_2ca17f7d (
    .a(al_d074f4ee),
    .b(al_6b3ee95f),
    .c(al_f0bd1bf4[0]),
    .d(al_f0bd1bf4[1]),
    .o(al_13d587dc));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    al_db7e9b31 (
    .a(al_f19f764f),
    .b(al_f0bd1bf4[7]),
    .o(al_8697c16a));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_6ab96cec (
    .a(al_8697c16a),
    .b(al_13d587dc),
    .o(al_8bb9d017[1]));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*~A)"),
    .INIT(16'h0001))
    al_82787f4d (
    .a(al_f0bd1bf4[4]),
    .b(al_f0bd1bf4[5]),
    .c(al_f0bd1bf4[6]),
    .d(al_f0bd1bf4[7]),
    .o(al_a0a16e6c));
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*A)"),
    .INIT(8'h02))
    al_e2a72fef (
    .a(al_a0a16e6c),
    .b(al_f0bd1bf4[2]),
    .c(al_f0bd1bf4[3]),
    .o(al_6b3ee95f));
  AL_MAP_LUT4 #(
    .EQN("(A*B*~(C)*~(D)+A*~(B)*C*~(D)+A*B*C*~(D)+~(A)*B*~(C)*D+A*B*~(C)*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hcca8))
    al_5455ec77 (
    .a(al_f19f764f),
    .b(al_13d587dc),
    .c(al_b8398389),
    .d(al_f0bd1bf4[7]),
    .o(al_8bb9d017[3]));
  AL_MAP_LUT3 #(
    .EQN("~(~B*~(C*~A))"),
    .INIT(8'hdc))
    al_ddc218a7 (
    .a(al_1212d4c4),
    .b(al_8e707a3),
    .c(al_35747f18),
    .o(al_711c48a4));
  AL_MAP_LUT4 #(
    .EQN("(A*~(~D*~C*B))"),
    .INIT(16'haaa2))
    al_5a16922d (
    .a(al_4b1de10),
    .b(al_a2c41eb3),
    .c(al_a3aa82f0[0]),
    .d(al_a3aa82f0[1]),
    .o(al_d86d467c));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_45170866 (
    .a(al_ccae1a5d),
    .b(al_d86d467c),
    .o(al_b3047f66[0]));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*~A)"),
    .INIT(16'h0001))
    al_25af3774 (
    .a(al_a3aa82f0[4]),
    .b(al_a3aa82f0[5]),
    .c(al_a3aa82f0[6]),
    .d(al_a3aa82f0[7]),
    .o(al_8fe9fc8a));
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*A)"),
    .INIT(8'h02))
    al_85bd7f37 (
    .a(al_8fe9fc8a),
    .b(al_a3aa82f0[2]),
    .c(al_a3aa82f0[3]),
    .o(al_a2c41eb3));
  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    al_a846c410 (
    .a(al_ccae1a5d),
    .b(al_d86d467c),
    .o(al_b3047f66[3]));
  AL_DFF_X al_ca14da26 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_6f4ce15a),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_b4c124e));
  AL_MAP_LUT4 #(
    .EQN("(~C*~(D*~(B*A)))"),
    .INIT(16'h080f))
    al_93e649e7 (
    .a(al_9f0f8226),
    .b(al_e7b69aab),
    .c(al_8e707a3),
    .d(al_35747f18),
    .o(al_fa37935d));
  AL_MAP_LUT5 #(
    .EQN("(B*~(~D*~(E*C*A)))"),
    .INIT(32'hcc80cc00))
    al_53eedeee (
    .a(al_355480f2),
    .b(al_fa37935d),
    .c(al_d9396682),
    .d(al_b4c124e),
    .e(al_35747f18),
    .o(al_6f4ce15a));
  AL_DFF_X al_6b7d1cd8 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2b58bd0c),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_1486f657));
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    al_a90874bb (
    .a(al_2d3bd04d),
    .b(al_12c01001),
    .c(al_7dfbd658),
    .o(al_fba10168));
  AL_MAP_LUT5 #(
    .EQN("(~D*(A*B*C*~(E)+~(A)*~(B)*~(C)*E+~(A)*B*~(C)*E+A*B*~(C)*E+~(A)*~(B)*C*E+~(A)*B*C*E+A*B*C*E))"),
    .INIT(32'h00dd0080))
    al_bb37945c (
    .a(al_513770c2),
    .b(al_8bdfd47c),
    .c(al_fba10168),
    .d(al_8e707a3),
    .e(al_1486f657),
    .o(al_2b58bd0c));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_94689e7a (
    .a(al_53412fa1[0]),
    .b(al_53412fa1[1]),
    .o(al_7dfbd658));
  AL_MAP_LUT4 #(
    .EQN("(D*~C*~B*A)"),
    .INIT(16'h0200))
    al_b2d360a0 (
    .a(al_2a5461d4),
    .b(al_eb0a610b),
    .c(al_28c82be3),
    .d(al_84673a50),
    .o(al_513770c2));
  AL_MAP_LUT5 #(
    .EQN("(~A*~(E*D*C*~B))"),
    .INIT(32'h45555555))
    al_60f11ad6 (
    .a(al_a86ba7ed),
    .b(al_1cee29b0),
    .c(al_3ff42b2e),
    .d(al_7e07b9ca),
    .e(al_706eedd7),
    .o(al_8bdfd47c));
  AL_DFF_X al_8e0ea431 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_5f24bdfc),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_2d3bbb90));
  AL_MAP_LUT5 #(
    .EQN("(~C*~(E*B)*~(~D*~A))"),
    .INIT(32'h03020f0a))
    al_15dd82f7 (
    .a(al_49200b4),
    .b(al_4b1de10),
    .c(al_8e707a3),
    .d(al_2d3bbb90),
    .e(al_35747f18),
    .o(al_5f24bdfc));
  AL_DFF_X al_4961a92f (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_d998c98b),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_c8104d86));
  AL_MAP_LUT4 #(
    .EQN("(~B*(C@(D*~A)))"),
    .INIT(16'h2130))
    al_960e282c (
    .a(al_8a38481d),
    .b(al_8e707a3),
    .c(al_c8104d86),
    .d(al_35747f18),
    .o(al_d998c98b));
  AL_DFF_X al_353e1388 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_27c924c5),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_725282a9));
  AL_MAP_LUT4 #(
    .EQN("(~D*C*B*A)"),
    .INIT(16'h0080))
    al_6ddc2f50 (
    .a(al_f7a0bba8),
    .b(al_d187bcb1),
    .c(al_53412fa1[2]),
    .d(al_53412fa1[5]),
    .o(al_4db54d18));
  AL_MAP_LUT4 #(
    .EQN("(D*C*~(~B*~A))"),
    .INIT(16'he000))
    al_be539c00 (
    .a(al_1d3ed386),
    .b(al_4db54d18),
    .c(al_12c01001),
    .d(al_35747f18),
    .o(al_5ad86bea));
  AL_MAP_LUT4 #(
    .EQN("(~C*(D*~(B)*~(A)+D*B*~(A)+~(D)*B*A+D*B*A))"),
    .INIT(16'h0d08))
    al_139a121a (
    .a(al_5ad86bea),
    .b(al_f2b6b48e),
    .c(al_8e707a3),
    .d(al_725282a9),
    .o(al_27c924c5));
  AL_DFF_X al_d77ae2a2 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_51fe679f),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_1ce97d69));
  AL_MAP_LUT4 #(
    .EQN("(~A*(B@(~D*C)))"),
    .INIT(16'h4414))
    al_b1f5ff23 (
    .a(al_8e707a3),
    .b(al_1ce97d69),
    .c(al_28cc37bd),
    .d(al_fc501cf6),
    .o(al_51fe679f));
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*A)"),
    .INIT(8'h02))
    al_f12fea23 (
    .a(al_f03c332d),
    .b(al_ffbda4d7),
    .c(al_725282a9),
    .o(al_6394d5fa));
  AL_DFF_X al_39d10a96 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_6394d5fa),
    .en(al_35747f18),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2a574b35));
  AL_DFF_X al_125fe3c7 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2a574b35),
    .en(1'b1),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_195089e6));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_53038bee (
    .a(al_636b4d43),
    .b(al_c2b02029),
    .o(al_5e4d7c));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    al_5f92dd46 (
    .a(1'b0),
    .o({al_4cadcb7f,open_n60}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_aeaab802 (
    .a(1'b0),
    .b(al_a3aa82f0[4]),
    .c(al_d1d8ef96),
    .o({al_7ba6b416,open_n61}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_b1948cbd (
    .a(1'b1),
    .b(al_a3aa82f0[5]),
    .c(al_7ba6b416),
    .o({al_3beded1c,open_n62}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_851acf93 (
    .a(1'b1),
    .b(al_a3aa82f0[6]),
    .c(al_3beded1c),
    .o({al_b4030544,open_n63}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_dfe4fadb (
    .a(1'b0),
    .b(al_a3aa82f0[7]),
    .c(al_b4030544),
    .o({al_e5256fa6,open_n64}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_974d0df4 (
    .a(1'b0),
    .b(1'b1),
    .c(al_e5256fa6),
    .o({open_n65,al_1edd903d}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_c5f13f20 (
    .a(1'b0),
    .b(al_a3aa82f0[0]),
    .c(al_4cadcb7f),
    .o({al_475e6701,open_n66}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_d5fd9f05 (
    .a(1'b0),
    .b(al_a3aa82f0[1]),
    .c(al_475e6701),
    .o({al_82636fac,open_n67}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_fdd51a43 (
    .a(1'b0),
    .b(al_a3aa82f0[2]),
    .c(al_82636fac),
    .o({al_fcc50591,open_n68}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_14f423a6 (
    .a(1'b0),
    .b(al_a3aa82f0[3]),
    .c(al_fcc50591),
    .o({al_d1d8ef96,open_n69}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    al_54b16c03 (
    .a(1'b0),
    .o({al_9be38c32,open_n72}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_f1a8b7c8 (
    .a(1'b0),
    .b(al_f0bd1bf4[4]),
    .c(al_5e270234),
    .o({al_67cdb4ef,open_n73}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_e994cfd3 (
    .a(1'b1),
    .b(al_f0bd1bf4[5]),
    .c(al_67cdb4ef),
    .o({al_44368a14,open_n74}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_b9c95a6b (
    .a(1'b1),
    .b(al_f0bd1bf4[6]),
    .c(al_44368a14),
    .o({al_48c46026,open_n75}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_a0c9d54f (
    .a(1'b0),
    .b(al_f0bd1bf4[7]),
    .c(al_48c46026),
    .o({al_7eea8d34,open_n76}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_42e2c8e7 (
    .a(1'b0),
    .b(1'b1),
    .c(al_7eea8d34),
    .o({open_n77,al_78038a8}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_3992f2bb (
    .a(1'b0),
    .b(al_f0bd1bf4[0]),
    .c(al_9be38c32),
    .o({al_bcb1fc0c,open_n78}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_7fc0b9e1 (
    .a(1'b0),
    .b(al_f0bd1bf4[1]),
    .c(al_bcb1fc0c),
    .o({al_78acd801,open_n79}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_6a806d64 (
    .a(1'b0),
    .b(al_f0bd1bf4[2]),
    .c(al_78acd801),
    .o({al_2013bd3d,open_n80}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_a6ca8fff (
    .a(1'b0),
    .b(al_f0bd1bf4[3]),
    .c(al_2013bd3d),
    .o({al_5e270234,open_n81}));
  AL_DFF_X al_e121c1fd (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_bb2ed901),
    .en(al_35747f18),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_ef19480e));
  AL_DFF_X al_fdd7a41d (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_ef19480e),
    .en(1'b1),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_51d40c44));
  AL_MAP_LUT4 #(
    .EQN("(~C*~(~A*~(~D*B)))"),
    .INIT(16'h0a0e))
    al_925c1ecf (
    .a(al_a86ba7ed),
    .b(al_3e084b8a),
    .c(al_ffbda4d7),
    .d(al_362ce8a7),
    .o(al_bb2ed901));
  AL_DFF_X al_df7f0f5e (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_349d4bb2),
    .en(al_35747f18),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_9fac51b7));
  AL_DFF_X al_79141d35 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_9fac51b7),
    .en(1'b1),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_f14576));
  AL_MAP_LUT4 #(
    .EQN("(A*~(~B*~(D*C)))"),
    .INIT(16'ha888))
    al_6851edf4 (
    .a(al_9103b859),
    .b(al_b7c06e8),
    .c(al_9f0f8226),
    .d(al_e3e0848b[0]),
    .o(al_a86ba7ed));
  AL_MAP_LUT5 #(
    .EQN("~(~B*~A*~(E*D*C))"),
    .INIT(32'hfeeeeeee))
    al_85deef5 (
    .a(al_daee23cd),
    .b(al_a86ba7ed),
    .c(al_9103b859),
    .d(al_1deeb789),
    .e(al_9f0f8226),
    .o(al_349d4bb2));
  AL_MAP_LUT5 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)*~(E)+A*~(B)*~(C)*~(D)*~(E)+~(A)*B*~(C)*~(D)*~(E)+A*B*~(C)*~(D)*~(E)+~(A)*~(B)*C*~(D)*~(E)+A*~(B)*C*~(D)*~(E)+~(A)*B*C*~(D)*~(E)+A*B*C*~(D)*~(E)+~(A)*~(B)*~(C)*D*~(E)+~(A)*B*~(C)*D*~(E)+~(A)*~(B)*C*D*~(E)+~(A)*B*C*D*~(E)+~(A)*~(B)*~(C)*~(D)*E+A*~(B)*~(C)*~(D)*E+~(A)*~(B)*C*~(D)*E+A*~(B)*C*~(D)*E+~(A)*~(B)*~(C)*D*E+A*~(B)*~(C)*D*E+~(A)*B*~(C)*D*E+A*B*~(C)*D*E)"),
    .INIT(32'h0f3355ff))
    al_98a6c273 (
    .a(al_2339cbd5[0]),
    .b(al_2339cbd5[8]),
    .c(al_2339cbd5[16]),
    .d(al_deee15b7[0]),
    .e(al_deee15b7[1]),
    .o(al_d117344));
  AL_MAP_LUT4 #(
    .EQN("(~(D*C)*~(B*~A))"),
    .INIT(16'h0bbb))
    al_5bf7b193 (
    .a(al_d117344),
    .b(al_44c89cd0),
    .c(al_2339cbd5[5]),
    .d(al_71bf180[0]),
    .o(al_e39a8fcf));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+~(A)*~(B)*~(C)*D+~(A)*B*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hfd05))
    al_7988fe67 (
    .a(al_e39a8fcf),
    .b(al_c192662b),
    .c(al_65ea8590),
    .d(al_2339cbd5[24]),
    .o(al_4c87e22f));
  AL_MAP_LUT5 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)*~(E)+A*~(B)*~(C)*~(D)*~(E)+~(A)*B*~(C)*~(D)*~(E)+A*B*~(C)*~(D)*~(E)+~(A)*~(B)*C*~(D)*~(E)+A*~(B)*C*~(D)*~(E)+~(A)*B*C*~(D)*~(E)+A*B*C*~(D)*~(E)+~(A)*~(B)*~(C)*D*~(E)+~(A)*B*~(C)*D*~(E)+~(A)*~(B)*C*D*~(E)+~(A)*B*C*D*~(E)+~(A)*~(B)*~(C)*~(D)*E+A*~(B)*~(C)*~(D)*E+~(A)*~(B)*C*~(D)*E+A*~(B)*C*~(D)*E+~(A)*~(B)*~(C)*D*E+A*~(B)*~(C)*D*E+~(A)*B*~(C)*D*E+A*B*~(C)*D*E)"),
    .INIT(32'h0f3355ff))
    al_2280cb6a (
    .a(al_2339cbd5[1]),
    .b(al_2339cbd5[9]),
    .c(al_2339cbd5[17]),
    .d(al_deee15b7[0]),
    .e(al_deee15b7[1]),
    .o(al_6688dddf));
  AL_MAP_LUT4 #(
    .EQN("(~(D*C)*~(B*~A))"),
    .INIT(16'h0bbb))
    al_537e1f93 (
    .a(al_6688dddf),
    .b(al_44c89cd0),
    .c(al_2339cbd5[6]),
    .d(al_71bf180[0]),
    .o(al_9470b3e5));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+~(A)*~(B)*~(C)*D+~(A)*B*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hfd05))
    al_8c347445 (
    .a(al_9470b3e5),
    .b(al_c192662b),
    .c(al_65ea8590),
    .d(al_2339cbd5[25]),
    .o(al_b5db1588));
  AL_MAP_LUT5 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)*~(E)+A*~(B)*~(C)*~(D)*~(E)+~(A)*B*~(C)*~(D)*~(E)+A*B*~(C)*~(D)*~(E)+~(A)*~(B)*C*~(D)*~(E)+A*~(B)*C*~(D)*~(E)+~(A)*B*C*~(D)*~(E)+A*B*C*~(D)*~(E)+~(A)*~(B)*~(C)*D*~(E)+~(A)*B*~(C)*D*~(E)+~(A)*~(B)*C*D*~(E)+~(A)*B*C*D*~(E)+~(A)*~(B)*~(C)*~(D)*E+A*~(B)*~(C)*~(D)*E+~(A)*~(B)*C*~(D)*E+A*~(B)*C*~(D)*E+~(A)*~(B)*~(C)*D*E+A*~(B)*~(C)*D*E+~(A)*B*~(C)*D*E+A*B*~(C)*D*E)"),
    .INIT(32'h0f3355ff))
    al_ca869bac (
    .a(al_2339cbd5[2]),
    .b(al_2339cbd5[10]),
    .c(al_2339cbd5[18]),
    .d(al_deee15b7[0]),
    .e(al_deee15b7[1]),
    .o(al_53ae79ed));
  AL_MAP_LUT4 #(
    .EQN("(~(D*C)*~(B*~A))"),
    .INIT(16'h0bbb))
    al_28717ff7 (
    .a(al_53ae79ed),
    .b(al_44c89cd0),
    .c(al_2339cbd5[7]),
    .d(al_71bf180[0]),
    .o(al_912a8456));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+~(A)*~(B)*~(C)*D+~(A)*B*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hfd05))
    al_9d9cffa4 (
    .a(al_912a8456),
    .b(al_c192662b),
    .c(al_65ea8590),
    .d(al_2339cbd5[26]),
    .o(al_551ac7a7));
  AL_MAP_LUT5 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)*~(E)+A*~(B)*~(C)*~(D)*~(E)+~(A)*B*~(C)*~(D)*~(E)+A*B*~(C)*~(D)*~(E)+~(A)*~(B)*C*~(D)*~(E)+A*~(B)*C*~(D)*~(E)+~(A)*B*C*~(D)*~(E)+A*B*C*~(D)*~(E)+~(A)*~(B)*~(C)*D*~(E)+~(A)*B*~(C)*D*~(E)+~(A)*~(B)*C*D*~(E)+~(A)*B*C*D*~(E)+~(A)*~(B)*~(C)*~(D)*E+A*~(B)*~(C)*~(D)*E+~(A)*~(B)*C*~(D)*E+A*~(B)*C*~(D)*E+~(A)*~(B)*~(C)*D*E+A*~(B)*~(C)*D*E+~(A)*B*~(C)*D*E+A*B*~(C)*D*E)"),
    .INIT(32'h0f3355ff))
    al_2df8b602 (
    .a(al_2339cbd5[3]),
    .b(al_2339cbd5[11]),
    .c(al_2339cbd5[19]),
    .d(al_deee15b7[0]),
    .e(al_deee15b7[1]),
    .o(al_b2ae32ac));
  AL_MAP_LUT4 #(
    .EQN("(~(D*C)*~(B*~A))"),
    .INIT(16'h0bbb))
    al_7e097f0f (
    .a(al_b2ae32ac),
    .b(al_44c89cd0),
    .c(al_2339cbd5[8]),
    .d(al_71bf180[0]),
    .o(al_1250b68a));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+~(A)*~(B)*~(C)*D+~(A)*B*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hfd05))
    al_46e460d6 (
    .a(al_1250b68a),
    .b(al_c192662b),
    .c(al_65ea8590),
    .d(al_2339cbd5[27]),
    .o(al_63913c39));
  AL_MAP_LUT4 #(
    .EQN("(A*(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D))"),
    .INIT(16'ha088))
    al_954b083b (
    .a(al_91850552),
    .b(al_2339cbd5[5]),
    .c(al_2339cbd5[13]),
    .d(al_deee15b7[0]),
    .o(al_7c99bfa9));
  AL_MAP_LUT3 #(
    .EQN("(C*B*~A)"),
    .INIT(8'h40))
    al_f1c40409 (
    .a(al_65ea8590),
    .b(al_2339cbd5[2]),
    .c(al_71bf180[0]),
    .o(al_70db22d4));
  AL_MAP_LUT4 #(
    .EQN("~(~C*~A*~(D*~B))"),
    .INIT(16'hfbfa))
    al_41e1be00 (
    .a(al_7c99bfa9),
    .b(al_1302c23a),
    .c(al_70db22d4),
    .d(al_2339cbd5[21]),
    .o(al_293fa077));
  AL_MAP_LUT4 #(
    .EQN("(A*(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D))"),
    .INIT(16'ha088))
    al_c4eeecde (
    .a(al_91850552),
    .b(al_2339cbd5[4]),
    .c(al_2339cbd5[12]),
    .d(al_deee15b7[0]),
    .o(al_9868fa16));
  AL_MAP_LUT3 #(
    .EQN("(C*B*~A)"),
    .INIT(8'h40))
    al_83d6af0b (
    .a(al_65ea8590),
    .b(al_2339cbd5[1]),
    .c(al_71bf180[0]),
    .o(al_5ce09915));
  AL_MAP_LUT4 #(
    .EQN("~(~C*~A*~(D*~B))"),
    .INIT(16'hfbfa))
    al_263fe343 (
    .a(al_9868fa16),
    .b(al_1302c23a),
    .c(al_5ce09915),
    .d(al_2339cbd5[20]),
    .o(al_bbd4dfd9));
  AL_MAP_LUT4 #(
    .EQN("(A*(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D))"),
    .INIT(16'ha088))
    al_6765c4ca (
    .a(al_91850552),
    .b(al_2339cbd5[3]),
    .c(al_2339cbd5[11]),
    .d(al_deee15b7[0]),
    .o(al_fc33ee46));
  AL_MAP_LUT3 #(
    .EQN("(C*B*~A)"),
    .INIT(8'h40))
    al_227c4879 (
    .a(al_65ea8590),
    .b(al_2339cbd5[0]),
    .c(al_71bf180[0]),
    .o(al_c2c15264));
  AL_MAP_LUT4 #(
    .EQN("~(~C*~A*~(D*~B))"),
    .INIT(16'hfbfa))
    al_da9c8527 (
    .a(al_fc33ee46),
    .b(al_1302c23a),
    .c(al_c2c15264),
    .d(al_2339cbd5[19]),
    .o(al_62833b2c));
  AL_MAP_LUT5 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)*~(E)+A*~(B)*~(C)*~(D)*~(E)+~(A)*B*~(C)*~(D)*~(E)+A*B*~(C)*~(D)*~(E)+~(A)*~(B)*C*~(D)*~(E)+A*~(B)*C*~(D)*~(E)+~(A)*B*C*~(D)*~(E)+A*B*C*~(D)*~(E)+~(A)*~(B)*~(C)*D*~(E)+~(A)*B*~(C)*D*~(E)+~(A)*~(B)*C*D*~(E)+~(A)*B*C*D*~(E)+~(A)*~(B)*~(C)*~(D)*E+A*~(B)*~(C)*~(D)*E+~(A)*~(B)*C*~(D)*E+A*~(B)*C*~(D)*E+~(A)*~(B)*~(C)*D*E+A*~(B)*~(C)*D*E+~(A)*B*~(C)*D*E+A*B*~(C)*D*E)"),
    .INIT(32'h0f3355ff))
    al_97a0b9df (
    .a(al_2339cbd5[4]),
    .b(al_2339cbd5[12]),
    .c(al_2339cbd5[20]),
    .d(al_deee15b7[0]),
    .e(al_deee15b7[1]),
    .o(al_3487ccc5));
  AL_MAP_LUT4 #(
    .EQN("(~(C*B)*~(D*A))"),
    .INIT(16'h153f))
    al_82a0f54b (
    .a(al_2339cbd5[0]),
    .b(al_2339cbd5[9]),
    .c(al_71bf180[0]),
    .d(al_71bf180[1]),
    .o(al_168f3490));
  AL_MAP_LUT3 #(
    .EQN("(B*~(C*~A))"),
    .INIT(8'h8c))
    al_b6b8da2b (
    .a(al_3487ccc5),
    .b(al_168f3490),
    .c(al_44c89cd0),
    .o(al_9a001b07));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+~(A)*~(B)*~(C)*D+~(A)*B*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hfd05))
    al_856e063a (
    .a(al_9a001b07),
    .b(al_c192662b),
    .c(al_65ea8590),
    .d(al_2339cbd5[28]),
    .o(al_1062483c));
  AL_MAP_LUT5 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)*~(E)+A*~(B)*~(C)*~(D)*~(E)+~(A)*B*~(C)*~(D)*~(E)+A*B*~(C)*~(D)*~(E)+~(A)*~(B)*C*~(D)*~(E)+A*~(B)*C*~(D)*~(E)+~(A)*B*C*~(D)*~(E)+A*B*C*~(D)*~(E)+~(A)*~(B)*~(C)*D*~(E)+~(A)*B*~(C)*D*~(E)+~(A)*~(B)*C*D*~(E)+~(A)*B*C*D*~(E)+~(A)*~(B)*~(C)*~(D)*E+A*~(B)*~(C)*~(D)*E+~(A)*~(B)*C*~(D)*E+A*~(B)*C*~(D)*E+~(A)*~(B)*~(C)*D*E+A*~(B)*~(C)*D*E+~(A)*B*~(C)*D*E+A*B*~(C)*D*E)"),
    .INIT(32'h0f3355ff))
    al_5d006a03 (
    .a(al_2339cbd5[5]),
    .b(al_2339cbd5[13]),
    .c(al_2339cbd5[21]),
    .d(al_deee15b7[0]),
    .e(al_deee15b7[1]),
    .o(al_1131d66));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_b82d929b (
    .a(al_1131d66),
    .b(al_44c89cd0),
    .o(al_95f563cb));
  AL_MAP_LUT4 #(
    .EQN("(~(C*B)*~(D*A))"),
    .INIT(16'h153f))
    al_dd4228e8 (
    .a(al_2339cbd5[1]),
    .b(al_2339cbd5[10]),
    .c(al_71bf180[0]),
    .d(al_71bf180[1]),
    .o(al_224360dd));
  AL_MAP_LUT5 #(
    .EQN("(~(B)*~((C*~A))*~(D)*~(E)+B*~((C*~A))*~(D)*~(E)+~(B)*~((C*~A))*~(D)*E+B*~((C*~A))*~(D)*E+B*(C*~A)*~(D)*E+~(B)*~((C*~A))*D*E+B*~((C*~A))*D*E+~(B)*(C*~A)*D*E+B*(C*~A)*D*E)"),
    .INIT(32'hffef00af))
    al_eb0897e6 (
    .a(al_95f563cb),
    .b(al_c192662b),
    .c(al_224360dd),
    .d(al_65ea8590),
    .e(al_2339cbd5[29]),
    .o(al_44a2aa35));
  AL_MAP_LUT5 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)*~(E)+A*~(B)*~(C)*~(D)*~(E)+~(A)*B*~(C)*~(D)*~(E)+A*B*~(C)*~(D)*~(E)+~(A)*~(B)*C*~(D)*~(E)+A*~(B)*C*~(D)*~(E)+~(A)*B*C*~(D)*~(E)+A*B*C*~(D)*~(E)+~(A)*~(B)*~(C)*D*~(E)+~(A)*B*~(C)*D*~(E)+~(A)*~(B)*C*D*~(E)+~(A)*B*C*D*~(E)+~(A)*~(B)*~(C)*~(D)*E+A*~(B)*~(C)*~(D)*E+~(A)*~(B)*C*~(D)*E+A*~(B)*C*~(D)*E+~(A)*~(B)*~(C)*D*E+A*~(B)*~(C)*D*E+~(A)*B*~(C)*D*E+A*B*~(C)*D*E)"),
    .INIT(32'h0f3355ff))
    al_8c6e9981 (
    .a(al_2339cbd5[6]),
    .b(al_2339cbd5[14]),
    .c(al_2339cbd5[22]),
    .d(al_deee15b7[0]),
    .e(al_deee15b7[1]),
    .o(al_d168f320));
  AL_MAP_LUT4 #(
    .EQN("(~(C*B)*~(D*A))"),
    .INIT(16'h153f))
    al_9eb20a6 (
    .a(al_2339cbd5[2]),
    .b(al_2339cbd5[11]),
    .c(al_71bf180[0]),
    .d(al_71bf180[1]),
    .o(al_d3ede9ad));
  AL_MAP_LUT3 #(
    .EQN("(B*~(C*~A))"),
    .INIT(8'h8c))
    al_3c21cb8a (
    .a(al_d168f320),
    .b(al_d3ede9ad),
    .c(al_44c89cd0),
    .o(al_87f537cc));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+~(A)*~(B)*~(C)*D+~(A)*B*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hfd05))
    al_2a50e60c (
    .a(al_87f537cc),
    .b(al_c192662b),
    .c(al_65ea8590),
    .d(al_2339cbd5[30]),
    .o(al_c82a6572));
  AL_MAP_LUT5 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)*~(E)+A*~(B)*~(C)*~(D)*~(E)+~(A)*B*~(C)*~(D)*~(E)+A*B*~(C)*~(D)*~(E)+~(A)*~(B)*C*~(D)*~(E)+A*~(B)*C*~(D)*~(E)+~(A)*B*C*~(D)*~(E)+A*B*C*~(D)*~(E)+~(A)*~(B)*~(C)*D*~(E)+~(A)*B*~(C)*D*~(E)+~(A)*~(B)*C*D*~(E)+~(A)*B*C*D*~(E)+~(A)*~(B)*~(C)*~(D)*E+A*~(B)*~(C)*~(D)*E+~(A)*~(B)*C*~(D)*E+A*~(B)*C*~(D)*E+~(A)*~(B)*~(C)*D*E+A*~(B)*~(C)*D*E+~(A)*B*~(C)*D*E+A*B*~(C)*D*E)"),
    .INIT(32'h0f3355ff))
    al_7c84b220 (
    .a(al_2339cbd5[7]),
    .b(al_2339cbd5[15]),
    .c(al_2339cbd5[23]),
    .d(al_deee15b7[0]),
    .e(al_deee15b7[1]),
    .o(al_31ec8503));
  AL_MAP_LUT4 #(
    .EQN("(~(C*B)*~(D*A))"),
    .INIT(16'h153f))
    al_98421b15 (
    .a(al_2339cbd5[3]),
    .b(al_2339cbd5[12]),
    .c(al_71bf180[0]),
    .d(al_71bf180[1]),
    .o(al_698130a9));
  AL_MAP_LUT3 #(
    .EQN("(B*~(C*~A))"),
    .INIT(8'h8c))
    al_d3cf7bf8 (
    .a(al_31ec8503),
    .b(al_698130a9),
    .c(al_44c89cd0),
    .o(al_2705670e));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+~(A)*~(B)*~(C)*D+~(A)*B*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hfd05))
    al_fbcfd0fd (
    .a(al_2705670e),
    .b(al_c192662b),
    .c(al_65ea8590),
    .d(al_2339cbd5[31]),
    .o(al_4d72b9b2));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_4df29049 (
    .a(al_1302c23a),
    .b(al_2339cbd5[0]),
    .o(al_3e01cb65));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_da766e11 (
    .a(al_1302c23a),
    .b(al_2339cbd5[1]),
    .o(al_4d3a5e56));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_fbf15ed6 (
    .a(al_1302c23a),
    .b(al_2339cbd5[2]),
    .o(al_785db76a));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_52f50a4d (
    .a(al_1302c23a),
    .b(al_2339cbd5[3]),
    .o(al_44fb79fa));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_6e7d257b (
    .a(al_1302c23a),
    .b(al_2339cbd5[4]),
    .o(al_2cc535d));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_ce71b654 (
    .a(al_1302c23a),
    .b(al_2339cbd5[5]),
    .o(al_e1013d80));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_3f2b5e1c (
    .a(al_1302c23a),
    .b(al_2339cbd5[6]),
    .o(al_fa5f734c));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_21504 (
    .a(al_1302c23a),
    .b(al_2339cbd5[7]),
    .o(al_e25505e6));
  AL_MAP_LUT3 #(
    .EQN("(~(A)*~(B)*~(C)+A*B*~(C)+A*~(B)*C+~(A)*B*C+A*B*C)"),
    .INIT(8'he9))
    al_4217ca73 (
    .a(al_71bf180[0]),
    .b(al_71bf180[1]),
    .c(al_71bf180[2]),
    .o(al_65ea8590));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    al_1e4188be (
    .a(al_71bf180[2]),
    .b(al_deee15b7[3]),
    .o(al_44c89cd0));
  AL_MAP_LUT3 #(
    .EQN("(C*B*~A)"),
    .INIT(8'h40))
    al_e4e72e79 (
    .a(al_65ea8590),
    .b(al_44c89cd0),
    .c(al_deee15b7[1]),
    .o(al_91850552));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_936446ed (
    .a(al_91850552),
    .b(al_deee15b7[0]),
    .o(al_be3cff1e));
  AL_MAP_LUT4 #(
    .EQN("(B*~(~D*~(C*A)))"),
    .INIT(16'hcc80))
    al_9943f114 (
    .a(al_6f21d658),
    .b(al_71bf180[2]),
    .c(al_deee15b7[2]),
    .d(al_deee15b7[3]),
    .o(al_c192662b));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    al_5ec21aa (
    .a(al_c192662b),
    .b(al_65ea8590),
    .o(al_1302c23a));
  AL_MAP_LUT4 #(
    .EQN("~(~(D*~B)*~(C*A))"),
    .INIT(16'hb3a0))
    al_c9491d8c (
    .a(al_be3cff1e),
    .b(al_1302c23a),
    .c(al_2339cbd5[0]),
    .d(al_2339cbd5[8]),
    .o(al_9bc6bb2c));
  AL_MAP_LUT4 #(
    .EQN("(A*(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D))"),
    .INIT(16'ha088))
    al_81bd6551 (
    .a(al_91850552),
    .b(al_2339cbd5[2]),
    .c(al_2339cbd5[10]),
    .d(al_deee15b7[0]),
    .o(al_81db1caf));
  AL_MAP_LUT3 #(
    .EQN("~(~A*~(C*~B))"),
    .INIT(8'hba))
    al_22a9a225 (
    .a(al_81db1caf),
    .b(al_1302c23a),
    .c(al_2339cbd5[18]),
    .o(al_1aa9ca61));
  AL_MAP_LUT4 #(
    .EQN("(A*(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D))"),
    .INIT(16'ha088))
    al_3143040 (
    .a(al_91850552),
    .b(al_2339cbd5[1]),
    .c(al_2339cbd5[9]),
    .d(al_deee15b7[0]),
    .o(al_bd4f9101));
  AL_MAP_LUT3 #(
    .EQN("~(~A*~(C*~B))"),
    .INIT(8'hba))
    al_d29cbb43 (
    .a(al_bd4f9101),
    .b(al_1302c23a),
    .c(al_2339cbd5[17]),
    .o(al_4c7af78d));
  AL_MAP_LUT4 #(
    .EQN("(A*(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D))"),
    .INIT(16'ha088))
    al_f5e1fd46 (
    .a(al_91850552),
    .b(al_2339cbd5[0]),
    .c(al_2339cbd5[8]),
    .d(al_deee15b7[0]),
    .o(al_4dcaff96));
  AL_MAP_LUT3 #(
    .EQN("~(~A*~(C*~B))"),
    .INIT(8'hba))
    al_39715182 (
    .a(al_4dcaff96),
    .b(al_1302c23a),
    .c(al_2339cbd5[16]),
    .o(al_1349755c));
  AL_MAP_LUT4 #(
    .EQN("~(~(D*~B)*~(C*A))"),
    .INIT(16'hb3a0))
    al_23564044 (
    .a(al_be3cff1e),
    .b(al_1302c23a),
    .c(al_2339cbd5[7]),
    .d(al_2339cbd5[15]),
    .o(al_ede2068e));
  AL_MAP_LUT4 #(
    .EQN("~(~(D*~B)*~(C*A))"),
    .INIT(16'hb3a0))
    al_ef50947b (
    .a(al_be3cff1e),
    .b(al_1302c23a),
    .c(al_2339cbd5[6]),
    .d(al_2339cbd5[14]),
    .o(al_923717dc));
  AL_MAP_LUT4 #(
    .EQN("~(~(D*~B)*~(C*A))"),
    .INIT(16'hb3a0))
    al_7641721f (
    .a(al_be3cff1e),
    .b(al_1302c23a),
    .c(al_2339cbd5[5]),
    .d(al_2339cbd5[13]),
    .o(al_e767c021));
  AL_MAP_LUT4 #(
    .EQN("~(~(D*~B)*~(C*A))"),
    .INIT(16'hb3a0))
    al_78550f24 (
    .a(al_be3cff1e),
    .b(al_1302c23a),
    .c(al_2339cbd5[4]),
    .d(al_2339cbd5[12]),
    .o(al_b484e2cd));
  AL_MAP_LUT4 #(
    .EQN("~(~(D*~B)*~(C*A))"),
    .INIT(16'hb3a0))
    al_c5781cd5 (
    .a(al_be3cff1e),
    .b(al_1302c23a),
    .c(al_2339cbd5[3]),
    .d(al_2339cbd5[11]),
    .o(al_9f400bf4));
  AL_MAP_LUT4 #(
    .EQN("~(~(D*~B)*~(C*A))"),
    .INIT(16'hb3a0))
    al_1a16c146 (
    .a(al_be3cff1e),
    .b(al_1302c23a),
    .c(al_2339cbd5[2]),
    .d(al_2339cbd5[10]),
    .o(al_2e3fd34b));
  AL_MAP_LUT4 #(
    .EQN("~(~(D*~B)*~(C*A))"),
    .INIT(16'hb3a0))
    al_cff0e250 (
    .a(al_be3cff1e),
    .b(al_1302c23a),
    .c(al_2339cbd5[1]),
    .d(al_2339cbd5[9]),
    .o(al_eb14a827));
  AL_MAP_LUT4 #(
    .EQN("(A*(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D))"),
    .INIT(16'ha088))
    al_6dfda61d (
    .a(al_91850552),
    .b(al_2339cbd5[6]),
    .c(al_2339cbd5[14]),
    .d(al_deee15b7[0]),
    .o(al_3c9cb754));
  AL_MAP_LUT3 #(
    .EQN("(C*B*~A)"),
    .INIT(8'h40))
    al_39dfef57 (
    .a(al_65ea8590),
    .b(al_2339cbd5[3]),
    .c(al_71bf180[0]),
    .o(al_60f1e377));
  AL_MAP_LUT4 #(
    .EQN("~(~C*~A*~(D*~B))"),
    .INIT(16'hfbfa))
    al_1c03dbe9 (
    .a(al_3c9cb754),
    .b(al_1302c23a),
    .c(al_60f1e377),
    .d(al_2339cbd5[22]),
    .o(al_e358fae7));
  AL_MAP_LUT4 #(
    .EQN("(A*(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D))"),
    .INIT(16'ha088))
    al_e6982b6c (
    .a(al_91850552),
    .b(al_2339cbd5[7]),
    .c(al_2339cbd5[15]),
    .d(al_deee15b7[0]),
    .o(al_71db1331));
  AL_MAP_LUT3 #(
    .EQN("(C*B*~A)"),
    .INIT(8'h40))
    al_c274d614 (
    .a(al_65ea8590),
    .b(al_2339cbd5[4]),
    .c(al_71bf180[0]),
    .o(al_5e6828ed));
  AL_MAP_LUT4 #(
    .EQN("~(~C*~A*~(D*~B))"),
    .INIT(16'hfbfa))
    al_6739d6c6 (
    .a(al_71db1331),
    .b(al_1302c23a),
    .c(al_5e6828ed),
    .d(al_2339cbd5[23]),
    .o(al_3af54e2));
  AL_MAP_LUT3 #(
    .EQN("(C*B*~A)"),
    .INIT(8'h40))
    al_9a0c4e45 (
    .a(al_a29c03e3),
    .b(al_ca1ecb12),
    .c(al_d6880fcd),
    .o(al_9c91952c));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_2b3add16 (
    .a(al_f4d3e003),
    .b(al_ae0a8ab1),
    .o(al_8fcfc610));
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    al_90750c8e (
    .a(al_ef7fbaed),
    .b(al_2f1b008),
    .c(al_5f9dd260),
    .d(al_53412fa1[2]),
    .o(al_3e084b8a));
  AL_MAP_LUT5 #(
    .EQN("(E*~D*C*~B*A)"),
    .INIT(32'h00200000))
    al_8da3bc52 (
    .a(al_3e084b8a),
    .b(al_ffbda4d7),
    .c(al_362ce8a7),
    .d(al_725282a9),
    .e(al_c0ae55ee),
    .o(al_b9c97ef));
  AL_DFF_X al_7fb4a7c0 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b9c97ef),
    .en(al_35747f18),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_28cc37bd));
  AL_DFF_X al_6cc8d85b (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_28cc37bd),
    .en(1'b1),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_fc501cf6));
  AL_DFF_X al_c3d6a78e (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_4b1de10),
    .en(al_35747f18),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_a12874af));
  AL_DFF_X al_8159475f (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_a12874af),
    .en(1'b1),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_81ea5b1b));
  AL_MAP_LUT5 #(
    .EQN("(E*D*C*B*A)"),
    .INIT(32'h80000000))
    al_bd034bf6 (
    .a(al_1deeb789),
    .b(al_2339cbd5[0]),
    .c(al_2339cbd5[1]),
    .d(al_2339cbd5[2]),
    .e(al_2339cbd5[3]),
    .o(al_fdc2a946));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_90cefee4 (
    .a(al_355480f2),
    .b(al_c0ae55ee),
    .o(al_57431b45));
  AL_MAP_LUT3 #(
    .EQN("~(~B*~(A)*~(C)+~B*A*~(C)+~(~B)*A*C+~B*A*C)"),
    .INIT(8'h5c))
    al_146266e7 (
    .a(al_57431b45),
    .b(al_a1f8756e),
    .c(al_e3e0848b[0]),
    .o(al_503d8b42));
  AL_MAP_LUT5 #(
    .EQN("(~(A)*~(B)*~(C)*D*~(E)+A*~(B)*~(C)*D*~(E)+~(A)*B*~(C)*D*~(E)+A*B*~(C)*D*~(E)+~(A)*~(B)*C*D*~(E)+~(A)*B*C*D*~(E)+~(A)*~(B)*~(C)*~(D)*E+~(A)*B*~(C)*~(D)*E+A*B*~(C)*~(D)*E+~(A)*~(B)*C*~(D)*E+~(A)*B*C*~(D)*E+A*B*C*~(D)*E+~(A)*~(B)*~(C)*D*E+~(A)*B*~(C)*D*E+A*B*~(C)*D*E+~(A)*~(B)*C*D*E+~(A)*B*C*D*E+A*B*C*D*E)"),
    .INIT(32'hdddd5f00))
    al_c6deee28 (
    .a(al_cfc0aaa6),
    .b(al_503d8b42),
    .c(al_89bc168e),
    .d(al_e3e0848b[0]),
    .e(al_e3e0848b[1]),
    .o(al_63f84a65));
  AL_MAP_LUT4 #(
    .EQN("(D*~(~A*~(C*~B)))"),
    .INIT(16'hba00))
    al_2e5d6904 (
    .a(al_63f84a65),
    .b(al_5c4546b6),
    .c(al_1deeb789),
    .d(al_706eedd7),
    .o(al_5c7e8d49));
  AL_MAP_LUT4 #(
    .EQN("(~B*~(D*~C*A))"),
    .INIT(16'h3133))
    al_25ee7cc0 (
    .a(al_12ffa234),
    .b(al_ebfdd7c2),
    .c(al_2d4a447c),
    .d(al_c0ae55ee),
    .o(al_46f7e781));
  AL_MAP_LUT5 #(
    .EQN("(~D*(B*~((E*A))*~(C)+B*(E*A)*~(C)+~(B)*(E*A)*C+B*(E*A)*C))"),
    .INIT(32'h00ac000c))
    al_57442247 (
    .a(al_93f02b06),
    .b(al_46f7e781),
    .c(al_e3e0848b[0]),
    .d(al_e3e0848b[1]),
    .e(al_355480f2),
    .o(al_5a53aef1));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    al_bbb3426f (
    .a(al_970ec842),
    .b(al_a29c03e3),
    .o(al_c5a7a034[0]));
  AL_MAP_LUT4 #(
    .EQN("(D*~(~C*B*A))"),
    .INIT(16'hf700))
    al_c6f7d644 (
    .a(al_60ee0b22),
    .b(al_93f02b06),
    .c(al_c5a7a034[0]),
    .d(al_12c01001),
    .o(al_b5430f5d));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_4adc2445 (
    .a(al_65bf7492),
    .b(al_e3e0848b[1]),
    .o(al_11249c6f));
  AL_MAP_LUT4 #(
    .EQN("(B*~(D*~(C*A)))"),
    .INIT(16'h80cc))
    al_80bb2a6a (
    .a(al_8a38481d),
    .b(al_11249c6f),
    .c(al_41c5dae8),
    .d(al_f9bc6754),
    .o(al_e1a629bb));
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    al_b46fa0df (
    .a(al_2339cbd5[6]),
    .b(al_2339cbd5[7]),
    .c(al_2339cbd5[8]),
    .d(al_2339cbd5[9]),
    .o(al_ecb32948));
  AL_MAP_LUT4 #(
    .EQN("(~B*~(D*~C*~A))"),
    .INIT(16'h3233))
    al_7e78a5bb (
    .a(al_5a53aef1),
    .b(al_b5430f5d),
    .c(al_e1a629bb),
    .d(al_9f0f8226),
    .o(al_2d0df3d9));
  AL_MAP_LUT5 #(
    .EQN("(~A*~(~E*~D*~C*~B))"),
    .INIT(32'h55555554))
    al_36f0bcf5 (
    .a(al_d72ee448),
    .b(al_2339cbd5[0]),
    .c(al_2339cbd5[1]),
    .d(al_2339cbd5[2]),
    .e(al_2339cbd5[3]),
    .o(al_2ce97c38));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_35dc1f3e (
    .a(al_d5b01b6e),
    .b(al_2ce97c38),
    .o(al_b3cb9027));
  AL_MAP_LUT5 #(
    .EQN("(~D*~(E*~(C*B*A)))"),
    .INIT(32'h008000ff))
    al_712ce2f8 (
    .a(al_b3cb9027),
    .b(al_60ee0b22),
    .c(al_93f02b06),
    .d(al_c22565b8),
    .e(al_3d37ea1b),
    .o(al_ca126494));
  AL_MAP_LUT5 #(
    .EQN("(C*~(A*~(D*~(~E*B))))"),
    .INIT(32'hf0507050))
    al_3b5e982a (
    .a(al_ca126494),
    .b(al_cfc0aaa6),
    .c(al_538866b5),
    .d(al_7e07b9ca),
    .e(al_c0ae55ee),
    .o(al_b4d141ea));
  AL_MAP_LUT3 #(
    .EQN("(B*~(~C*A))"),
    .INIT(8'hc4))
    al_c5e77d79 (
    .a(al_355480f2),
    .b(al_e7b69aab),
    .c(al_c0ae55ee),
    .o(al_94143c9c));
  AL_MAP_LUT4 #(
    .EQN("(D*~(C*B*A))"),
    .INIT(16'h7f00))
    al_1b18f9a9 (
    .a(al_8a38481d),
    .b(al_94143c9c),
    .c(al_93f02b06),
    .d(al_17bcd7d3),
    .o(al_52f3b168));
  AL_MAP_LUT5 #(
    .EQN("(A*~(C*~(E*~(D*B))))"),
    .INIT(32'h2aaa0a0a))
    al_ce64f4a5 (
    .a(al_52f3b168),
    .b(al_cfc0aaa6),
    .c(al_94f3c2f2),
    .d(al_355480f2),
    .e(al_e3e0848b[0]),
    .o(al_bfedb182));
  AL_MAP_LUT4 #(
    .EQN("~(~D*~C*B*~A)"),
    .INIT(16'hfffb))
    al_4d39c62d (
    .a(al_5c7e8d49),
    .b(al_2d0df3d9),
    .c(al_b4d141ea),
    .d(al_bfedb182),
    .o(al_239870ba[0]));
  AL_MAP_LUT5 #(
    .EQN("(E*D*C*B*A)"),
    .INIT(32'h80000000))
    al_a99de7c3 (
    .a(al_fdc2a946),
    .b(al_ecb32948),
    .c(al_2339cbd5[4]),
    .d(al_2339cbd5[5]),
    .e(al_2339cbd5[10]),
    .o(al_c22565b8));
  AL_MAP_LUT4 #(
    .EQN("(~D*~(~A*~(C*B)))"),
    .INIT(16'h00ea))
    al_be05a060 (
    .a(al_e28ad7c6),
    .b(al_a4a9297a),
    .c(al_34caff68),
    .d(al_c0ae55ee),
    .o(al_4f2f9b34));
  AL_MAP_LUT5 #(
    .EQN("(~D*~B*~A*~(E*~C))"),
    .INIT(32'h00100011))
    al_8e9e16e1 (
    .a(al_4f2f9b34),
    .b(al_9e6ec0b4),
    .c(al_a29c03e3),
    .d(al_ce93b827),
    .e(al_8e83538d),
    .o(al_8a38481d));
  AL_MAP_LUT4 #(
    .EQN("(D*~(C*~(B)*~(A)+C*B*~(A)+~(C)*B*A+C*B*A))"),
    .INIT(16'h2700))
    al_4baeda4a (
    .a(al_cfc0aaa6),
    .b(al_355480f2),
    .c(al_da3979c2),
    .d(al_7e07b9ca),
    .o(al_aaff2418));
  AL_MAP_LUT5 #(
    .EQN("(E*~(C*~(A*~(~D*~B))))"),
    .INIT(32'haf8f0000))
    al_5a7a2ab0 (
    .a(al_389a14ba),
    .b(al_cfc0aaa6),
    .c(al_698a0589),
    .d(al_da3979c2),
    .e(al_9f0f8226),
    .o(al_ff1ebd03));
  AL_MAP_LUT3 #(
    .EQN("(~A*~(C*B))"),
    .INIT(8'h15))
    al_2e293fbb (
    .a(al_34caff68),
    .b(al_538866b5),
    .c(al_e3e0848b[1]),
    .o(al_684682db));
  AL_MAP_LUT4 #(
    .EQN("(A*~(B)*~(C)*~(D)+A*~(B)*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D)"),
    .INIT(16'h3722))
    al_78af9d15 (
    .a(al_cfc0aaa6),
    .b(al_8ec3f0ed),
    .c(al_684682db),
    .d(al_da3979c2),
    .o(al_81d09b43));
  AL_MAP_LUT4 #(
    .EQN("(B*(A*C*~(D)+~(A)*~(C)*D+A*~(C)*D))"),
    .INIT(16'h0c80))
    al_f9ce4781 (
    .a(al_89bc168e),
    .b(al_706eedd7),
    .c(al_e3e0848b[0]),
    .d(al_e3e0848b[1]),
    .o(al_b582986d));
  AL_MAP_LUT3 #(
    .EQN("(B*~(~C*~A))"),
    .INIT(8'hc8))
    al_420774b3 (
    .a(al_1048e296),
    .b(al_da3979c2),
    .c(al_706eedd7),
    .o(al_72514e14));
  AL_MAP_LUT5 #(
    .EQN("(~C*~((~B*~(~E*D)))*~(A)+~C*(~B*~(~E*D))*~(A)+~(~C)*(~B*~(~E*D))*A+~C*(~B*~(~E*D))*A)"),
    .INIT(32'h27270527))
    al_7f26a427 (
    .a(al_cfc0aaa6),
    .b(al_b582986d),
    .c(al_72514e14),
    .d(al_1048e296),
    .e(al_c0ae55ee),
    .o(al_5bf437e6));
  AL_MAP_LUT4 #(
    .EQN("~(D*~C*~B*~A)"),
    .INIT(16'hfeff))
    al_fd056667 (
    .a(al_580d0476),
    .b(al_ff1ebd03),
    .c(al_81d09b43),
    .d(al_5bf437e6),
    .o(al_239870ba[1]));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*C*~(D)+A*~(B)*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+A*B*C*D)"),
    .INIT(16'hb3b0))
    al_4b873689 (
    .a(al_36e8dc43),
    .b(al_e3e0848b[0]),
    .c(al_e3e0848b[1]),
    .d(al_c0ae55ee),
    .o(al_f8f38055));
  AL_MAP_LUT3 #(
    .EQN("(C*~B*~A)"),
    .INIT(8'h10))
    al_a186e271 (
    .a(al_aaff2418),
    .b(al_f8f38055),
    .c(al_17bcd7d3),
    .o(al_580d0476));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    al_5920dc1 (
    .a(al_24412622),
    .b(al_93f02b06),
    .c(al_e3e0848b[0]),
    .o(al_389a14ba));
  AL_MAP_LUT4 #(
    .EQN("(~C*~(~D*~B*A))"),
    .INIT(16'h0f0d))
    al_d96231c4 (
    .a(al_12ffa234),
    .b(al_e3e0848b[0]),
    .c(al_e3e0848b[1]),
    .d(al_c0ae55ee),
    .o(al_698a0589));
  AL_MAP_LUT5 #(
    .EQN("(E*D*~C*B*~A)"),
    .INIT(32'h04000000))
    al_f9add411 (
    .a(al_5a0c5b2e[0]),
    .b(al_5a0c5b2e[1]),
    .c(al_5a0c5b2e[2]),
    .d(al_5a0c5b2e[3]),
    .e(al_c0ae55ee),
    .o(al_9f3f301));
  AL_MAP_LUT5 #(
    .EQN("(D*~(~B*~((~E*C))*~(A)+~B*(~E*C)*~(A)+~(~B)*(~E*C)*A+~B*(~E*C)*A))"),
    .INIT(32'hee004e00))
    al_555b5c12 (
    .a(al_cfc0aaa6),
    .b(al_41ec2d08),
    .c(al_355480f2),
    .d(al_7e07b9ca),
    .e(al_c0ae55ee),
    .o(al_107daa3));
  AL_MAP_LUT4 #(
    .EQN("(~A*~(~D*C*B))"),
    .INIT(16'h5515))
    al_3b500c42 (
    .a(al_41ec2d08),
    .b(al_8a38481d),
    .c(al_93f02b06),
    .d(al_57431b45),
    .o(al_a989a251));
  AL_MAP_LUT5 #(
    .EQN("(~A*(~(B)*~(C)*~(D)*~(E)+B*~(C)*~(D)*~(E)+B*C*~(D)*~(E)+~(B)*~(C)*D*~(E)+B*~(C)*D*~(E)+B*C*~(D)*E+~(B)*~(C)*D*E+B*~(C)*D*E))"),
    .INIT(32'h05400545))
    al_84f7ea4a (
    .a(al_107daa3),
    .b(al_a989a251),
    .c(al_f36a218b),
    .d(al_e3e0848b[0]),
    .e(al_be9ec6d0),
    .o(al_6976d417));
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    al_96bdc156 (
    .a(al_93f02b06),
    .b(al_d5b01b6e),
    .c(al_e3e0848b[0]),
    .d(al_e3e0848b[1]),
    .o(al_98f270c5));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B)*~(A)+C*B*~(A)+~(C)*B*A+C*B*A)"),
    .INIT(8'hd8))
    al_30dc6614 (
    .a(al_98f270c5),
    .b(al_60ee0b22),
    .c(al_e3e0848b[3]),
    .o(al_b6d7eb5b));
  AL_MAP_LUT4 #(
    .EQN("(~D*C*B*A)"),
    .INIT(16'h0080))
    al_73b05a5a (
    .a(al_f0bd1bf4[4]),
    .b(al_f0bd1bf4[5]),
    .c(al_f0bd1bf4[6]),
    .d(al_f0bd1bf4[7]),
    .o(al_37cf9d46));
  AL_MAP_LUT3 #(
    .EQN("(~B*~(~C*~A))"),
    .INIT(8'h32))
    al_d29efead (
    .a(al_b6d7eb5b),
    .b(al_e3e0848b[2]),
    .c(al_41ec2d08),
    .o(al_580baf29));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_989e2042 (
    .a(al_93f02b06),
    .b(al_57431b45),
    .o(al_6414d87a));
  AL_MAP_LUT3 #(
    .EQN("(B*~(C*~A))"),
    .INIT(8'h8c))
    al_c9f6453f (
    .a(al_65bf7492),
    .b(al_e3e0848b[1]),
    .c(al_c0ae55ee),
    .o(al_8362e6d));
  AL_MAP_LUT4 #(
    .EQN("(B*~(D*~(C*A)))"),
    .INIT(16'h80cc))
    al_b387846c (
    .a(al_8a38481d),
    .b(al_8362e6d),
    .c(al_41c5dae8),
    .d(al_f9bc6754),
    .o(al_8b4c506f));
  AL_MAP_LUT5 #(
    .EQN("(C*~B*~(E*D*A))"),
    .INIT(32'h10303030))
    al_8ded1d85 (
    .a(al_12ffa234),
    .b(al_ebfdd7c2),
    .c(al_1deeb789),
    .d(al_2d4a447c),
    .e(al_c0ae55ee),
    .o(al_8fca448a));
  AL_MAP_LUT5 #(
    .EQN("(E*~(~C*~B*~(D*~A)))"),
    .INIT(32'hfdfc0000))
    al_74d51308 (
    .a(al_6414d87a),
    .b(al_8b4c506f),
    .c(al_8fca448a),
    .d(al_7e07b9ca),
    .e(al_e3e0848b[3]),
    .o(al_4c7af3db));
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    al_8c8bd0ce (
    .a(al_60ee0b22),
    .b(al_57431b45),
    .c(al_3d37ea1b),
    .o(al_68fb3ab0));
  AL_MAP_LUT4 #(
    .EQN("(D*~A*~(~C*~B))"),
    .INIT(16'h5400))
    al_68ec1bf7 (
    .a(al_68fb3ab0),
    .b(al_cfc0aaa6),
    .c(al_41ec2d08),
    .d(al_706eedd7),
    .o(al_f3b82307));
  AL_MAP_LUT5 #(
    .EQN("~(~(~(~D*~B)*~C)*~(E*~A))"),
    .INIT(32'h5f5d0f0c))
    al_9526664f (
    .a(al_6976d417),
    .b(al_580baf29),
    .c(al_4c7af3db),
    .d(al_f3b82307),
    .e(al_17bcd7d3),
    .o(al_239870ba[2]));
  AL_MAP_LUT5 #(
    .EQN("(E*D*C*B*A)"),
    .INIT(32'h80000000))
    al_93705e4c (
    .a(al_37cf9d46),
    .b(al_f0bd1bf4[0]),
    .c(al_f0bd1bf4[1]),
    .d(al_f0bd1bf4[2]),
    .e(al_f0bd1bf4[3]),
    .o(al_26e40e69));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_a018d379 (
    .a(al_26e40e69),
    .b(al_9f3f301),
    .o(al_36e8dc43));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    al_d81d292 (
    .a(al_36e8dc43),
    .b(al_e3e0848b[0]),
    .c(al_e3e0848b[1]),
    .o(al_f36a218b));
  AL_MAP_LUT5 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)*~(E)+A*~(B)*~(C)*~(D)*~(E)+~(A)*B*~(C)*~(D)*~(E)+A*B*~(C)*~(D)*~(E)+A*~(B)*C*~(D)*~(E)+A*B*C*~(D)*~(E)+A*~(B)*~(C)*D*~(E)+A*B*~(C)*D*~(E)+A*~(B)*C*D*~(E)+A*B*C*D*~(E)+A*~(B)*~(C)*~(D)*E+A*B*~(C)*~(D)*E+A*~(B)*C*~(D)*E+A*B*C*~(D)*E+A*~(B)*~(C)*D*E+A*B*~(C)*D*E+A*~(B)*C*D*E)"),
    .INIT(32'h2aaaaaaf))
    al_d45dba72 (
    .a(al_cfc0aaa6),
    .b(al_355480f2),
    .c(al_e3e0848b[0]),
    .d(al_e3e0848b[1]),
    .e(al_e3e0848b[2]),
    .o(al_65b9e79a));
  AL_MAP_LUT4 #(
    .EQN("(B*A*~(D*C))"),
    .INIT(16'h0888))
    al_6be69a16 (
    .a(al_12ffa234),
    .b(al_1deeb789),
    .c(al_2d4a447c),
    .d(al_c0ae55ee),
    .o(al_ff7238e2));
  AL_MAP_LUT4 #(
    .EQN("~(C*~((~B*~A))*~(D)+C*(~B*~A)*~(D)+~(C)*(~B*~A)*D+C*(~B*~A)*D)"),
    .INIT(16'hee0f))
    al_b2244b68 (
    .a(al_be9ec6d0),
    .b(al_f36a218b),
    .c(al_ff7238e2),
    .d(al_e3e0848b[2]),
    .o(al_44271056));
  AL_MAP_LUT3 #(
    .EQN("(~A*~(B)*~(C)+~A*B*~(C)+~(~A)*B*C+~A*B*C)"),
    .INIT(8'hc5))
    al_a9ad7191 (
    .a(al_65b9e79a),
    .b(al_44271056),
    .c(al_e3e0848b[3]),
    .o(al_239870ba[3]));
  AL_DFF_X al_4f5bb32a (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b0feb4a0),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_83fef9c9));
  AL_MAP_LUT4 #(
    .EQN("(B*~(D*C*~A))"),
    .INIT(16'h8ccc))
    al_989b7edd (
    .a(al_cfc0aaa6),
    .b(al_8f826531),
    .c(al_da3979c2),
    .d(al_35747f18),
    .o(al_b0feb4a0));
  AL_MAP_LUT4 #(
    .EQN("(B*~A*(D@C))"),
    .INIT(16'h0440))
    al_bc4e9891 (
    .a(al_9103b859),
    .b(al_ab55e675),
    .c(al_2339cbd5[1]),
    .d(al_c0ae55ee),
    .o(al_283691cf));
  AL_MAP_LUT4 #(
    .EQN("(~B*~(~C*~(D*A)))"),
    .INIT(16'h3230))
    al_f7bb77f (
    .a(al_283691cf),
    .b(al_8e707a3),
    .c(al_83fef9c9),
    .d(al_35747f18),
    .o(al_8f826531));
  AL_DFF_X al_a02bbe0d (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_156ff55b),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_2d4a447c));
  AL_MAP_LUT4 #(
    .EQN("(~C*~A*~(~D*~B))"),
    .INIT(16'h0504))
    al_4eebe8ac (
    .a(al_797410fb),
    .b(al_846b1538),
    .c(al_8e707a3),
    .d(al_2d4a447c),
    .o(al_156ff55b));
  AL_DFF_X al_28207cb5 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_e4488a9),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_60900f7));
  AL_MAP_LUT4 #(
    .EQN("(~C*~(D*B*A))"),
    .INIT(16'h070f))
    al_b688b88d (
    .a(al_9103b859),
    .b(al_12c01001),
    .c(al_8e707a3),
    .d(al_fb2f48d1),
    .o(al_a6a69c6b));
  AL_MAP_LUT5 #(
    .EQN("(B*~(~D*~(E*C*A)))"),
    .INIT(32'hcc80cc00))
    al_316255e (
    .a(al_5dc95721),
    .b(al_a6a69c6b),
    .c(al_2d3bbb90),
    .d(al_60900f7),
    .e(al_fb2f48d1),
    .o(al_e4488a9));
  AL_DFF_X al_952b41c3 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_4e5f46d4),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_d72ee448));
  AL_MAP_LUT3 #(
    .EQN("(~C*B*A)"),
    .INIT(8'h08))
    al_ee708862 (
    .a(al_948d9abc),
    .b(al_7dfbd658),
    .c(al_53412fa1[2]),
    .o(al_1d3ed386));
  AL_MAP_LUT4 #(
    .EQN("(D*A*~(~C*~B))"),
    .INIT(16'ha800))
    al_ba2bde5d (
    .a(al_f4d3e003),
    .b(al_1d3ed386),
    .c(al_225e6daf),
    .d(al_35747f18),
    .o(al_f6d33fbb));
  AL_MAP_LUT4 #(
    .EQN("(~B*(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    .INIT(16'h3210))
    al_4364b893 (
    .a(al_f6d33fbb),
    .b(al_8e707a3),
    .c(al_d72ee448),
    .d(al_c0ae55ee),
    .o(al_4e5f46d4));
  AL_DFF_X al_f4b7efd7 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_561a46d9),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_5a0c5b2e[0]));
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    al_76145b41 (
    .a(al_b7c06e8),
    .b(al_5a0c5b2e[0]),
    .c(al_35747f18),
    .o(al_b1e68eef));
  AL_MAP_LUT4 #(
    .EQN("(~B*~(D*~(C*~A)))"),
    .INIT(16'h1033))
    al_75c895e8 (
    .a(al_9f3f301),
    .b(al_8e707a3),
    .c(al_c0ae55ee),
    .d(al_35747f18),
    .o(al_862a9f67));
  AL_MAP_LUT5 #(
    .EQN("(B*(E@(D*C*A)))"),
    .INIT(32'h4ccc8000))
    al_36a839d8 (
    .a(al_b1e68eef),
    .b(al_862a9f67),
    .c(al_5a0c5b2e[1]),
    .d(al_5a0c5b2e[2]),
    .e(al_5a0c5b2e[3]),
    .o(al_2bb27174));
  AL_MAP_LUT4 #(
    .EQN("(A*(C@(D*B)))"),
    .INIT(16'h28a0))
    al_96a95590 (
    .a(al_862a9f67),
    .b(al_b7c06e8),
    .c(al_5a0c5b2e[0]),
    .d(al_35747f18),
    .o(al_561a46d9));
  AL_MAP_LUT3 #(
    .EQN("(B*(C@A))"),
    .INIT(8'h48))
    al_1e2fb547 (
    .a(al_b1e68eef),
    .b(al_862a9f67),
    .c(al_5a0c5b2e[1]),
    .o(al_9bfc3186));
  AL_MAP_LUT4 #(
    .EQN("(B*(D@(C*A)))"),
    .INIT(16'h4c80))
    al_13a09411 (
    .a(al_b1e68eef),
    .b(al_862a9f67),
    .c(al_5a0c5b2e[1]),
    .d(al_5a0c5b2e[2]),
    .o(al_c0aea152));
  AL_DFF_X al_b78409e8 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_9bfc3186),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_5a0c5b2e[1]));
  AL_DFF_X al_21ca605d (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_c0aea152),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_5a0c5b2e[2]));
  AL_DFF_X al_b487b288 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2bb27174),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_5a0c5b2e[3]));
  AL_DFF_X al_f1e1035f (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[7]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[8]));
  AL_DFF_X al_99edeec4 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[8]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[9]));
  AL_DFF_X al_1ff6637 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[9]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[10]));
  AL_DFF_X al_e99f51a4 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[10]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[11]));
  AL_DFF_X al_41e7435a (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[11]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[12]));
  AL_DFF_X al_b3c78f34 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[12]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[13]));
  AL_DFF_X al_3136a699 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[13]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[14]));
  AL_DFF_X al_db6496e1 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[14]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[15]));
  AL_DFF_X al_f211ad38 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[15]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[16]));
  AL_DFF_X al_8bd9298 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[16]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[17]));
  AL_DFF_X al_624820d9 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_dffa28e6),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[0]));
  AL_DFF_X al_65df01ce (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[17]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[18]));
  AL_DFF_X al_e9be5133 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[18]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[19]));
  AL_DFF_X al_c92d2b1a (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[19]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[20]));
  AL_DFF_X al_926cb4eb (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[20]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[21]));
  AL_DFF_X al_f4ae4444 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[21]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[22]));
  AL_DFF_X al_338dd453 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[22]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[23]));
  AL_DFF_X al_57808628 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[23]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[24]));
  AL_DFF_X al_1fe517d9 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[24]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[25]));
  AL_DFF_X al_2ea9d133 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[25]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[26]));
  AL_DFF_X al_7779895 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[26]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[27]));
  AL_DFF_X al_d7448f5a (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[0]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[1]));
  AL_DFF_X al_b7794ee9 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[27]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[28]));
  AL_DFF_X al_3a35467e (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[28]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[29]));
  AL_DFF_X al_81313ce6 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[29]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[30]));
  AL_DFF_X al_52861134 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[30]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[31]));
  AL_DFF_X al_3db9c5cb (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[1]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[2]));
  AL_DFF_X al_7b9a3bb5 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[2]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[3]));
  AL_DFF_X al_e9fbe17 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[3]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[4]));
  AL_DFF_X al_423b0547 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[4]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[5]));
  AL_DFF_X al_4dc3289f (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[5]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[6]));
  AL_DFF_X al_8ce4322a (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2339cbd5[6]),
    .en(al_6eee4106),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_2339cbd5[7]));
  AL_DFF_X al_cca850ac (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_239870ba[0]),
    .en(al_35747f18),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_e3e0848b[0]));
  AL_DFF_X al_2295993c (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_239870ba[1]),
    .en(al_35747f18),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_e3e0848b[1]));
  AL_DFF_X al_b0732e6b (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_239870ba[2]),
    .en(al_35747f18),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_e3e0848b[2]));
  AL_DFF_X al_289b6991 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_239870ba[3]),
    .en(al_35747f18),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_e3e0848b[3]));
  AL_DFF_X al_2ff091c2 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_7013407a[8]),
    .en(al_1b442e41),
    .sr(al_b620e6c4),
    .ss(1'b0),
    .q(al_c8d7daaf[8]));
  AL_DFF_X al_c1e5067 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_c8d7daaf[8]),
    .en(al_1b442e41),
    .sr(al_b620e6c4),
    .ss(1'b0),
    .q(al_c8d7daaf[9]));
  AL_DFF_X al_ed941e98 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_7013407a[10]),
    .en(al_1b442e41),
    .sr(al_b620e6c4),
    .ss(1'b0),
    .q(al_c8d7daaf[10]));
  AL_DFF_X al_818190ea (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_c8d7daaf[10]),
    .en(al_1b442e41),
    .sr(al_b620e6c4),
    .ss(1'b0),
    .q(al_c8d7daaf[11]));
  AL_DFF_X al_d14133c2 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_c8d7daaf[11]),
    .en(al_1b442e41),
    .sr(al_b620e6c4),
    .ss(1'b0),
    .q(al_c8d7daaf[12]));
  AL_DFF_X al_5e10f75b (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_c8d7daaf[12]),
    .en(al_1b442e41),
    .sr(al_b620e6c4),
    .ss(1'b0),
    .q(al_c8d7daaf[13]));
  AL_DFF_X al_546f980d (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_7013407a[14]),
    .en(al_1b442e41),
    .sr(al_b620e6c4),
    .ss(1'b0),
    .q(al_c8d7daaf[14]));
  AL_DFF_X al_32f6b0c6 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_7013407a[0]),
    .en(al_1b442e41),
    .sr(al_b620e6c4),
    .ss(1'b0),
    .q(al_c8d7daaf[0]));
  AL_DFF_X al_3cdf3e6c (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_c8d7daaf[0]),
    .en(al_1b442e41),
    .sr(al_b620e6c4),
    .ss(1'b0),
    .q(al_c8d7daaf[1]));
  AL_DFF_X al_82eb6c74 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_c8d7daaf[1]),
    .en(al_1b442e41),
    .sr(al_b620e6c4),
    .ss(1'b0),
    .q(al_c8d7daaf[2]));
  AL_DFF_X al_9d344fb6 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_7013407a[3]),
    .en(al_1b442e41),
    .sr(al_b620e6c4),
    .ss(1'b0),
    .q(al_c8d7daaf[3]));
  AL_DFF_X al_c42ace04 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_7013407a[4]),
    .en(al_1b442e41),
    .sr(al_b620e6c4),
    .ss(1'b0),
    .q(al_c8d7daaf[4]));
  AL_DFF_X al_c5a87daa (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_c8d7daaf[4]),
    .en(al_1b442e41),
    .sr(al_b620e6c4),
    .ss(1'b0),
    .q(al_c8d7daaf[5]));
  AL_DFF_X al_448c3476 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_c8d7daaf[5]),
    .en(al_1b442e41),
    .sr(al_b620e6c4),
    .ss(1'b0),
    .q(al_c8d7daaf[6]));
  AL_DFF_X al_84fc11ec (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_7013407a[7]),
    .en(al_1b442e41),
    .sr(al_b620e6c4),
    .ss(1'b0),
    .q(al_c8d7daaf[7]));
  AL_DFF_X al_8db93414 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_bf067b6),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_5e5be818[0]));
  AL_MAP_LUT4 #(
    .EQN("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    .INIT(16'h4540))
    al_796ffdd2 (
    .a(al_8e707a3),
    .b(al_b5e9db1c[28]),
    .c(al_e822fb38),
    .d(al_5e5be818[0]),
    .o(al_bf067b6));
  AL_MAP_LUT4 #(
    .EQN("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    .INIT(16'h4540))
    al_501427ad (
    .a(al_8e707a3),
    .b(al_b5e9db1c[29]),
    .c(al_e822fb38),
    .d(al_5e5be818[1]),
    .o(al_fb5859f5));
  AL_MAP_LUT4 #(
    .EQN("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    .INIT(16'h4540))
    al_253bc3cb (
    .a(al_8e707a3),
    .b(al_b5e9db1c[30]),
    .c(al_e822fb38),
    .d(al_5e5be818[2]),
    .o(al_ac781d44));
  AL_MAP_LUT4 #(
    .EQN("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    .INIT(16'h4540))
    al_cdd3c990 (
    .a(al_8e707a3),
    .b(al_b5e9db1c[31]),
    .c(al_e822fb38),
    .d(al_5e5be818[3]),
    .o(al_a1bace23));
  AL_DFF_X al_7465de32 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_fb5859f5),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_5e5be818[1]));
  AL_DFF_X al_2c48bf1 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_ac781d44),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_5e5be818[2]));
  AL_DFF_X al_bf1492b7 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_a1bace23),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_5e5be818[3]));
  AL_DFF_X al_c52b43d3 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_4b750e7c[8]),
    .en(al_785abacb),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_d7293817[8]));
  AL_DFF_X al_7deb3029 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_4b750e7c[9]),
    .en(al_785abacb),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_d7293817[9]));
  AL_DFF_X al_496c012f (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_4b750e7c[10]),
    .en(al_785abacb),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_d7293817[10]));
  AL_DFF_X al_ef4174ef (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_4b750e7c[11]),
    .en(al_785abacb),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_d7293817[11]));
  AL_DFF_X al_8fb8ed15 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_4b750e7c[12]),
    .en(al_785abacb),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_d7293817[12]));
  AL_DFF_X al_eb670813 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_4b750e7c[13]),
    .en(al_785abacb),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_d7293817[13]));
  AL_DFF_X al_e3bc61ad (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_4b750e7c[14]),
    .en(al_785abacb),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_d7293817[14]));
  AL_DFF_X al_6ec1b4cc (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_4b750e7c[15]),
    .en(al_785abacb),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_d7293817[15]));
  AL_DFF_X al_df42550a (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_4b750e7c[0]),
    .en(al_785abacb),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_d7293817[0]));
  AL_DFF_X al_d52cdbab (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_4b750e7c[1]),
    .en(al_785abacb),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_d7293817[1]));
  AL_DFF_X al_215eb12b (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_4b750e7c[2]),
    .en(al_785abacb),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_d7293817[2]));
  AL_DFF_X al_dae18d2f (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_4b750e7c[3]),
    .en(al_785abacb),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_d7293817[3]));
  AL_DFF_X al_d9e29f15 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_4b750e7c[4]),
    .en(al_785abacb),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_d7293817[4]));
  AL_DFF_X al_5ab8ad08 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_4b750e7c[5]),
    .en(al_785abacb),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_d7293817[5]));
  AL_DFF_X al_509de4f4 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_4b750e7c[6]),
    .en(al_785abacb),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_d7293817[6]));
  AL_DFF_X al_ae8a2ed1 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_4b750e7c[7]),
    .en(al_785abacb),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_d7293817[7]));
  AL_DFF_X al_5ffc22dd (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_35c86450[0]),
    .en(al_35747f18),
    .sr(al_711c48a4),
    .ss(1'b0),
    .q(al_f0bd1bf4[0]));
  AL_DFF_X al_85bb1d7 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_35c86450[1]),
    .en(al_35747f18),
    .sr(al_711c48a4),
    .ss(1'b0),
    .q(al_f0bd1bf4[1]));
  AL_DFF_X al_afc0493a (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_35c86450[2]),
    .en(al_35747f18),
    .sr(al_711c48a4),
    .ss(1'b0),
    .q(al_f0bd1bf4[2]));
  AL_DFF_X al_97bc3143 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_35c86450[3]),
    .en(al_35747f18),
    .sr(al_711c48a4),
    .ss(1'b0),
    .q(al_f0bd1bf4[3]));
  AL_DFF_X al_35a80525 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_35c86450[4]),
    .en(al_35747f18),
    .sr(al_711c48a4),
    .ss(1'b0),
    .q(al_f0bd1bf4[4]));
  AL_DFF_X al_ba1ff4ab (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_35c86450[5]),
    .en(al_35747f18),
    .sr(al_711c48a4),
    .ss(1'b0),
    .q(al_f0bd1bf4[5]));
  AL_DFF_X al_414d2d22 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_35c86450[6]),
    .en(al_35747f18),
    .sr(al_711c48a4),
    .ss(1'b0),
    .q(al_f0bd1bf4[6]));
  AL_DFF_X al_52983ebb (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_35c86450[7]),
    .en(al_35747f18),
    .sr(al_711c48a4),
    .ss(1'b0),
    .q(al_f0bd1bf4[7]));
  AL_DFF_X al_5cb62ff0 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_6642c13d[0]),
    .en(al_35747f18),
    .sr(al_711c48a4),
    .ss(1'b0),
    .q(al_a3aa82f0[0]));
  AL_DFF_X al_1f0f5370 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_6642c13d[1]),
    .en(al_35747f18),
    .sr(al_711c48a4),
    .ss(1'b0),
    .q(al_a3aa82f0[1]));
  AL_DFF_X al_a214d672 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_6642c13d[2]),
    .en(al_35747f18),
    .sr(al_711c48a4),
    .ss(1'b0),
    .q(al_a3aa82f0[2]));
  AL_DFF_X al_496f0235 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_6642c13d[3]),
    .en(al_35747f18),
    .sr(al_711c48a4),
    .ss(1'b0),
    .q(al_a3aa82f0[3]));
  AL_DFF_X al_6065e9c6 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_6642c13d[4]),
    .en(al_35747f18),
    .sr(al_711c48a4),
    .ss(1'b0),
    .q(al_a3aa82f0[4]));
  AL_DFF_X al_e6c99418 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_6642c13d[5]),
    .en(al_35747f18),
    .sr(al_711c48a4),
    .ss(1'b0),
    .q(al_a3aa82f0[5]));
  AL_DFF_X al_9198753a (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_6642c13d[6]),
    .en(al_35747f18),
    .sr(al_711c48a4),
    .ss(1'b0),
    .q(al_a3aa82f0[6]));
  AL_DFF_X al_7cbd3c3f (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_6642c13d[7]),
    .en(al_35747f18),
    .sr(al_711c48a4),
    .ss(1'b0),
    .q(al_a3aa82f0[7]));
  AL_DFF_X al_2f59a174 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_8fcfc610),
    .en(al_35747f18),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_71bf180[0]));
  AL_DFF_X al_23912911 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b002fed8),
    .en(al_35747f18),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_71bf180[1]));
  AL_DFF_X al_69e95860 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_9c91952c),
    .en(al_35747f18),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_71bf180[2]));
  AL_DFF_X al_4e182b8f (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_793c5a14),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_dbed1f4a[0]));
  AL_DFF_X al_8ef0348d (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_4ea395bb),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_dbed1f4a[1]));
  AL_MAP_LUT4 #(
    .EQN("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .INIT(16'h3120))
    al_35d43b34 (
    .a(al_513770c2),
    .b(al_8e707a3),
    .c(al_dbed1f4a[4]),
    .d(al_dbed1f4a[5]),
    .o(al_268aace1));
  AL_MAP_LUT4 #(
    .EQN("(~C*(D*~(B)*~(A)+D*B*~(A)+~(D)*B*A+D*B*A))"),
    .INIT(16'h0d08))
    al_9c4f2b18 (
    .a(al_513770c2),
    .b(al_dffa28e6),
    .c(al_8e707a3),
    .d(al_dbed1f4a[0]),
    .o(al_793c5a14));
  AL_MAP_LUT4 #(
    .EQN("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .INIT(16'h3120))
    al_aab1174c (
    .a(al_513770c2),
    .b(al_8e707a3),
    .c(al_dbed1f4a[0]),
    .d(al_dbed1f4a[1]),
    .o(al_4ea395bb));
  AL_MAP_LUT4 #(
    .EQN("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .INIT(16'h3120))
    al_aca0e957 (
    .a(al_513770c2),
    .b(al_8e707a3),
    .c(al_dbed1f4a[1]),
    .d(al_dbed1f4a[2]),
    .o(al_e4a2b19));
  AL_MAP_LUT4 #(
    .EQN("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .INIT(16'h3120))
    al_14aff7e3 (
    .a(al_513770c2),
    .b(al_8e707a3),
    .c(al_dbed1f4a[2]),
    .d(al_dbed1f4a[3]),
    .o(al_fd2b7948));
  AL_MAP_LUT4 #(
    .EQN("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .INIT(16'h3120))
    al_9d2276e2 (
    .a(al_513770c2),
    .b(al_8e707a3),
    .c(al_dbed1f4a[3]),
    .d(al_dbed1f4a[4]),
    .o(al_1cc7ba22));
  AL_DFF_X al_59c8e7b2 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_e4a2b19),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_dbed1f4a[2]));
  AL_DFF_X al_33798720 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_fd2b7948),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_dbed1f4a[3]));
  AL_DFF_X al_88d3ca4a (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_1cc7ba22),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_dbed1f4a[4]));
  AL_DFF_X al_a35c8c57 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_268aace1),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_dbed1f4a[5]));
  AL_MAP_LUT2 #(
    .EQN("~(B@A)"),
    .INIT(4'h9))
    al_e3d81329 (
    .a(al_c8d7daaf[2]),
    .b(al_2339cbd5[5]),
    .o(al_8eb70998));
  AL_MAP_LUT5 #(
    .EQN("(C*B*A*~(E@D))"),
    .INIT(32'h80000080))
    al_92fb5ff1 (
    .a(al_5ca421ff),
    .b(al_d74756cf),
    .c(al_8eb70998),
    .d(al_c8d7daaf[5]),
    .e(al_2339cbd5[8]),
    .o(al_4d45df67));
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    al_5f230f82 (
    .a(al_2d3bd04d),
    .b(al_706eedd7),
    .c(al_5f9dd260),
    .d(al_e7b69aab),
    .o(al_e28ad7c6));
  AL_MAP_LUT4 #(
    .EQN("(C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    .INIT(16'hc0a0))
    al_5658e7f2 (
    .a(al_861641df),
    .b(al_b9247c23),
    .c(al_1486f657),
    .d(al_dbed1f4a[0]),
    .o(al_c766f9d9));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_79ce8dcd (
    .a(al_53412fa1[3]),
    .b(al_53412fa1[4]),
    .o(al_d187bcb1));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*B*A)"),
    .INIT(16'h0008))
    al_2979cf8c (
    .a(al_706eedd7),
    .b(al_e7b69aab),
    .c(al_53412fa1[0]),
    .d(al_53412fa1[1]),
    .o(al_13f91b9f));
  AL_MAP_LUT4 #(
    .EQN("(D*~C*B*A)"),
    .INIT(16'h0800))
    al_cee133d2 (
    .a(al_e3e0848b[0]),
    .b(al_e3e0848b[1]),
    .c(al_e3e0848b[2]),
    .d(al_e3e0848b[3]),
    .o(al_ab55e675));
  AL_MAP_LUT4 #(
    .EQN("(D*C*~B*~A)"),
    .INIT(16'h1000))
    al_dfa1008f (
    .a(al_f0bd1bf4[7]),
    .b(al_a3aa82f0[7]),
    .c(al_5294bf77),
    .d(al_c0ae55ee),
    .o(al_7561835e));
  AL_MAP_LUT5 #(
    .EQN("(E*D*C*B*A)"),
    .INIT(32'h80000000))
    al_8e698832 (
    .a(al_2d3bd04d),
    .b(al_7561835e),
    .c(al_706eedd7),
    .d(al_581b19be),
    .e(al_e7b69aab),
    .o(al_3c7c8021));
  AL_MAP_LUT4 #(
    .EQN("(A*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+~(A)*~(B)*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hf79e))
    al_ff7446a3 (
    .a(al_6f21d658),
    .b(al_53412fa1[5]),
    .c(al_deee15b7[2]),
    .d(al_deee15b7[3]),
    .o(al_a0bae2c0));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(C)*~((D@B))+A*~(C)*~((D@B))+A*C*~((D@B))+~(A)*~(C)*(D@B)+~(A)*C*(D@B)+A*C*(D@B))"),
    .INIT(16'hbde7))
    al_22c12e1c (
    .a(al_53412fa1[3]),
    .b(al_53412fa1[4]),
    .c(al_deee15b7[0]),
    .d(al_deee15b7[1]),
    .o(al_4ccb1eb9));
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    al_6de03c61 (
    .a(al_53412fa1[0]),
    .b(al_53412fa1[1]),
    .c(al_53412fa1[2]),
    .o(al_7857d91e));
  AL_MAP_LUT3 #(
    .EQN("(C*~B*~A)"),
    .INIT(8'h10))
    al_fccfc553 (
    .a(al_a0bae2c0),
    .b(al_4ccb1eb9),
    .c(al_7857d91e),
    .o(al_ca1ecb12));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_984b8c43 (
    .a(al_948d9abc),
    .b(al_7857d91e),
    .o(al_3ff42b2e));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_fa515059 (
    .a(al_2f1b008),
    .b(al_7857d91e),
    .o(al_8d031e0e));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_647d6433 (
    .a(al_53412fa1[1]),
    .b(al_53412fa1[2]),
    .o(al_5f87e071));
  AL_MAP_LUT5 #(
    .EQN("(E*D*~C*B*A)"),
    .INIT(32'h08000000))
    al_13e4e70f (
    .a(al_2f1b008),
    .b(al_7e07b9ca),
    .c(al_5f87e071),
    .d(al_e3e0848b[3]),
    .e(al_c0ae55ee),
    .o(al_a1183b05));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_ca69daec (
    .a(al_54aad2a7),
    .b(al_5294bf77),
    .o(al_7548dbb9));
  AL_MAP_LUT5 #(
    .EQN("(E*B*A*(D@C))"),
    .INIT(32'h08800000))
    al_37a29f89 (
    .a(al_538866b5),
    .b(al_7548dbb9),
    .c(al_e3e0848b[0]),
    .d(al_e3e0848b[1]),
    .e(al_c0ae55ee),
    .o(al_289e0a43));
  AL_MAP_LUT4 #(
    .EQN("(~D*(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B))"),
    .INIT(16'h00b8))
    al_760f663d (
    .a(al_e3e0848b[0]),
    .b(al_e3e0848b[1]),
    .c(al_e3e0848b[2]),
    .d(al_e3e0848b[3]),
    .o(al_ec41d980));
  AL_MAP_LUT3 #(
    .EQN("(B*(C@A))"),
    .INIT(8'h48))
    al_d82be252 (
    .a(al_54aad2a7),
    .b(al_5294bf77),
    .c(al_c0ae55ee),
    .o(al_e96a7ab0));
  AL_MAP_LUT5 #(
    .EQN("(~C*~B*~(E*~(~D*~A)))"),
    .INIT(32'h00010303))
    al_7eedfce4 (
    .a(al_e28ad7c6),
    .b(al_a1183b05),
    .c(al_289e0a43),
    .d(al_ec41d980),
    .e(al_e96a7ab0),
    .o(al_273ee948));
  AL_MAP_LUT5 #(
    .EQN("(E*~D*~C*B*A)"),
    .INIT(32'h00080000))
    al_e6cb9c42 (
    .a(al_13f91b9f),
    .b(al_2d3bd04d),
    .c(al_54aad2a7),
    .d(al_5294bf77),
    .e(al_c0ae55ee),
    .o(al_ff19272e));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    al_d6fde77c (
    .a(al_273ee948),
    .b(al_ff19272e),
    .o(al_60ee0b22));
  AL_MAP_LUT4 #(
    .EQN("(D*~C*~B*~A)"),
    .INIT(16'h0100))
    al_2cad7a8c (
    .a(al_53412fa1[2]),
    .b(al_53412fa1[3]),
    .c(al_53412fa1[4]),
    .d(al_53412fa1[5]),
    .o(al_143a2769));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_120b0de8 (
    .a(al_143a2769),
    .b(al_581b19be),
    .o(al_c477a09c));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    al_39f7ed83 (
    .a(al_2f1b008),
    .b(al_5f87e071),
    .o(al_a4a9297a));
  AL_MAP_LUT4 #(
    .EQN("(C*B*(D@A))"),
    .INIT(16'h4080))
    al_d8039fe1 (
    .a(al_e3e0848b[0]),
    .b(al_e3e0848b[1]),
    .c(al_e3e0848b[2]),
    .d(al_e3e0848b[3]),
    .o(al_34caff68));
  AL_MAP_LUT4 #(
    .EQN("(~D*C*B*A)"),
    .INIT(16'h0080))
    al_d78fd36d (
    .a(al_355480f2),
    .b(al_ef7fbaed),
    .c(al_5294bf77),
    .d(al_c0ae55ee),
    .o(al_9e6ec0b4));
  AL_MAP_LUT5 #(
    .EQN("(C*B*A*~(E@D))"),
    .INIT(32'h80000080))
    al_eb24ad23 (
    .a(al_d9396682),
    .b(al_2f1b008),
    .c(al_5f87e071),
    .d(al_b4c124e),
    .e(al_53412fa1[0]),
    .o(al_ce93b827));
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*A)"),
    .INIT(8'h02))
    al_c34cdfcb (
    .a(al_e3e0848b[0]),
    .b(al_e3e0848b[1]),
    .c(al_c0ae55ee),
    .o(al_3e75194b));
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    al_17ddc0de (
    .a(al_948d9abc),
    .b(al_7857d91e),
    .c(al_3e75194b),
    .d(al_706eedd7),
    .o(al_8e83538d));
  AL_MAP_LUT5 #(
    .EQN("(~A*~(~E*~(~B*~(D*C))))"),
    .INIT(32'h55550111))
    al_d83cc67f (
    .a(al_9e6ec0b4),
    .b(al_e28ad7c6),
    .c(al_a4a9297a),
    .d(al_34caff68),
    .e(al_c0ae55ee),
    .o(al_e1b59a0e));
  AL_MAP_LUT3 #(
    .EQN("(~B*~(C*~A))"),
    .INIT(8'h23))
    al_1a931d9e (
    .a(al_a29c03e3),
    .b(al_ce93b827),
    .c(al_8e83538d),
    .o(al_296e25e2));
  AL_MAP_LUT5 #(
    .EQN("(E*D*C*B*A)"),
    .INIT(32'h80000000))
    al_b3965a0e (
    .a(al_2d3bd04d),
    .b(al_706eedd7),
    .c(al_d9ce094e),
    .d(al_581b19be),
    .e(al_e7b69aab),
    .o(al_90b6515f));
  AL_MAP_LUT5 #(
    .EQN("(~C*~B*~(E*~(D*A)))"),
    .INIT(32'h02000303))
    al_8d7c2605 (
    .a(al_75c5858c),
    .b(al_c766f9d9),
    .c(al_90b6515f),
    .d(al_4d45df67),
    .e(al_e28ad7c6),
    .o(al_93f02b06));
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    al_a3edb4ca (
    .a(al_e1b59a0e),
    .b(al_296e25e2),
    .c(al_93f02b06),
    .d(al_60ee0b22),
    .o(al_cfc0aaa6));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_f34d401e (
    .a(al_7857d91e),
    .b(al_d187bcb1),
    .o(al_9cdefbbc));
  AL_MAP_LUT5 #(
    .EQN("(E*A*(B*C*~(D)+~(B)*~(C)*D))"),
    .INIT(32'h02800000))
    al_f29f0b77 (
    .a(al_2f1b008),
    .b(al_83fef9c9),
    .c(al_53412fa1[0]),
    .d(al_53412fa1[1]),
    .e(al_53412fa1[2]),
    .o(al_9e26bc14));
  AL_MAP_LUT4 #(
    .EQN("(~C*~(D*~B*A))"),
    .INIT(16'h0d0f))
    al_80860b06 (
    .a(al_8d031e0e),
    .b(al_e3e0848b[0]),
    .c(al_e3e0848b[1]),
    .d(al_c0ae55ee),
    .o(al_94f3c2f2));
  AL_MAP_LUT3 #(
    .EQN("(A*~(~C*~B))"),
    .INIT(8'ha8))
    al_260899cd (
    .a(al_94f3c2f2),
    .b(al_e3e0848b[0]),
    .c(al_c0ae55ee),
    .o(al_be9ec6d0));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    al_de2775ee (
    .a(al_273ee948),
    .b(al_355480f2),
    .o(al_24412622));
  AL_MAP_LUT4 #(
    .EQN("(D*B*~(C*A))"),
    .INIT(16'h4c00))
    al_99801c2d (
    .a(al_d5b01b6e),
    .b(al_538866b5),
    .c(al_e3e0848b[0]),
    .d(al_e3e0848b[1]),
    .o(al_e757d758));
  AL_MAP_LUT3 #(
    .EQN("(~A*~(C*~B))"),
    .INIT(8'h45))
    al_b32150e7 (
    .a(al_e757d758),
    .b(al_355480f2),
    .c(al_34caff68),
    .o(al_8ec3f0ed));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_46cdd534 (
    .a(al_a29c03e3),
    .b(al_3ff42b2e),
    .o(al_89bc168e));
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    al_ed960fa7 (
    .a(al_12c01001),
    .b(al_143a2769),
    .c(al_581b19be),
    .o(al_6e3bd4db));
  AL_MAP_LUT5 #(
    .EQN("(~E*D*~C*B*A)"),
    .INIT(32'h00000800))
    al_55c2854e (
    .a(al_ab55e675),
    .b(al_2f1b008),
    .c(al_5f87e071),
    .d(al_80977367),
    .e(al_c0ae55ee),
    .o(al_7664d7d4));
  AL_MAP_LUT4 #(
    .EQN("(~D*~B*~(C*A))"),
    .INIT(16'h0013))
    al_988398ed (
    .a(al_c766f9d9),
    .b(al_3c7c8021),
    .c(al_6e3bd4db),
    .d(al_7664d7d4),
    .o(al_41c5dae8));
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    al_b7197709 (
    .a(al_a3aa82f0[5]),
    .b(al_a3aa82f0[6]),
    .c(al_a3aa82f0[7]),
    .d(al_5294bf77),
    .o(al_b952dc06));
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    al_ce6b0180 (
    .a(al_b952dc06),
    .b(al_a3aa82f0[3]),
    .c(al_a3aa82f0[4]),
    .o(al_f9bc6754));
  AL_MAP_LUT5 #(
    .EQN("(E*~(D*C*B*A))"),
    .INIT(32'h7fff0000))
    al_af069a7d (
    .a(al_e1b59a0e),
    .b(al_296e25e2),
    .c(al_41c5dae8),
    .d(al_273ee948),
    .e(al_f9bc6754),
    .o(al_41ec2d08));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_2747b6d7 (
    .a(al_9e26bc14),
    .b(al_e3e0848b[0]),
    .o(al_65bf7492));
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*A)"),
    .INIT(8'h02))
    al_9d3974d7 (
    .a(al_2d3bd04d),
    .b(al_53412fa1[1]),
    .c(al_c0ae55ee),
    .o(al_ebfdd7c2));
  AL_MAP_LUT4 #(
    .EQN("(~A*~(~B*~(D*C)))"),
    .INIT(16'h5444))
    al_a840b65a (
    .a(al_a29c03e3),
    .b(al_ca1ecb12),
    .c(al_9cdefbbc),
    .d(al_53412fa1[5]),
    .o(al_c5a7a034[1]));
  AL_MAP_LUT3 #(
    .EQN("(~C*B*A)"),
    .INIT(8'h08))
    al_23976eee (
    .a(al_60ee0b22),
    .b(al_93f02b06),
    .c(al_c5a7a034[1]),
    .o(al_5c4546b6));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    al_8cd21198 (
    .a(al_c477a09c),
    .b(al_ae0a8ab1),
    .o(al_970ec842));
  AL_MAP_LUT3 #(
    .EQN("(C*~(~B*~A))"),
    .INIT(8'he0))
    al_b089bf67 (
    .a(al_12ffa234),
    .b(al_ebfdd7c2),
    .c(al_1deeb789),
    .o(al_cb29502d));
  AL_DFF_X al_734e70e0 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_18324f63),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_53412fa1[0]));
  AL_MAP_LUT4 #(
    .EQN("(~B*~(D*~(~C*A)))"),
    .INIT(16'h0233))
    al_67b26742 (
    .a(al_cfc0aaa6),
    .b(al_cb29502d),
    .c(al_355480f2),
    .d(al_7e07b9ca),
    .o(al_80c49c9c));
  AL_MAP_LUT5 #(
    .EQN("(~E*~D*~(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    .INIT(32'h00000053))
    al_20ae08ba (
    .a(al_8d031e0e),
    .b(al_355480f2),
    .c(al_b4c124e),
    .d(al_e3e0848b[0]),
    .e(al_c0ae55ee),
    .o(al_7b46d796));
  AL_MAP_LUT4 #(
    .EQN("((D@C)*~(~B*A))"),
    .INIT(16'h0dd0))
    al_5637d76e (
    .a(al_9103b859),
    .b(al_83fef9c9),
    .c(al_2339cbd5[1]),
    .d(al_c0ae55ee),
    .o(al_776a9766));
  AL_MAP_LUT4 #(
    .EQN("(~A*~(~B*~(D*~C)))"),
    .INIT(16'h4544))
    al_5079932f (
    .a(al_41ec2d08),
    .b(al_7b46d796),
    .c(al_776a9766),
    .d(al_65bf7492),
    .o(al_7dc51659));
  AL_MAP_LUT4 #(
    .EQN("(C*~(A*~(D*~B)))"),
    .INIT(16'h7050))
    al_bbc9bd50 (
    .a(al_80c49c9c),
    .b(al_7dc51659),
    .c(al_9f0f8226),
    .d(al_e3e0848b[1]),
    .o(al_bef58683));
  AL_MAP_LUT5 #(
    .EQN("(E*~((~C*~A)*~(B)*~(D)+(~C*~A)*B*~(D)+~((~C*~A))*B*D+(~C*~A)*B*D))"),
    .INIT(32'h33fa0000))
    al_88533516 (
    .a(al_970ec842),
    .b(al_d5b01b6e),
    .c(al_a29c03e3),
    .d(al_e3e0848b[0]),
    .e(al_e3e0848b[1]),
    .o(al_1b7837e));
  AL_MAP_LUT4 #(
    .EQN("(D*~(C*B*A))"),
    .INIT(16'h7f00))
    al_64826ff4 (
    .a(al_60ee0b22),
    .b(al_93f02b06),
    .c(al_1b7837e),
    .d(al_538866b5),
    .o(al_b9d2176b));
  AL_MAP_LUT4 #(
    .EQN("(B*~(D*~(C*A)))"),
    .INIT(16'h80cc))
    al_13a5e52 (
    .a(al_24412622),
    .b(al_be9ec6d0),
    .c(al_93f02b06),
    .d(al_e3e0848b[0]),
    .o(al_f1946c1e));
  AL_MAP_LUT5 #(
    .EQN("(~A*~(D*~B*~(~E*C)))"),
    .INIT(32'h44555455))
    al_c7c0a40c (
    .a(al_b9d2176b),
    .b(al_f1946c1e),
    .c(al_cfc0aaa6),
    .d(al_17bcd7d3),
    .e(al_8ec3f0ed),
    .o(al_ac87519));
  AL_MAP_LUT5 #(
    .EQN("(A*~((C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D))*~(E)+A*(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)*~(E)+~(A)*(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)*E+A*(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)*E)"),
    .INIT(32'hccf0aaaa))
    al_5333e640 (
    .a(al_89bc168e),
    .b(al_355480f2),
    .c(al_a1f8756e),
    .d(al_e3e0848b[0]),
    .e(al_e3e0848b[1]),
    .o(al_73773ddb));
  AL_MAP_LUT5 #(
    .EQN("(E*~((~C*B)*~(A)*~(D)+(~C*B)*A*~(D)+~((~C*B))*A*D+(~C*B)*A*D))"),
    .INIT(32'h55f30000))
    al_5fc6dc91 (
    .a(al_5c4546b6),
    .b(al_cfc0aaa6),
    .c(al_73773ddb),
    .d(al_1deeb789),
    .e(al_706eedd7),
    .o(al_ee07d36));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_42ebc2c (
    .a(al_a29c03e3),
    .b(al_35747f18),
    .o(al_2c68e766));
  AL_MAP_LUT4 #(
    .EQN("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .INIT(16'h3120))
    al_cb3d8cd6 (
    .a(al_2c68e766),
    .b(al_8e707a3),
    .c(al_37bd3c9f[5]),
    .d(al_53412fa1[5]),
    .o(al_f5afc740));
  AL_MAP_LUT5 #(
    .EQN("(D*~(E*~(~C*B*~A)))"),
    .INIT(32'h0400ff00))
    al_1a26d5 (
    .a(al_bef58683),
    .b(al_ac87519),
    .c(al_ee07d36),
    .d(al_f5afc740),
    .e(al_35747f18),
    .o(al_2e7aa1c1));
  AL_MAP_LUT4 #(
    .EQN("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .INIT(16'h3120))
    al_f9a5a780 (
    .a(al_2c68e766),
    .b(al_8e707a3),
    .c(al_37bd3c9f[0]),
    .d(al_53412fa1[0]),
    .o(al_61bbc36d));
  AL_MAP_LUT5 #(
    .EQN("(D*~(E*~(~C*B*~A)))"),
    .INIT(32'h0400ff00))
    al_5f51511 (
    .a(al_bef58683),
    .b(al_ac87519),
    .c(al_ee07d36),
    .d(al_61bbc36d),
    .e(al_35747f18),
    .o(al_18324f63));
  AL_MAP_LUT4 #(
    .EQN("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .INIT(16'h3120))
    al_74b0fd83 (
    .a(al_2c68e766),
    .b(al_8e707a3),
    .c(al_37bd3c9f[1]),
    .d(al_53412fa1[1]),
    .o(al_4957a36e));
  AL_MAP_LUT5 #(
    .EQN("(D*~(E*~(~C*B*~A)))"),
    .INIT(32'h0400ff00))
    al_a3ed5f17 (
    .a(al_bef58683),
    .b(al_ac87519),
    .c(al_ee07d36),
    .d(al_4957a36e),
    .e(al_35747f18),
    .o(al_1d05987c));
  AL_MAP_LUT4 #(
    .EQN("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .INIT(16'h3120))
    al_7b218ca5 (
    .a(al_2c68e766),
    .b(al_8e707a3),
    .c(al_37bd3c9f[2]),
    .d(al_53412fa1[2]),
    .o(al_5f8ce69f));
  AL_MAP_LUT5 #(
    .EQN("(D*~(E*~(~C*B*~A)))"),
    .INIT(32'h0400ff00))
    al_8def4ca3 (
    .a(al_bef58683),
    .b(al_ac87519),
    .c(al_ee07d36),
    .d(al_5f8ce69f),
    .e(al_35747f18),
    .o(al_aa399956));
  AL_MAP_LUT4 #(
    .EQN("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .INIT(16'h3120))
    al_e4dc57db (
    .a(al_2c68e766),
    .b(al_8e707a3),
    .c(al_37bd3c9f[3]),
    .d(al_53412fa1[3]),
    .o(al_13be6013));
  AL_MAP_LUT5 #(
    .EQN("(D*~(E*~(~C*B*~A)))"),
    .INIT(32'h0400ff00))
    al_1be91aa (
    .a(al_bef58683),
    .b(al_ac87519),
    .c(al_ee07d36),
    .d(al_13be6013),
    .e(al_35747f18),
    .o(al_68c31110));
  AL_MAP_LUT4 #(
    .EQN("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .INIT(16'h3120))
    al_cdbcf89d (
    .a(al_2c68e766),
    .b(al_8e707a3),
    .c(al_37bd3c9f[4]),
    .d(al_53412fa1[4]),
    .o(al_6a5ae120));
  AL_MAP_LUT5 #(
    .EQN("(D*~(E*~(~C*B*~A)))"),
    .INIT(32'h0400ff00))
    al_481dfbc2 (
    .a(al_bef58683),
    .b(al_ac87519),
    .c(al_ee07d36),
    .d(al_6a5ae120),
    .e(al_35747f18),
    .o(al_7db16024));
  AL_DFF_X al_4fdcdeae (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_1d05987c),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_53412fa1[1]));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    al_743ef5c0 (
    .a(al_e3e0848b[2]),
    .b(al_e3e0848b[3]),
    .o(al_538866b5));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    al_9c8ef173 (
    .a(al_e3e0848b[0]),
    .b(al_e3e0848b[1]),
    .o(al_1deeb789));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    al_76351bb7 (
    .a(al_e3e0848b[0]),
    .b(al_e3e0848b[1]),
    .o(al_7e07b9ca));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_409b43bb (
    .a(al_e3e0848b[0]),
    .b(al_e3e0848b[1]),
    .o(al_3d37ea1b));
  AL_DFF_X al_c3a96bb8 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_aa399956),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_53412fa1[2]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_ba7efe3d (
    .a(al_e3e0848b[2]),
    .b(al_e3e0848b[3]),
    .o(al_17bcd7d3));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    al_d5999102 (
    .a(al_deee15b7[0]),
    .b(al_deee15b7[1]),
    .o(al_6f21d658));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    al_f9abf7b6 (
    .a(al_dbed1f4a[3]),
    .b(al_dbed1f4a[4]),
    .o(al_3986a1c7));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*~A)"),
    .INIT(16'h0001))
    al_a4d21b (
    .a(al_53412fa1[2]),
    .b(al_53412fa1[3]),
    .c(al_53412fa1[4]),
    .d(al_53412fa1[5]),
    .o(al_2d3bd04d));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_3142e587 (
    .a(al_53412fa1[0]),
    .b(al_53412fa1[1]),
    .o(al_f7a0bba8));
  AL_DFF_X al_a7880780 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_68c31110),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_53412fa1[3]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_bc95a66a (
    .a(al_2d3bd04d),
    .b(al_f7a0bba8),
    .o(al_12ffa234));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_ce3f4fce (
    .a(al_e3e0848b[2]),
    .b(al_e3e0848b[3]),
    .o(al_9f0f8226));
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*~A)"),
    .INIT(8'h01))
    al_63033064 (
    .a(al_53412fa1[3]),
    .b(al_53412fa1[4]),
    .c(al_53412fa1[5]),
    .o(al_2f1b008));
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    al_7956997f (
    .a(al_2f1b008),
    .b(al_f7a0bba8),
    .c(al_53412fa1[2]),
    .o(al_355480f2));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    al_c9f2dd65 (
    .a(al_e3e0848b[2]),
    .b(al_e3e0848b[3]),
    .o(al_706eedd7));
  AL_DFF_X al_7a3969e5 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_7db16024),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_53412fa1[4]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_3a7a1b95 (
    .a(al_3d37ea1b),
    .b(al_706eedd7),
    .o(al_ef7fbaed));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_9ab66727 (
    .a(al_5294bf77),
    .b(al_c0ae55ee),
    .o(al_d9ce094e));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*B*A)"),
    .INIT(16'h0008))
    al_ca98258a (
    .a(al_2f1b008),
    .b(al_53412fa1[0]),
    .c(al_53412fa1[1]),
    .d(al_53412fa1[2]),
    .o(al_a1f8756e));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*A)"),
    .INIT(16'h0002))
    al_35a276c5 (
    .a(al_3986a1c7),
    .b(al_dbed1f4a[1]),
    .c(al_dbed1f4a[2]),
    .d(al_dbed1f4a[5]),
    .o(al_861641df));
  AL_MAP_LUT5 #(
    .EQN("(E*D*C*B*A)"),
    .INIT(32'h80000000))
    al_5429fb3b (
    .a(al_dbed1f4a[1]),
    .b(al_dbed1f4a[2]),
    .c(al_dbed1f4a[3]),
    .d(al_dbed1f4a[4]),
    .e(al_dbed1f4a[5]),
    .o(al_b9247c23));
  AL_MAP_LUT4 #(
    .EQN("(C*(B*~(A)*~(D)+B*A*~(D)+~(B)*A*D+B*A*D))"),
    .INIT(16'ha0c0))
    al_a9805c1 (
    .a(al_861641df),
    .b(al_b9247c23),
    .c(al_1486f657),
    .d(al_dbed1f4a[0]),
    .o(al_a29c03e3));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    al_94269bee (
    .a(al_53412fa1[0]),
    .b(al_53412fa1[1]),
    .o(al_581b19be));
  AL_DFF_X al_b70df1 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2e7aa1c1),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_53412fa1[5]));
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    al_51d0683c (
    .a(al_2f1b008),
    .b(al_581b19be),
    .c(al_53412fa1[2]),
    .o(al_1de4be18));
  AL_MAP_LUT5 #(
    .EQN("(A*~(D*(C*~(B)*~(E)+C*B*~(E)+~(C)*B*E+C*B*E)))"),
    .INIT(32'h22aa0aaa))
    al_ea3733e8 (
    .a(al_1de4be18),
    .b(al_861641df),
    .c(al_b9247c23),
    .d(al_1486f657),
    .e(al_dbed1f4a[0]),
    .o(al_d5b01b6e));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*B*~A)"),
    .INIT(16'h0004))
    al_83436671 (
    .a(al_e3e0848b[0]),
    .b(al_e3e0848b[1]),
    .c(al_e3e0848b[2]),
    .d(al_e3e0848b[3]),
    .o(al_12c01001));
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*A)"),
    .INIT(8'h02))
    al_7bba45c8 (
    .a(al_53412fa1[3]),
    .b(al_53412fa1[4]),
    .c(al_53412fa1[5]),
    .o(al_948d9abc));
  AL_MAP_LUT4 #(
    .EQN("(~D*C*B*A)"),
    .INIT(16'h0080))
    al_37196c1f (
    .a(al_948d9abc),
    .b(al_581b19be),
    .c(al_53412fa1[2]),
    .d(al_c0ae55ee),
    .o(al_ae0a8ab1));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_186da8ce (
    .a(al_2d3bd04d),
    .b(al_581b19be),
    .o(al_9103b859));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_a20e10c3 (
    .a(al_e3e0848b[0]),
    .b(al_e3e0848b[1]),
    .o(al_e7b69aab));
  AL_MAP_LUT5 #(
    .EQN("(~E*D*~C*B*~A)"),
    .INIT(32'h00000400))
    al_61e59e20 (
    .a(al_e3e0848b[0]),
    .b(al_e3e0848b[1]),
    .c(al_e3e0848b[2]),
    .d(al_e3e0848b[3]),
    .e(al_c0ae55ee),
    .o(al_d9396682));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    al_be8b1f66 (
    .a(al_53412fa1[0]),
    .b(al_53412fa1[1]),
    .o(al_5f9dd260));
  AL_MAP_LUT4 #(
    .EQN("(~(D@B)*~(C@A))"),
    .INIT(16'h8421))
    al_d4a0cca0 (
    .a(al_c8d7daaf[3]),
    .b(al_c8d7daaf[6]),
    .c(al_2339cbd5[6]),
    .d(al_2339cbd5[9]),
    .o(al_f46378cf));
  AL_MAP_LUT3 #(
    .EQN("(A*~(C@B))"),
    .INIT(8'h82))
    al_97741678 (
    .a(al_f46378cf),
    .b(al_c8d7daaf[12]),
    .c(al_2339cbd5[15]),
    .o(al_4bcecde6));
  AL_MAP_LUT4 #(
    .EQN("(~(D@B)*~(C@A))"),
    .INIT(16'h8421))
    al_58e159c1 (
    .a(al_c8d7daaf[8]),
    .b(al_c8d7daaf[13]),
    .c(al_2339cbd5[11]),
    .d(al_2339cbd5[16]),
    .o(al_e092bc0c));
  AL_MAP_LUT4 #(
    .EQN("(~(D@B)*~(C@A))"),
    .INIT(16'h8421))
    al_28b9ebc1 (
    .a(al_c8d7daaf[1]),
    .b(al_c8d7daaf[7]),
    .c(al_2339cbd5[4]),
    .d(al_2339cbd5[10]),
    .o(al_83a7613a));
  AL_MAP_LUT2 #(
    .EQN("~(B@A)"),
    .INIT(4'h9))
    al_18610f9c (
    .a(al_c8d7daaf[10]),
    .b(al_2339cbd5[13]),
    .o(al_a24ddb7f));
  AL_MAP_LUT2 #(
    .EQN("~(B@A)"),
    .INIT(4'h9))
    al_acc56e46 (
    .a(al_c8d7daaf[0]),
    .b(al_2339cbd5[3]),
    .o(al_cf81366));
  AL_MAP_LUT5 #(
    .EQN("(E*D*C*B*A)"),
    .INIT(32'h80000000))
    al_39f71190 (
    .a(al_4bcecde6),
    .b(al_e092bc0c),
    .c(al_83a7613a),
    .d(al_a24ddb7f),
    .e(al_cf81366),
    .o(al_75c5858c));
  AL_MAP_LUT4 #(
    .EQN("(~(D@B)*~(C@A))"),
    .INIT(16'h8421))
    al_1faae4bb (
    .a(al_c8d7daaf[11]),
    .b(al_c8d7daaf[14]),
    .c(al_2339cbd5[14]),
    .d(al_2339cbd5[17]),
    .o(al_5ca421ff));
  AL_MAP_LUT4 #(
    .EQN("(~(D@B)*~(C@A))"),
    .INIT(16'h8421))
    al_3cc77f10 (
    .a(al_c8d7daaf[4]),
    .b(al_c8d7daaf[9]),
    .c(al_2339cbd5[7]),
    .d(al_2339cbd5[12]),
    .o(al_d74756cf));
  AL_DFF_X al_7b8b3484 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_fb87f98b),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_deee15b7[0]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_8031d808 (
    .a(al_b002fed8),
    .b(al_35747f18),
    .o(al_f94476b3));
  AL_MAP_LUT4 #(
    .EQN("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .INIT(16'h3120))
    al_a4955c09 (
    .a(al_f94476b3),
    .b(al_8e707a3),
    .c(al_2339cbd5[3]),
    .d(al_deee15b7[3]),
    .o(al_3906fe3c));
  AL_MAP_LUT4 #(
    .EQN("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .INIT(16'h3120))
    al_619adead (
    .a(al_f94476b3),
    .b(al_8e707a3),
    .c(al_2339cbd5[0]),
    .d(al_deee15b7[0]),
    .o(al_fb87f98b));
  AL_MAP_LUT4 #(
    .EQN("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .INIT(16'h3120))
    al_e51ef5ef (
    .a(al_f94476b3),
    .b(al_8e707a3),
    .c(al_2339cbd5[1]),
    .d(al_deee15b7[1]),
    .o(al_215183d4));
  AL_MAP_LUT4 #(
    .EQN("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .INIT(16'h3120))
    al_81c11209 (
    .a(al_f94476b3),
    .b(al_8e707a3),
    .c(al_2339cbd5[2]),
    .d(al_deee15b7[2]),
    .o(al_fcfa95d1));
  AL_DFF_X al_8de574d2 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_215183d4),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_deee15b7[1]));
  AL_DFF_X al_218c3437 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_fcfa95d1),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_deee15b7[2]));
  AL_DFF_X al_2289bd15 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_3906fe3c),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_deee15b7[3]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_fb4d065e (
    .a(al_1deeb789),
    .b(al_706eedd7),
    .o(al_d6880fcd));
  AL_MAP_LUT4 #(
    .EQN("(~D*~(~C*~B*~A))"),
    .INIT(16'h00fe))
    al_db03264a (
    .a(al_f03c332d),
    .b(al_b002fed8),
    .c(al_d05fa8bb),
    .d(al_ffbda4d7),
    .o(al_a77c54eb));
  AL_MAP_LUT4 #(
    .EQN("(~D*C*B*A)"),
    .INIT(16'h0080))
    al_5e6b1a1b (
    .a(al_f4d3e003),
    .b(al_225e6daf),
    .c(al_54aad2a7),
    .d(al_c0ae55ee),
    .o(al_f101a507));
  AL_MAP_LUT4 #(
    .EQN("(~D*~(~A*~(C*B)))"),
    .INIT(16'h00ea))
    al_50beadac (
    .a(al_a77c54eb),
    .b(al_cfc0aaa6),
    .c(al_f101a507),
    .d(al_725282a9),
    .o(al_7cae906d));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_de40367c (
    .a(al_538866b5),
    .b(al_3d37ea1b),
    .o(al_1be58835));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_e3a1fa17 (
    .a(al_d5b01b6e),
    .b(al_1be58835),
    .o(al_b002fed8));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_f36b315a (
    .a(al_a29c03e3),
    .b(al_12c01001),
    .o(al_f4d3e003));
  AL_MAP_LUT3 #(
    .EQN("(~C*B*A)"),
    .INIT(8'h08))
    al_49b61a32 (
    .a(al_7857d91e),
    .b(al_d187bcb1),
    .c(al_53412fa1[5]),
    .o(al_225e6daf));
  AL_MAP_LUT3 #(
    .EQN("(A*~(~C*~B))"),
    .INIT(8'ha8))
    al_4d3ccc4f (
    .a(al_f4d3e003),
    .b(al_ae0a8ab1),
    .c(al_225e6daf),
    .o(al_f03c332d));
  AL_MAP_LUT4 #(
    .EQN("(C*~A*~(~D*~B))"),
    .INIT(16'h5040))
    al_30c90b7d (
    .a(al_a29c03e3),
    .b(al_ca1ecb12),
    .c(al_d6880fcd),
    .d(al_9cdefbbc),
    .o(al_d05fa8bb));
  AL_DFF_X al_ac20a769 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_7cae906d),
    .en(al_35747f18),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_6a27e63));
  AL_DFF_X al_18d2e1bb (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_6a27e63),
    .en(1'b1),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_6c6a3b70));
  AL_DFF_X al_6a6283ff (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_e248fd0),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_a32003b9));
  AL_MAP_LUT3 #(
    .EQN("(C*B*~A)"),
    .INIT(8'h40))
    al_c286125d (
    .a(al_ffbda4d7),
    .b(al_725282a9),
    .c(al_35747f18),
    .o(al_73053f81));
  AL_MAP_LUT4 #(
    .EQN("(~C*(D@(B*A)))"),
    .INIT(16'h0708))
    al_d7f0ea6b (
    .a(al_f03c332d),
    .b(al_73053f81),
    .c(al_8e707a3),
    .d(al_a32003b9),
    .o(al_e248fd0));
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    al_7183192f (
    .a(al_1048e296),
    .b(al_3fd18196),
    .c(al_84f88b7d),
    .o(al_9c2c7a46));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    al_103d44d9 (
    .a(al_513770c2),
    .b(al_1cee29b0),
    .o(al_6eee4106));
  AL_DFF_X al_d331be37 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_1c8bb97d),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_1123635a));
  AL_MAP_LUT4 #(
    .EQN("(~B*(C@(D*A)))"),
    .INIT(16'h1230))
    al_270dde97 (
    .a(al_c766f9d9),
    .b(al_8e707a3),
    .c(al_1123635a),
    .d(al_35747f18),
    .o(al_1c8bb97d));
  AL_DFF_X al_8abcc4c6 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_1cee29b0),
    .en(1'b1),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_f06e24ce));
  AL_DFF_X al_72ecbc7c (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_a9cb67e2),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_7536f474));
  AL_MAP_LUT4 #(
    .EQN("(~B*~(~C*~(A)*~(D)+~C*A*~(D)+~(~C)*A*D+~C*A*D))"),
    .INIT(16'h1130))
    al_7121a7b0 (
    .a(al_f3bdb3a9),
    .b(al_8e707a3),
    .c(al_7536f474),
    .d(al_fb2f48d1),
    .o(al_a9cb67e2));
  AL_DFF_X al_649171e4 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_cb8893),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_54aad2a7));
  AL_MAP_LUT4 #(
    .EQN("(~B*~(~C*~(A)*~(D)+~C*A*~(D)+~(~C)*A*D+~C*A*D))"),
    .INIT(16'h1130))
    al_7ec278b3 (
    .a(al_caeda5fd),
    .b(al_8e707a3),
    .c(al_54aad2a7),
    .d(al_fb2f48d1),
    .o(al_cb8893));
  AL_DFF_X al_c92cdf56 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_1442f340),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_5294bf77));
  AL_MAP_LUT3 #(
    .EQN("(A*~(C*B))"),
    .INIT(8'h2a))
    al_d1809964 (
    .a(al_846b1538),
    .b(al_da3979c2),
    .c(al_5294bf77),
    .o(al_797410fb));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_dc53a6b1 (
    .a(al_36e8dc43),
    .b(al_b7c06e8),
    .o(al_1b48393e));
  AL_MAP_LUT4 #(
    .EQN("(B*~(~A*~(D*C)))"),
    .INIT(16'hc888))
    al_1e94b738 (
    .a(al_c22565b8),
    .b(al_538866b5),
    .c(al_7e07b9ca),
    .d(al_c0ae55ee),
    .o(al_bee503d));
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    al_82dbcf28 (
    .a(al_8d031e0e),
    .b(al_1deeb789),
    .c(al_17bcd7d3),
    .d(al_c0ae55ee),
    .o(al_ad8c7a1));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*~A)"),
    .INIT(16'h0001))
    al_5738d3b1 (
    .a(al_1b48393e),
    .b(al_797410fb),
    .c(al_bee503d),
    .d(al_ad8c7a1),
    .o(al_dfd92c0d));
  AL_MAP_LUT4 #(
    .EQN("(D*~C*~B*~A)"),
    .INIT(16'h0100))
    al_96356ccb (
    .a(al_dfd92c0d),
    .b(al_3fd18196),
    .c(al_2d3bbb90),
    .d(al_35747f18),
    .o(al_49200b4));
  AL_MAP_LUT4 #(
    .EQN("(D*C*~B*A)"),
    .INIT(16'h2000))
    al_f99918 (
    .a(al_cfc0aaa6),
    .b(al_c477a09c),
    .c(al_12c01001),
    .d(al_e96a7ab0),
    .o(al_daee23cd));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_50cd14f2 (
    .a(al_daee23cd),
    .b(al_35747f18),
    .o(al_85197052));
  AL_MAP_LUT3 #(
    .EQN("(A*~(C*~B))"),
    .INIT(8'h8a))
    al_d6707ca (
    .a(al_49200b4),
    .b(al_e3e0848b[2]),
    .c(al_e3e0848b[3]),
    .o(al_70bcf2f3));
  AL_MAP_LUT4 #(
    .EQN("(C*~(~B*~(~D*A)))"),
    .INIT(16'hc0e0))
    al_1f243430 (
    .a(al_5dc95721),
    .b(al_ad8c7a1),
    .c(al_2d3bbb90),
    .d(al_2d4a447c),
    .o(al_afe826c1));
  AL_MAP_LUT4 #(
    .EQN("(D*~(~A*~(C*B)))"),
    .INIT(16'hea00))
    al_27f94732 (
    .a(al_afe826c1),
    .b(al_1b48393e),
    .c(al_2d3bbb90),
    .d(al_35747f18),
    .o(al_47fcc118));
  AL_MAP_LUT5 #(
    .EQN("(D*~C*~(E*~(~B*~A)))"),
    .INIT(32'h01000f00))
    al_44e33bdc (
    .a(al_1981dbfd),
    .b(al_846b1538),
    .c(al_8e707a3),
    .d(al_5294bf77),
    .e(al_35747f18),
    .o(al_f148793b));
  AL_MAP_LUT4 #(
    .EQN("~(~C*~B*~(D*~A))"),
    .INIT(16'hfdfc))
    al_af07f62 (
    .a(al_85197052),
    .b(al_70bcf2f3),
    .c(al_47fcc118),
    .d(al_f148793b),
    .o(al_1442f340));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_e3aeb9e3 (
    .a(al_585793db),
    .b(al_f9b9d8be),
    .o(al_3fd18196));
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    al_9720702f (
    .a(al_12ffa234),
    .b(al_1deeb789),
    .c(al_9f0f8226),
    .o(al_5dc95721));
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    al_de18f4d7 (
    .a(al_a1f8756e),
    .b(al_1deeb789),
    .c(al_9f0f8226),
    .d(al_c0ae55ee),
    .o(al_846b1538));
  AL_DFF_X al_1ea51754 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_7a978a95),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_a779b5a8));
  AL_MAP_LUT4 #(
    .EQN("(~A*(D@(~C*B)))"),
    .INIT(16'h5104))
    al_60fa6ad6 (
    .a(al_8e707a3),
    .b(al_a12874af),
    .c(al_81ea5b1b),
    .d(al_a779b5a8),
    .o(al_7a978a95));
  AL_DFF_X al_7de7cf1 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_de87e673),
    .en(1'b1),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_de736a66));
  AL_DFF_X al_c92ffdda (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_de736a66),
    .en(1'b1),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_bbd67df));
  AL_DFF_X al_b3adaec1 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_bbd67df),
    .en(1'b1),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_b9089222));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_27e991e4 (
    .a(al_b0941661[2]),
    .b(1'b0),
    .c(al_d298757e),
    .o({al_6dee4a78,al_a82321a2[2]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_e61ff1d3 (
    .a(al_b0941661[3]),
    .b(1'b0),
    .c(al_6dee4a78),
    .o({al_7b2292f9,al_a82321a2[3]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_c0ec1d7c (
    .a(al_b0941661[4]),
    .b(1'b0),
    .c(al_7b2292f9),
    .o({al_eec99b85,al_a82321a2[4]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_6fac4306 (
    .a(al_b0941661[5]),
    .b(1'b0),
    .c(al_eec99b85),
    .o({al_167c7e95,al_a82321a2[5]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_6bccb7cf (
    .a(al_b0941661[6]),
    .b(1'b0),
    .c(al_167c7e95),
    .o({al_84fc95be,al_a82321a2[6]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_4b116ed (
    .a(al_b0941661[7]),
    .b(1'b0),
    .c(al_84fc95be),
    .o({open_n82,al_a82321a2[7]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    al_68baad03 (
    .a(1'b0),
    .o({al_dec39099,open_n85}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_ccd6bc01 (
    .a(al_b0941661[0]),
    .b(1'b1),
    .c(al_dec39099),
    .o({al_25924551,al_a82321a2[0]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_ab163835 (
    .a(al_b0941661[1]),
    .b(1'b0),
    .c(al_25924551),
    .o({al_d298757e,al_a82321a2[1]}));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    al_38daff92 (
    .a(al_393235c7[7]),
    .b(al_8e707a3),
    .o(al_1c654c99[0]));
  AL_MAP_LUT4 #(
    .EQN("(A*~(B)*~((D*C))+~(A)*B*~((D*C))+A*~(B)*(D*C))"),
    .INIT(16'h2666))
    al_5d285426 (
    .a(al_31057df8[0]),
    .b(al_393235c7[4]),
    .c(al_393235c7[5]),
    .d(al_393235c7[6]),
    .o(al_d6a02de7));
  AL_MAP_LUT5 #(
    .EQN("(A*~(D*(E@C@B)))"),
    .INIT(32'h28aa82aa))
    al_fbccda62 (
    .a(al_6503a531),
    .b(al_f4d349c2),
    .c(al_31057df8[2]),
    .d(al_d6a02de7),
    .e(al_393235c7[6]),
    .o(al_214132aa));
  AL_MAP_LUT3 #(
    .EQN("(~A*~(~C*~B))"),
    .INIT(8'h54))
    al_63f65ac1 (
    .a(al_214132aa),
    .b(al_eb0a610b),
    .c(al_28c82be3),
    .o(al_967f46f4));
  AL_MAP_LUT5 #(
    .EQN("(A*~(C)*~(D)*~((E@B))+~(A)*C*~(D)*~((E@B))+A*C*~(D)*~((E@B))+~(A)*~(C)*D*~((E@B))+A*C*D*~((E@B))+~(A)*~(C)*~(D)*(E@B)+A*~(C)*~(D)*(E@B)+~(A)*C*~(D)*(E@B)+~(A)*~(C)*D*(E@B)+A*~(C)*D*(E@B)+~(A)*C*D*(E@B)+A*C*D*(E@B))"),
    .INIT(32'hb7dbed7e))
    al_b447845 (
    .a(al_4b9103aa),
    .b(al_c355151b[4]),
    .c(al_c355151b[3]),
    .d(al_5be243[3]),
    .e(al_5be243[4]),
    .o(al_c39e83d1));
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*~A)"),
    .INIT(8'h01))
    al_9bb2798c (
    .a(al_b091f9f9),
    .b(al_fdd97a53),
    .c(al_a574bab9),
    .o(al_caeda5fd));
  AL_MAP_LUT4 #(
    .EQN("(B*(~(A)*C*~(D)+A*~(C)*D))"),
    .INIT(16'h0840))
    al_d6a472e2 (
    .a(al_25882c89),
    .b(al_b3ae1801),
    .c(al_c355151b[1]),
    .d(al_5be243[1]),
    .o(al_140b5d24));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    al_6e8cde67 (
    .a(al_393235c7[7]),
    .b(al_8e707a3),
    .o(al_31057df8[0]));
  AL_MAP_LUT4 #(
    .EQN("(~D*~(C*~B*A))"),
    .INIT(16'h00df))
    al_78ef988e (
    .a(al_967f46f4),
    .b(al_c39e83d1),
    .c(al_140b5d24),
    .d(al_4e71988a),
    .o(al_f53e5b0a));
  AL_MAP_LUT5 #(
    .EQN("(~A*~(E*~(~B*~(~D*C))))"),
    .INIT(32'h11015555))
    al_93e46d18 (
    .a(al_787e0126),
    .b(al_eb0a610b),
    .c(al_28c82be3),
    .d(al_62119108),
    .e(al_6c88833b),
    .o(al_f743c315));
  AL_MAP_LUT3 #(
    .EQN("(A*~(C*~B))"),
    .INIT(8'h8a))
    al_57f5e410 (
    .a(al_f53e5b0a),
    .b(al_f743c315),
    .c(al_928dbd8a),
    .o(al_a63bac0c));
  AL_MAP_LUT3 #(
    .EQN("~(~C*~(B)*~(A)+~C*B*~(A)+~(~C)*B*A+~C*B*A)"),
    .INIT(8'h72))
    al_62193baa (
    .a(al_f53e5b0a),
    .b(al_f743c315),
    .c(al_7a009423),
    .o(al_eb450a8b));
  AL_MAP_LUT5 #(
    .EQN("(~(A)*~(B)*C*~(D)*~(E)+~(A)*B*~(C)*D*~(E)+A*B*~(C)*D*~(E)+~(A)*~(B)*C*D*~(E)+~(A)*~(B)*~(C)*~(D)*E+A*~(B)*~(C)*~(D)*E+~(A)*~(B)*C*~(D)*E+~(A)*B*C*~(D)*E+A*B*C*~(D)*E+~(A)*~(B)*~(C)*D*E+A*~(B)*~(C)*D*E+~(A)*B*~(C)*D*E+A*B*~(C)*D*E+~(A)*~(B)*C*D*E+~(A)*B*C*D*E+A*B*C*D*E)"),
    .INIT(32'hdfd31c10))
    al_3220f820 (
    .a(al_caeda5fd),
    .b(al_a63bac0c),
    .c(al_eb450a8b),
    .d(al_8278b4f6),
    .e(al_5081afcf),
    .o(al_d2af260d));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_40df09e8 (
    .a(al_1c654c99[0]),
    .b(al_393235c7[8]),
    .o(al_31057df8[2]));
  AL_MAP_LUT3 #(
    .EQN("(~C*(B@A))"),
    .INIT(8'h06))
    al_ba999e5e (
    .a(al_393235c7[7]),
    .b(al_393235c7[8]),
    .c(al_8e707a3),
    .o(al_31057df8[1]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_12d76ea9 (
    .a(al_c355151b[2]),
    .b(al_c355151b[1]),
    .o(al_4b9103aa));
  AL_MAP_LUT5 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)*~(E)+A*B*~(C)*~(D)*~(E)+~(A)*~(B)*C*~(D)*~(E)+A*~(B)*C*~(D)*~(E)+~(A)*B*C*~(D)*~(E)+A*~(B)*~(C)*D*~(E)+~(A)*B*~(C)*D*~(E)+A*B*~(C)*D*~(E)+A*~(B)*C*D*~(E)+~(A)*B*C*D*~(E)+A*B*C*D*~(E)+~(A)*~(B)*~(C)*~(D)*E+A*~(B)*~(C)*~(D)*E+~(A)*B*~(C)*~(D)*E+A*B*~(C)*~(D)*E+A*~(B)*C*~(D)*E+~(A)*B*C*~(D)*E+A*B*C*~(D)*E+~(A)*~(B)*~(C)*D*E+A*~(B)*~(C)*D*E+~(A)*B*~(C)*D*E+A*B*~(C)*D*E+~(A)*~(B)*C*D*E+A*~(B)*C*D*E+~(A)*B*C*D*E+A*B*C*D*E)"),
    .INIT(32'hffefee79))
    al_ce221c18 (
    .a(al_393235c7[4]),
    .b(al_393235c7[5]),
    .c(al_393235c7[8]),
    .d(al_8e707a3),
    .e(al_393235c7[6]),
    .o(al_6503a531));
  AL_MAP_LUT3 #(
    .EQN("(~(A)*~(B)*~(C)+~(A)*B*~(C)+A*B*~(C)+~(A)*~(B)*C+A*~(B)*C+A*B*C)"),
    .INIT(8'hbd))
    al_c96bd21b (
    .a(al_31057df8[1]),
    .b(al_393235c7[4]),
    .c(al_393235c7[5]),
    .o(al_f4d349c2));
  AL_DFF_X al_cb1ddff9 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_d2af260d),
    .en(al_84673a50),
    .sr(1'b0),
    .ss(al_8e707a3),
    .q(al_8278b4f6));
  AL_MAP_LUT4 #(
    .EQN("(~(D@B)*~(C@A))"),
    .INIT(16'h8421))
    al_1ddf302d (
    .a(al_9b1aea19[0]),
    .b(al_9b1aea19[6]),
    .c(al_b0941661[0]),
    .d(al_b0941661[6]),
    .o(al_5439e045));
  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    al_d04969b6 (
    .a(al_f321115),
    .b(al_8e707a3),
    .o(al_9b2723ca));
  AL_MAP_LUT3 #(
    .EQN("(A*~(C@B))"),
    .INIT(8'h82))
    al_901adfa1 (
    .a(al_5439e045),
    .b(al_9b1aea19[1]),
    .c(al_b0941661[1]),
    .o(al_8bc642aa));
  AL_MAP_LUT4 #(
    .EQN("(~(D@B)*~(C@A))"),
    .INIT(16'h8421))
    al_827baa2b (
    .a(al_9b1aea19[2]),
    .b(al_9b1aea19[7]),
    .c(al_b0941661[2]),
    .d(al_b0941661[7]),
    .o(al_85b20ad3));
  AL_MAP_LUT4 #(
    .EQN("(~(D@B)*~(C@A))"),
    .INIT(16'h8421))
    al_951ca68a (
    .a(al_9b1aea19[4]),
    .b(al_9b1aea19[5]),
    .c(al_b0941661[4]),
    .d(al_b0941661[5]),
    .o(al_f6896e61));
  AL_MAP_LUT5 #(
    .EQN("(C*B*A*~(E@D))"),
    .INIT(32'h80000080))
    al_d15b6ecc (
    .a(al_8bc642aa),
    .b(al_85b20ad3),
    .c(al_f6896e61),
    .d(al_9b1aea19[3]),
    .e(al_b0941661[3]),
    .o(al_f321115));
  AL_DFF_X al_7a11c73d (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_f321115),
    .en(1'b1),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_84673a50));
  AL_MAP_LUT1 #(
    .EQN("(~A)"),
    .INIT(2'h1))
    al_b5468945 (
    .a(al_c355151b[1]),
    .o(al_c54d0810[0]));
  AL_MAP_LUT2 #(
    .EQN("(B@A)"),
    .INIT(4'h6))
    al_3519f185 (
    .a(al_c355151b[2]),
    .b(al_c355151b[1]),
    .o(al_c54d0810[1]));
  AL_MAP_LUT2 #(
    .EQN("(B@A)"),
    .INIT(4'h6))
    al_c3217992 (
    .a(al_4b9103aa),
    .b(al_c355151b[3]),
    .o(al_c54d0810[2]));
  AL_MAP_LUT3 #(
    .EQN("~(~B*~(C*A))"),
    .INIT(8'hec))
    al_59bdce9b (
    .a(al_4b9103aa),
    .b(al_c355151b[4]),
    .c(al_c355151b[3]),
    .o(al_c54d0810[3]));
  AL_MAP_LUT4 #(
    .EQN("~((~C*A)*~(D)*~(B)+(~C*A)*D*~(B)+~((~C*A))*D*B+(~C*A)*D*B)"),
    .INIT(16'h31fd))
    al_902fe8c (
    .a(al_d7eed70a),
    .b(al_c124f224),
    .c(al_5be243[0]),
    .d(al_67d8ce5[0]),
    .o(al_746a2a10));
  AL_MAP_LUT4 #(
    .EQN("~(A*~(~B*~(D)*~(C)+~B*D*~(C)+~(~B)*D*C+~B*D*C))"),
    .INIT(16'hf757))
    al_f03d0def (
    .a(al_a676268a),
    .b(al_746a2a10),
    .c(al_5a4e8efb),
    .d(al_261227a1[0]),
    .o(al_a9c996b9[0]));
  AL_MAP_LUT5 #(
    .EQN("~((A*(D@C))*~(E)*~(B)+(A*(D@C))*E*~(B)+~((A*(D@C)))*E*B+(A*(D@C))*E*B)"),
    .INIT(32'h3113fddf))
    al_68afad5c (
    .a(al_d7eed70a),
    .b(al_c124f224),
    .c(al_5be243[0]),
    .d(al_5be243[1]),
    .e(al_67d8ce5[1]),
    .o(al_21a3be61));
  AL_MAP_LUT4 #(
    .EQN("(A*(~B*~(D)*~(C)+~B*D*~(C)+~(~B)*D*C+~B*D*C))"),
    .INIT(16'ha202))
    al_72cf0d3e (
    .a(al_a676268a),
    .b(al_21a3be61),
    .c(al_5a4e8efb),
    .d(al_261227a1[1]),
    .o(al_a9c996b9[1]));
  AL_MAP_LUT4 #(
    .EQN("(A*(D@(C*B)))"),
    .INIT(16'h2a80))
    al_e4cc9768 (
    .a(al_d7eed70a),
    .b(al_5be243[0]),
    .c(al_5be243[1]),
    .d(al_5be243[2]),
    .o(al_c857d0ec));
  AL_MAP_LUT3 #(
    .EQN("~(A*~(C)*~(B)+A*C*~(B)+~(A)*C*B+A*C*B)"),
    .INIT(8'h1d))
    al_79ad6e54 (
    .a(al_c857d0ec),
    .b(al_c124f224),
    .c(al_67d8ce5[2]),
    .o(al_acf01f3f));
  AL_MAP_LUT4 #(
    .EQN("(A*(~B*~(D)*~(C)+~B*D*~(C)+~(~B)*D*C+~B*D*C))"),
    .INIT(16'ha202))
    al_e04a4193 (
    .a(al_a676268a),
    .b(al_acf01f3f),
    .c(al_5a4e8efb),
    .d(al_261227a1[2]),
    .o(al_a9c996b9[2]));
  AL_MAP_LUT4 #(
    .EQN("(~(D@B)*~(C@A))"),
    .INIT(16'h8421))
    al_1081a9bf (
    .a(al_5be243[3]),
    .b(al_5be243[4]),
    .c(al_4965734[3]),
    .d(al_4965734[4]),
    .o(al_763fe890));
  AL_MAP_LUT3 #(
    .EQN("(~A*~(C*B))"),
    .INIT(8'h15))
    al_73cb3b0b (
    .a(al_787e0126),
    .b(al_28c82be3),
    .c(al_23f39cbc),
    .o(al_d7eed70a));
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    al_1c412d8e (
    .a(al_5be243[0]),
    .b(al_5be243[1]),
    .c(al_5be243[2]),
    .o(al_b25e0fc1));
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    al_7b4df1de (
    .a(al_28c82be3),
    .b(al_23f39cbc),
    .c(al_62119108),
    .o(al_c124f224));
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*A)"),
    .INIT(8'h02))
    al_85c5a8f5 (
    .a(al_28c82be3),
    .b(al_23f39cbc),
    .c(al_91e030f1),
    .o(al_5a4e8efb));
  AL_MAP_LUT5 #(
    .EQN("~((A*(D@C))*~(E)*~(B)+(A*(D@C))*E*~(B)+~((A*(D@C)))*E*B+(A*(D@C))*E*B)"),
    .INIT(32'h3113fddf))
    al_50989e84 (
    .a(al_d7eed70a),
    .b(al_c124f224),
    .c(al_b25e0fc1),
    .d(al_5be243[3]),
    .e(al_67d8ce5[3]),
    .o(al_c441396d));
  AL_MAP_LUT4 #(
    .EQN("(A*(~B*~(D)*~(C)+~B*D*~(C)+~(~B)*D*C+~B*D*C))"),
    .INIT(16'ha202))
    al_dbbdf95c (
    .a(al_a676268a),
    .b(al_c441396d),
    .c(al_5a4e8efb),
    .d(al_261227a1[3]),
    .o(al_a9c996b9[3]));
  AL_MAP_LUT4 #(
    .EQN("(~(D@B)*~(C@A))"),
    .INIT(16'h8421))
    al_82f33aa3 (
    .a(al_5be243[0]),
    .b(al_5be243[2]),
    .c(al_4965734[0]),
    .d(al_4965734[2]),
    .o(al_c4491240));
  AL_MAP_LUT4 #(
    .EQN("(B*A*~(D@C))"),
    .INIT(16'h8008))
    al_28191aa7 (
    .a(al_763fe890),
    .b(al_c4491240),
    .c(al_5be243[1]),
    .d(al_4965734[1]),
    .o(al_e39dd6ff));
  AL_MAP_LUT5 #(
    .EQN("~((D*~A)*~((~E*~B))*~(C)+(D*~A)*(~E*~B)*~(C)+~((D*~A))*(~E*~B)*C+(D*~A)*(~E*~B)*C)"),
    .INIT(32'hfaffcacf))
    al_fffc7f83 (
    .a(al_2a5461d4),
    .b(al_e39dd6ff),
    .c(al_23f39cbc),
    .d(al_91e030f1),
    .e(al_62119108),
    .o(al_3ba2af1c));
  AL_MAP_LUT3 #(
    .EQN("(~B*~(C*~A))"),
    .INIT(8'h23))
    al_5c3afb69 (
    .a(al_3ba2af1c),
    .b(al_eb0a610b),
    .c(al_28c82be3),
    .o(al_a676268a));
  AL_MAP_LUT4 #(
    .EQN("(A*(D@(C*B)))"),
    .INIT(16'h2a80))
    al_b3f3a8fd (
    .a(al_d7eed70a),
    .b(al_b25e0fc1),
    .c(al_5be243[3]),
    .d(al_5be243[4]),
    .o(al_cabf9095));
  AL_MAP_LUT3 #(
    .EQN("~(A*~(C)*~(B)+A*C*~(B)+~(A)*C*B+A*C*B)"),
    .INIT(8'h1d))
    al_d6af7d53 (
    .a(al_cabf9095),
    .b(al_c124f224),
    .c(al_67d8ce5[4]),
    .o(al_9939505d));
  AL_MAP_LUT4 #(
    .EQN("(A*(~B*~(D)*~(C)+~B*D*~(C)+~(~B)*D*C+~B*D*C))"),
    .INIT(16'ha202))
    al_4d436bd5 (
    .a(al_a676268a),
    .b(al_9939505d),
    .c(al_5a4e8efb),
    .d(al_261227a1[4]),
    .o(al_a9c996b9[4]));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    al_a049922b (
    .a(1'b1),
    .o({al_d743da62,open_n88}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_3157b17e (
    .a(al_5be243[0]),
    .b(al_31057df8[0]),
    .c(al_d743da62),
    .o({al_d3015eb5,al_67d8ce5[0]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_1e1fc40f (
    .a(al_5be243[1]),
    .b(al_31057df8[1]),
    .c(al_d3015eb5),
    .o({al_5b5a6e16,al_67d8ce5[1]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_b7819254 (
    .a(al_5be243[2]),
    .b(al_31057df8[2]),
    .c(al_5b5a6e16),
    .o({al_8d9dcc29,al_67d8ce5[2]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_fc14b47b (
    .a(al_5be243[3]),
    .b(1'b0),
    .c(al_8d9dcc29),
    .o({al_87e0667d,al_67d8ce5[3]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    al_544c2e86 (
    .a(al_5be243[4]),
    .b(1'b0),
    .c(al_87e0667d),
    .o({open_n89,al_67d8ce5[4]}));
  AL_DFF_X al_42d87fa9 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_f9cd10eb),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_cb7e5089));
  AL_MAP_LUT4 #(
    .EQN("(~D*(C@(B*A)))"),
    .INIT(16'h0078))
    al_f8fe5880 (
    .a(al_b850157e[1]),
    .b(al_b850157e[2]),
    .c(al_b850157e[3]),
    .d(al_8e707a3),
    .o(al_9d0466fd[3]));
  AL_MAP_LUT3 #(
    .EQN("(A*~(C@B))"),
    .INIT(8'h82))
    al_841cd2b6 (
    .a(al_f9f6ffab),
    .b(al_c8d7daaf[5]),
    .c(al_2339cbd5[6]),
    .o(al_a16e446b));
  AL_MAP_LUT4 #(
    .EQN("(~(D@B)*~(C@A))"),
    .INIT(16'h8421))
    al_8c26e6b2 (
    .a(al_c8d7daaf[0]),
    .b(al_c8d7daaf[13]),
    .c(al_2339cbd5[1]),
    .d(al_2339cbd5[14]),
    .o(al_eb717904));
  AL_MAP_LUT4 #(
    .EQN("(B*A*~(D@C))"),
    .INIT(16'h8008))
    al_a3679860 (
    .a(al_a16e446b),
    .b(al_eb717904),
    .c(al_c8d7daaf[8]),
    .d(al_2339cbd5[9]),
    .o(al_4a1f306a));
  AL_MAP_LUT4 #(
    .EQN("(~(D@B)*~(C@A))"),
    .INIT(16'h8421))
    al_65afe643 (
    .a(al_c8d7daaf[1]),
    .b(al_c8d7daaf[9]),
    .c(al_2339cbd5[2]),
    .d(al_2339cbd5[10]),
    .o(al_fc7cfcff));
  AL_MAP_LUT3 #(
    .EQN("(A*~(C@B))"),
    .INIT(8'h82))
    al_bddbbf6 (
    .a(al_fc7cfcff),
    .b(al_c8d7daaf[6]),
    .c(al_2339cbd5[7]),
    .o(al_75a38b4f));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_70018474 (
    .a(al_538866b5),
    .b(al_7e07b9ca),
    .o(al_1048e296));
  AL_MAP_LUT4 #(
    .EQN("(~(D@B)*~(C@A))"),
    .INIT(16'h8421))
    al_8b297001 (
    .a(al_c8d7daaf[2]),
    .b(al_c8d7daaf[12]),
    .c(al_2339cbd5[3]),
    .d(al_2339cbd5[13]),
    .o(al_44b9e64b));
  AL_MAP_LUT4 #(
    .EQN("(B*A*~(D@C))"),
    .INIT(16'h8008))
    al_4e685cd0 (
    .a(al_75a38b4f),
    .b(al_44b9e64b),
    .c(al_c8d7daaf[11]),
    .d(al_2339cbd5[12]),
    .o(al_b9d2100f));
  AL_MAP_LUT5 #(
    .EQN("(~C*B*A*~(E@D))"),
    .INIT(32'h08000008))
    al_96ad9928 (
    .a(al_9103b859),
    .b(al_e7b69aab),
    .c(al_ffbda4d7),
    .d(al_c8d7daaf[14]),
    .e(al_2339cbd5[15]),
    .o(al_88e48492));
  AL_MAP_LUT4 #(
    .EQN("(~(D@B)*~(C@A))"),
    .INIT(16'h8421))
    al_7b919c83 (
    .a(al_c8d7daaf[3]),
    .b(al_c8d7daaf[4]),
    .c(al_2339cbd5[4]),
    .d(al_2339cbd5[5]),
    .o(al_57ab269e));
  AL_MAP_LUT5 #(
    .EQN("(E*~(D*C*B*A))"),
    .INIT(32'h7fff0000))
    al_f0aa8147 (
    .a(al_4a1f306a),
    .b(al_b9d2100f),
    .c(al_88e48492),
    .d(al_57ab269e),
    .e(al_706eedd7),
    .o(al_69af7ded));
  AL_MAP_LUT5 #(
    .EQN("(~E*(D@(C*B*A)))"),
    .INIT(32'h00007f80))
    al_2a0373de (
    .a(al_b850157e[1]),
    .b(al_b850157e[2]),
    .c(al_b850157e[3]),
    .d(al_185d4eb8),
    .e(al_8e707a3),
    .o(al_9d0466fd[4]));
  AL_MAP_LUT4 #(
    .EQN("(C*~(A*~(D*~B)))"),
    .INIT(16'h7050))
    al_e087d096 (
    .a(al_268df1dd),
    .b(al_73dfca95),
    .c(al_69af7ded),
    .d(al_1c30b794),
    .o(al_fdd97a53));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    al_3ed45da2 (
    .a(al_a4a9297a),
    .b(al_7e07b9ca),
    .c(al_e3e0848b[3]),
    .o(al_a574bab9));
  AL_MAP_LUT4 #(
    .EQN("(~(C@B)*~(D@A))"),
    .INIT(16'h8241))
    al_483b834c (
    .a(al_9d0466fd[3]),
    .b(al_9d0466fd[2]),
    .c(al_5be243[2]),
    .d(al_5be243[3]),
    .o(al_7cf11de1));
  AL_MAP_LUT4 #(
    .EQN("(~(D@B)*~(C@A))"),
    .INIT(16'h8421))
    al_d35e8714 (
    .a(al_9d0466fd[0]),
    .b(al_9d0466fd[1]),
    .c(al_5be243[0]),
    .d(al_5be243[1]),
    .o(al_815e259));
  AL_MAP_LUT4 #(
    .EQN("(B*A*~(D@C))"),
    .INIT(16'h8008))
    al_e8f524b3 (
    .a(al_7cf11de1),
    .b(al_815e259),
    .c(al_9d0466fd[4]),
    .d(al_5be243[4]),
    .o(al_787e0126));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*A)"),
    .INIT(16'h0002))
    al_33612b06 (
    .a(al_3986a1c7),
    .b(al_dbed1f4a[0]),
    .c(al_dbed1f4a[1]),
    .d(al_dbed1f4a[2]),
    .o(al_310945e3));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*~A)"),
    .INIT(16'h0001))
    al_2f9d91f0 (
    .a(al_9b1aea19[4]),
    .b(al_9b1aea19[5]),
    .c(al_9b1aea19[6]),
    .d(al_9b1aea19[7]),
    .o(al_a41b6cc7));
  AL_MAP_LUT5 #(
    .EQN("(~E*~D*~C*~B*A)"),
    .INIT(32'h00000002))
    al_98252f73 (
    .a(al_a41b6cc7),
    .b(al_9b1aea19[0]),
    .c(al_9b1aea19[1]),
    .d(al_9b1aea19[2]),
    .e(al_9b1aea19[3]),
    .o(al_7a009423));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*B*A)"),
    .INIT(16'h0008))
    al_5c9d91d1 (
    .a(al_7a009423),
    .b(al_393235c7[4]),
    .c(al_393235c7[5]),
    .d(al_393235c7[6]),
    .o(al_928dbd8a));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    al_fac5d4d3 (
    .a(al_787e0126),
    .b(al_5081afcf),
    .o(al_dd86194c));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    al_fd81a78b (
    .a(al_dd86194c),
    .b(al_eb0a610b),
    .o(al_460d7ea8));
  AL_MAP_LUT5 #(
    .EQN("(E*D*C*B*A)"),
    .INIT(32'h80000000))
    al_45d9aff (
    .a(al_dbed1f4a[0]),
    .b(al_dbed1f4a[1]),
    .c(al_dbed1f4a[2]),
    .d(al_dbed1f4a[3]),
    .e(al_dbed1f4a[4]),
    .o(al_3b417b5));
  AL_MAP_LUT3 #(
    .EQN("(~C*B*A)"),
    .INIT(8'h08))
    al_676ed9e3 (
    .a(al_787e0126),
    .b(al_928dbd8a),
    .c(al_a574bab9),
    .o(al_babf4d7b));
  AL_MAP_LUT4 #(
    .EQN("(C*~(D*~B*~A))"),
    .INIT(16'he0f0))
    al_4be9392 (
    .a(al_b091f9f9),
    .b(al_fdd97a53),
    .c(al_460d7ea8),
    .d(al_babf4d7b),
    .o(al_cf818037));
  AL_MAP_LUT4 #(
    .EQN("(~B*~(~D*C*A))"),
    .INIT(16'h3313))
    al_7bbdfa25 (
    .a(al_e15cdb87),
    .b(al_8e707a3),
    .c(al_84673a50),
    .d(al_3683e7ab),
    .o(al_a52d77ff));
  AL_MAP_LUT4 #(
    .EQN("~(B*~(D*~(C*~A)))"),
    .INIT(16'hbf33))
    al_9948ae1c (
    .a(al_cf818037),
    .b(al_a52d77ff),
    .c(al_84673a50),
    .d(al_cb7e5089),
    .o(al_f9cd10eb));
  AL_MAP_LUT4 #(
    .EQN("(C*(B*~(A)*~(D)+B*A*~(D)+~(B)*A*D+B*A*D))"),
    .INIT(16'ha0c0))
    al_d7a1f800 (
    .a(al_310945e3),
    .b(al_3b417b5),
    .c(al_1486f657),
    .d(al_dbed1f4a[5]),
    .o(al_1cee29b0));
  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    al_7447007d (
    .a(al_5dc95721),
    .b(al_1048e296),
    .o(al_e15cdb87));
  AL_MAP_LUT3 #(
    .EQN("(C*B*~A)"),
    .INIT(8'h40))
    al_d8438369 (
    .a(al_dffa28e6),
    .b(al_cb7e5089),
    .c(al_c0ae55ee),
    .o(al_eb0a610b));
  AL_MAP_LUT4 #(
    .EQN("(C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    .INIT(16'hc0a0))
    al_91af9805 (
    .a(al_b5e9db1c[10]),
    .b(al_b5e9db1c[8]),
    .c(al_53412fa1[0]),
    .d(al_53412fa1[1]),
    .o(al_cb3465b8));
  AL_MAP_LUT4 #(
    .EQN("(~C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    .INIT(16'h0c0a))
    al_70451f53 (
    .a(al_b5e9db1c[11]),
    .b(al_b5e9db1c[9]),
    .c(al_53412fa1[0]),
    .d(al_53412fa1[1]),
    .o(al_bd98fa85));
  AL_MAP_LUT4 #(
    .EQN("(~C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    .INIT(16'h0c0a))
    al_38865483 (
    .a(al_b5e9db1c[15]),
    .b(al_b5e9db1c[13]),
    .c(al_53412fa1[0]),
    .d(al_53412fa1[1]),
    .o(al_e4b6ce14));
  AL_MAP_LUT4 #(
    .EQN("(C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    .INIT(16'hc0a0))
    al_5a57a3fd (
    .a(al_b5e9db1c[14]),
    .b(al_b5e9db1c[12]),
    .c(al_53412fa1[0]),
    .d(al_53412fa1[1]),
    .o(al_f8e90860));
  AL_MAP_LUT5 #(
    .EQN("~((~D*~C)*~((~B*~A))*~(E)+(~D*~C)*(~B*~A)*~(E)+~((~D*~C))*(~B*~A)*E+(~D*~C)*(~B*~A)*E)"),
    .INIT(32'heeeefff0))
    al_7ea4c0bd (
    .a(al_cb3465b8),
    .b(al_bd98fa85),
    .c(al_e4b6ce14),
    .d(al_f8e90860),
    .e(al_53412fa1[2]),
    .o(al_413324f5));
  AL_MAP_LUT4 #(
    .EQN("(~C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    .INIT(16'h0c0a))
    al_120f1b3 (
    .a(al_b5e9db1c[31]),
    .b(al_b5e9db1c[29]),
    .c(al_53412fa1[0]),
    .d(al_53412fa1[1]),
    .o(al_13ae2497));
  AL_MAP_LUT4 #(
    .EQN("(C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    .INIT(16'hc0a0))
    al_42edb3f (
    .a(al_b5e9db1c[30]),
    .b(al_b5e9db1c[28]),
    .c(al_53412fa1[0]),
    .d(al_53412fa1[1]),
    .o(al_aa17d653));
  AL_MAP_LUT4 #(
    .EQN("(C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    .INIT(16'hc0a0))
    al_6528649 (
    .a(al_b5e9db1c[26]),
    .b(al_b5e9db1c[24]),
    .c(al_53412fa1[0]),
    .d(al_53412fa1[1]),
    .o(al_8ccc6681));
  AL_MAP_LUT4 #(
    .EQN("(~C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    .INIT(16'h0c0a))
    al_4b5e4435 (
    .a(al_b5e9db1c[27]),
    .b(al_b5e9db1c[25]),
    .c(al_53412fa1[0]),
    .d(al_53412fa1[1]),
    .o(al_af04977c));
  AL_MAP_LUT5 #(
    .EQN("~((~B*~A)*~((~D*~C))*~(E)+(~B*~A)*(~D*~C)*~(E)+~((~B*~A))*(~D*~C)*E+(~B*~A)*(~D*~C)*E)"),
    .INIT(32'hfff0eeee))
    al_7b5b9df3 (
    .a(al_13ae2497),
    .b(al_aa17d653),
    .c(al_8ccc6681),
    .d(al_af04977c),
    .e(al_53412fa1[2]),
    .o(al_9f621c));
  AL_MAP_LUT4 #(
    .EQN("(~C*~(B*~(A)*~(D)+B*A*~(D)+~(B)*A*D+B*A*D))"),
    .INIT(16'h0503))
    al_b855e9c5 (
    .a(al_413324f5),
    .b(al_9f621c),
    .c(al_53412fa1[3]),
    .d(al_53412fa1[4]),
    .o(al_3c599203));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*C*~(D)+A*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+A*~(B)*~(C)*D+A*B*~(C)*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hcaf0))
    al_28b3cdb8 (
    .a(al_b5e9db1c[17]),
    .b(al_b5e9db1c[16]),
    .c(al_53412fa1[0]),
    .d(al_53412fa1[1]),
    .o(al_6d0bed26));
  AL_MAP_LUT4 #(
    .EQN("(A*~(B)*~(C)*~(D)+A*B*~(C)*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hf0ca))
    al_13e14b53 (
    .a(al_b5e9db1c[19]),
    .b(al_b5e9db1c[18]),
    .c(al_6d0bed26),
    .d(al_53412fa1[1]),
    .o(al_77d8628));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*C*~(D)+A*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+A*~(B)*~(C)*D+A*B*~(C)*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hcaf0))
    al_30e6d0ae (
    .a(al_b5e9db1c[21]),
    .b(al_b5e9db1c[20]),
    .c(al_53412fa1[0]),
    .d(al_53412fa1[1]),
    .o(al_68541276));
  AL_MAP_LUT4 #(
    .EQN("(A*~(B)*~(C)*~(D)+A*B*~(C)*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hf0ca))
    al_176d7485 (
    .a(al_b5e9db1c[23]),
    .b(al_b5e9db1c[22]),
    .c(al_68541276),
    .d(al_53412fa1[1]),
    .o(al_329ebca6));
  AL_MAP_LUT5 #(
    .EQN("(~E*D*~(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    .INIT(32'h00005300))
    al_26f16f89 (
    .a(al_77d8628),
    .b(al_329ebca6),
    .c(al_53412fa1[2]),
    .d(al_53412fa1[3]),
    .e(al_53412fa1[4]),
    .o(al_77c502c6));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*C*~(D)+A*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+A*~(B)*~(C)*D+A*B*~(C)*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hcaf0))
    al_9692dc69 (
    .a(al_b5e9db1c[5]),
    .b(al_b5e9db1c[4]),
    .c(al_53412fa1[0]),
    .d(al_53412fa1[1]),
    .o(al_12ab3421));
  AL_MAP_LUT5 #(
    .EQN("(~E*(~(A)*B*~(C)*~(D)+A*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+A*~(B)*~(C)*D+A*B*~(C)*D+A*~(B)*C*D+A*B*C*D))"),
    .INIT(32'h0000aae4))
    al_31d4624b (
    .a(al_12ab3421),
    .b(al_b5e9db1c[7]),
    .c(al_b5e9db1c[6]),
    .d(al_53412fa1[1]),
    .e(al_53412fa1[2]),
    .o(al_a70c3978));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*C*~(D)+A*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+A*~(B)*~(C)*D+A*B*~(C)*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hcaf0))
    al_6f6981ef (
    .a(al_b5e9db1c[1]),
    .b(al_b5e9db1c[0]),
    .c(al_53412fa1[0]),
    .d(al_53412fa1[1]),
    .o(al_d305f367));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+~(A)*~(B)*C*~(D)+A*~(B)*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+~(A)*B*~(C)*D+A*B*~(C)*D)"),
    .INIT(16'h0f35))
    al_32f37e78 (
    .a(al_b5e9db1c[3]),
    .b(al_b5e9db1c[2]),
    .c(al_d305f367),
    .d(al_53412fa1[1]),
    .o(al_f2ac7e6));
  AL_MAP_LUT4 #(
    .EQN("(C*~A*~(D*~B))"),
    .INIT(16'h4050))
    al_3150c3d6 (
    .a(al_a70c3978),
    .b(al_f2ac7e6),
    .c(al_d187bcb1),
    .d(al_53412fa1[2]),
    .o(al_e1af705c));
  AL_MAP_LUT4 #(
    .EQN("(D*~(~C*~B*~A))"),
    .INIT(16'hfe00))
    al_a44edbaf (
    .a(al_3c599203),
    .b(al_77c502c6),
    .c(al_e1af705c),
    .d(al_5294bf77),
    .o(al_73dfca95));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_c2ae0205 (
    .a(al_1cee29b0),
    .b(al_7548dbb9),
    .o(al_13a14436));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    al_c2a2fb3f (
    .a(al_b850157e[0]),
    .b(al_8e707a3),
    .o(al_9d0466fd[0]));
  AL_MAP_LUT3 #(
    .EQN("(B*~(C*A))"),
    .INIT(8'h4c))
    al_b174060f (
    .a(al_1cee29b0),
    .b(al_e3e0848b[0]),
    .c(al_5294bf77),
    .o(al_18a539f1));
  AL_MAP_LUT5 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)*~(E)+A*~(B)*~(C)*~(D)*~(E)+~(A)*B*~(C)*~(D)*~(E)+A*B*~(C)*~(D)*~(E)+~(A)*~(B)*C*~(D)*~(E)+A*~(B)*C*~(D)*~(E)+~(A)*B*C*~(D)*~(E)+A*B*C*~(D)*~(E)+~(A)*~(B)*~(C)*D*~(E)+A*~(B)*~(C)*D*~(E)+~(A)*B*~(C)*D*~(E)+A*B*~(C)*D*~(E)+~(A)*~(B)*~(C)*~(D)*E+A*~(B)*~(C)*~(D)*E+~(A)*~(B)*C*~(D)*E+A*~(B)*C*~(D)*E+~(A)*~(B)*~(C)*D*E+~(A)*B*~(C)*D*E+~(A)*~(B)*C*D*E+~(A)*B*C*D*E)"),
    .INIT(32'h55330fff))
    al_8c4e3e46 (
    .a(al_5e5be818[1]),
    .b(al_5e5be818[2]),
    .c(al_5e5be818[3]),
    .d(al_53412fa1[0]),
    .e(al_53412fa1[1]),
    .o(al_d0310076));
  AL_MAP_LUT5 #(
    .EQN("(E*~(~A*~((C*B))*~(D)+~A*(C*B)*~(D)+~(~A)*(C*B)*D+~A*(C*B)*D))"),
    .INIT(32'h3faa0000))
    al_7d9ccccc (
    .a(al_d0310076),
    .b(al_581b19be),
    .c(al_5e5be818[0]),
    .d(al_53412fa1[2]),
    .e(al_5294bf77),
    .o(al_166550a0));
  AL_MAP_LUT4 #(
    .EQN("(D*~A*~(~C*B))"),
    .INIT(16'h5100))
    al_598c6cbf (
    .a(al_13a14436),
    .b(al_18a539f1),
    .c(al_166550a0),
    .d(al_e3e0848b[1]),
    .o(al_cafa9a0));
  AL_MAP_LUT3 #(
    .EQN("(~B*~(C*A))"),
    .INIT(8'h13))
    al_b8aa642a (
    .a(al_1cee29b0),
    .b(al_e3e0848b[0]),
    .c(al_5294bf77),
    .o(al_1c30b794));
  AL_MAP_LUT3 #(
    .EQN("(A*~(B)*~(C)+A*B*~(C)+~(A)*B*C+A*B*C)"),
    .INIT(8'hca))
    al_9a7eef3a (
    .a(can_phy_rx),
    .b(al_8278b4f6),
    .c(al_c2b02029),
    .o(al_dffa28e6));
  AL_MAP_LUT3 #(
    .EQN("(A*~(C*B))"),
    .INIT(8'h2a))
    al_71c24e1 (
    .a(al_1c30b794),
    .b(al_c477a09c),
    .c(al_5294bf77),
    .o(al_9fe176a7));
  AL_MAP_LUT3 #(
    .EQN("(A*~(C*B))"),
    .INIT(8'h2a))
    al_790bd4a0 (
    .a(al_538866b5),
    .b(al_7e07b9ca),
    .c(al_5294bf77),
    .o(al_11e40803));
  AL_MAP_LUT4 #(
    .EQN("(D*~(B*~(C*~A)))"),
    .INIT(16'h7300))
    al_49ded0b6 (
    .a(al_73dfca95),
    .b(al_cafa9a0),
    .c(al_9fe176a7),
    .d(al_11e40803),
    .o(al_b091f9f9));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+A*~(B)*C*~(D)+A*B*C*~(D)+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hf0ac))
    al_40a6b3ab (
    .a(al_c8d7daaf[9]),
    .b(al_c8d7daaf[10]),
    .c(al_53412fa1[0]),
    .d(al_53412fa1[1]),
    .o(al_f007c8b2));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+A*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+~(A)*~(B)*C*D+~(A)*B*C*D)"),
    .INIT(16'h530f))
    al_1d116470 (
    .a(al_c8d7daaf[7]),
    .b(al_c8d7daaf[8]),
    .c(al_f007c8b2),
    .d(al_53412fa1[1]),
    .o(al_b331f8fc));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    al_72ba5f9e (
    .a(al_b850157e[1]),
    .b(al_8e707a3),
    .o(al_9d0466fd[1]));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+A*~(B)*C*~(D)+A*B*C*~(D)+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hf0ac))
    al_164f9bf (
    .a(al_c8d7daaf[13]),
    .b(al_c8d7daaf[14]),
    .c(al_53412fa1[0]),
    .d(al_53412fa1[1]),
    .o(al_58d868b1));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+A*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+~(A)*~(B)*C*D+~(A)*B*C*D)"),
    .INIT(16'h530f))
    al_28229c81 (
    .a(al_c8d7daaf[11]),
    .b(al_c8d7daaf[12]),
    .c(al_58d868b1),
    .d(al_53412fa1[1]),
    .o(al_dd66c78a));
  AL_MAP_LUT4 #(
    .EQN("(~D*~(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    .INIT(16'h0053))
    al_acaccad3 (
    .a(al_b331f8fc),
    .b(al_dd66c78a),
    .c(al_53412fa1[2]),
    .d(al_53412fa1[3]),
    .o(al_7ef11259));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+A*~(B)*C*~(D)+A*B*C*~(D)+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hf0ac))
    al_44cfcd0d (
    .a(al_c8d7daaf[5]),
    .b(al_c8d7daaf[6]),
    .c(al_53412fa1[0]),
    .d(al_53412fa1[1]),
    .o(al_2747d1b3));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+A*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+~(A)*~(B)*C*D+~(A)*B*C*D)"),
    .INIT(16'h530f))
    al_d93562e9 (
    .a(al_c8d7daaf[3]),
    .b(al_c8d7daaf[4]),
    .c(al_2747d1b3),
    .d(al_53412fa1[1]),
    .o(al_2c601c99));
  AL_MAP_LUT3 #(
    .EQN("(~C*(B@A))"),
    .INIT(8'h06))
    al_acbd0477 (
    .a(al_b850157e[1]),
    .b(al_b850157e[2]),
    .c(al_8e707a3),
    .o(al_9d0466fd[2]));
  AL_MAP_LUT5 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)*~(E)+A*~(B)*~(C)*~(D)*~(E)+~(A)*B*~(C)*~(D)*~(E)+A*B*~(C)*~(D)*~(E)+~(A)*~(B)*~(C)*D*~(E)+A*~(B)*~(C)*D*~(E)+~(A)*~(B)*C*D*~(E)+A*~(B)*C*D*~(E)+~(A)*~(B)*~(C)*~(D)*E+~(A)*B*~(C)*~(D)*E+~(A)*~(B)*C*~(D)*E+~(A)*B*C*~(D)*E+~(A)*~(B)*~(C)*D*E+A*~(B)*~(C)*D*E+~(A)*B*~(C)*D*E+A*B*~(C)*D*E+~(A)*~(B)*C*D*E+A*~(B)*C*D*E+~(A)*B*C*D*E+A*B*C*D*E)"),
    .INIT(32'hff55330f))
    al_f7c8c172 (
    .a(al_c8d7daaf[0]),
    .b(al_c8d7daaf[1]),
    .c(al_c8d7daaf[2]),
    .d(al_53412fa1[0]),
    .e(al_53412fa1[1]),
    .o(al_67aaf076));
  AL_MAP_LUT4 #(
    .EQN("(D*~(A*~(B)*~(C)+A*B*~(C)+~(A)*B*C+A*B*C))"),
    .INIT(16'h3500))
    al_81dc0247 (
    .a(al_2c601c99),
    .b(al_67aaf076),
    .c(al_53412fa1[2]),
    .d(al_53412fa1[3]),
    .o(al_2634cad7));
  AL_MAP_LUT4 #(
    .EQN("(D*~C*~B*~A)"),
    .INIT(16'h0100))
    al_b756eb76 (
    .a(al_7ef11259),
    .b(al_2634cad7),
    .c(al_3ff42b2e),
    .d(al_5294bf77),
    .o(al_8a37f936));
  AL_MAP_LUT4 #(
    .EQN("(~D*~B*~(C*~A))"),
    .INIT(16'h0023))
    al_22c059b7 (
    .a(al_8a37f936),
    .b(al_13a14436),
    .c(al_18a539f1),
    .d(al_e3e0848b[1]),
    .o(al_268df1dd));
  AL_MAP_LUT4 #(
    .EQN("(~(D@B)*~(C@A))"),
    .INIT(16'h8421))
    al_7d2f043e (
    .a(al_c8d7daaf[7]),
    .b(al_c8d7daaf[10]),
    .c(al_2339cbd5[8]),
    .d(al_2339cbd5[11]),
    .o(al_f9f6ffab));
  AL_DFF_X al_1bd51bb7 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_8d254843),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_6041251f));
  AL_MAP_LUT3 #(
    .EQN("(~C*B*A)"),
    .INIT(8'h08))
    al_46b4b1ec (
    .a(al_ea19f618),
    .b(al_393235c7[3]),
    .c(al_8e707a3),
    .o(al_c355151b[4]));
  AL_MAP_LUT3 #(
    .EQN("(~C*(B@A))"),
    .INIT(8'h06))
    al_7588db4f (
    .a(al_ea19f618),
    .b(al_393235c7[3]),
    .c(al_8e707a3),
    .o(al_c355151b[3]));
  AL_MAP_LUT4 #(
    .EQN("(~(C@B)*~(D@A))"),
    .INIT(16'h8241))
    al_59ee2beb (
    .a(al_c355151b[4]),
    .b(al_c355151b[3]),
    .c(al_5be243[3]),
    .d(al_5be243[4]),
    .o(al_9f1aa165));
  AL_MAP_LUT2 #(
    .EQN("~(B@A)"),
    .INIT(4'h9))
    al_f0c0e9af (
    .a(al_c355151b[2]),
    .b(al_5be243[2]),
    .o(al_25882c89));
  AL_MAP_LUT2 #(
    .EQN("~(B@A)"),
    .INIT(4'h9))
    al_1a79dfd3 (
    .a(al_c355151b[1]),
    .b(al_5be243[1]),
    .o(al_99e8388));
  AL_MAP_LUT2 #(
    .EQN("~(B@A)"),
    .INIT(4'h9))
    al_ee77f9a7 (
    .a(al_c355151b[0]),
    .b(al_5be243[0]),
    .o(al_b3ae1801));
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    al_9c28c4f6 (
    .a(al_9f1aa165),
    .b(al_25882c89),
    .c(al_99e8388),
    .d(al_b3ae1801),
    .o(al_2a5461d4));
  AL_MAP_LUT3 #(
    .EQN("(C*B*~A)"),
    .INIT(8'h40))
    al_a1db6a3b (
    .a(al_dffa28e6),
    .b(al_6041251f),
    .c(al_c0ae55ee),
    .o(al_28c82be3));
  AL_MAP_LUT4 #(
    .EQN("(~C*~B*~(D*A))"),
    .INIT(16'h0103))
    al_aebcc3e3 (
    .a(al_dd86194c),
    .b(al_28c82be3),
    .c(al_cb7e5089),
    .d(al_6041251f),
    .o(al_cc7a818a));
  AL_MAP_LUT4 #(
    .EQN("(~B*~(~D*~(C*A)))"),
    .INIT(16'h3320))
    al_8891647 (
    .a(al_2a5461d4),
    .b(al_8e707a3),
    .c(al_84673a50),
    .d(al_6041251f),
    .o(al_a05f23c6));
  AL_MAP_LUT5 #(
    .EQN("(B*~(C*~(A*~(~E*D))))"),
    .INIT(32'h8c8c0c8c))
    al_b08b9d4b (
    .a(al_cc7a818a),
    .b(al_a05f23c6),
    .c(al_84673a50),
    .d(al_6041251f),
    .e(al_cf818037),
    .o(al_8d254843));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    al_790a0 (
    .a(al_393235c7[0]),
    .b(al_8e707a3),
    .o(al_c355151b[0]));
  AL_MAP_LUT3 #(
    .EQN("(~C*(B@A))"),
    .INIT(8'h06))
    al_20381513 (
    .a(al_393235c7[0]),
    .b(al_393235c7[1]),
    .c(al_8e707a3),
    .o(al_c355151b[1]));
  AL_MAP_LUT4 #(
    .EQN("(~D*(C@(B*A)))"),
    .INIT(16'h0078))
    al_9a6b11e (
    .a(al_393235c7[0]),
    .b(al_393235c7[1]),
    .c(al_393235c7[2]),
    .d(al_8e707a3),
    .o(al_c355151b[2]));
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    al_9478ed54 (
    .a(al_393235c7[0]),
    .b(al_393235c7[1]),
    .c(al_393235c7[2]),
    .o(al_ea19f618));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    al_befeb87b (
    .a(1'b0),
    .o({al_3e2203c4,open_n92}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_40fd0cf0 (
    .a(al_c355151b[4]),
    .b(al_5be243[4]),
    .c(al_9a87b58a),
    .o({al_a8fabf1e,open_n93}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_248de943 (
    .a(1'b0),
    .b(1'b1),
    .c(al_a8fabf1e),
    .o({open_n94,al_23f39cbc}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_59f21284 (
    .a(al_c355151b[0]),
    .b(al_5be243[0]),
    .c(al_3e2203c4),
    .o({al_33e22f5d,open_n95}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_d048c2f7 (
    .a(al_c355151b[1]),
    .b(al_5be243[1]),
    .c(al_33e22f5d),
    .o({al_a00c9c5d,open_n96}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_e0c1635d (
    .a(al_c355151b[2]),
    .b(al_5be243[2]),
    .c(al_a00c9c5d),
    .o({al_9c926378,open_n97}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_8ea3c492 (
    .a(al_c355151b[3]),
    .b(al_5be243[3]),
    .c(al_9c926378),
    .o({al_9a87b58a,open_n98}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    al_bbea4973 (
    .a(1'b1),
    .o({al_2e2b49c4,open_n101}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_ca8b162b (
    .a(al_5be243[4]),
    .b(1'b0),
    .c(al_ebfc5374),
    .o({al_6477d9d3,open_n102}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_d654406a (
    .a(1'b0),
    .b(1'b1),
    .c(al_6477d9d3),
    .o({open_n103,al_91e030f1}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_48e0b980 (
    .a(al_5be243[0]),
    .b(al_31057df8[0]),
    .c(al_2e2b49c4),
    .o({al_c4bd9400,open_n104}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_2c6d9cd1 (
    .a(al_5be243[1]),
    .b(al_31057df8[1]),
    .c(al_c4bd9400),
    .o({al_b79fae1c,open_n105}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_950d1eb5 (
    .a(al_5be243[2]),
    .b(al_31057df8[2]),
    .c(al_b79fae1c),
    .o({al_8a119ab2,open_n106}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_b5038ae2 (
    .a(al_5be243[3]),
    .b(1'b0),
    .c(al_8a119ab2),
    .o({al_ebfc5374,open_n107}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    al_1b1bb4cf (
    .a(1'b0),
    .o({al_c89f5822,open_n110}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_65657aa5 (
    .a(al_5be243[4]),
    .b(al_4965734[4]),
    .c(al_77aa8643),
    .o({al_1f590022,open_n111}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_74b54777 (
    .a(1'b0),
    .b(1'b1),
    .c(al_1f590022),
    .o({open_n112,al_62119108}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_d741e89e (
    .a(al_5be243[0]),
    .b(al_4965734[0]),
    .c(al_c89f5822),
    .o({al_ef5be421,open_n113}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_8a9ab7cb (
    .a(al_5be243[1]),
    .b(al_4965734[1]),
    .c(al_ef5be421),
    .o({al_ab3a184f,open_n114}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_eec045be (
    .a(al_5be243[2]),
    .b(al_4965734[2]),
    .c(al_ab3a184f),
    .o({al_399b4674,open_n115}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_8d07534c (
    .a(al_5be243[3]),
    .b(al_4965734[3]),
    .c(al_399b4674),
    .o({al_77aa8643,open_n116}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    al_a259008c (
    .a(1'b0),
    .o({al_f1f99725,open_n119}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_fedda6d9 (
    .a(al_c54d0810[3]),
    .b(al_5be243[4]),
    .c(al_235aa580),
    .o({al_c626cd99,open_n120}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_5bdf2291 (
    .a(1'b0),
    .b(1'b1),
    .c(al_c626cd99),
    .o({open_n121,al_6c88833b}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_3a3867d9 (
    .a(al_c355151b[0]),
    .b(al_5be243[0]),
    .c(al_f1f99725),
    .o({al_8cdcc9fa,open_n122}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_9dc4bb2e (
    .a(al_c54d0810[0]),
    .b(al_5be243[1]),
    .c(al_8cdcc9fa),
    .o({al_3c7eb393,open_n123}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_614983a6 (
    .a(al_c54d0810[1]),
    .b(al_5be243[2]),
    .c(al_3c7eb393),
    .o({al_e86f5adb,open_n124}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    al_14c7a688 (
    .a(al_c54d0810[2]),
    .b(al_5be243[3]),
    .c(al_e86f5adb),
    .o({al_235aa580,open_n125}));
  AL_DFF_X al_a443f54a (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_a82321a2[0]),
    .en(1'b1),
    .sr(al_9b2723ca),
    .ss(1'b0),
    .q(al_b0941661[0]));
  AL_DFF_X al_1ee12484 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_a82321a2[1]),
    .en(1'b1),
    .sr(al_9b2723ca),
    .ss(1'b0),
    .q(al_b0941661[1]));
  AL_DFF_X al_d4d574ab (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_a82321a2[2]),
    .en(1'b1),
    .sr(al_9b2723ca),
    .ss(1'b0),
    .q(al_b0941661[2]));
  AL_DFF_X al_4aba0d88 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_a82321a2[3]),
    .en(1'b1),
    .sr(al_9b2723ca),
    .ss(1'b0),
    .q(al_b0941661[3]));
  AL_DFF_X al_3ec3f253 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_a82321a2[4]),
    .en(1'b1),
    .sr(al_9b2723ca),
    .ss(1'b0),
    .q(al_b0941661[4]));
  AL_DFF_X al_696fcb4e (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_a82321a2[5]),
    .en(1'b1),
    .sr(al_9b2723ca),
    .ss(1'b0),
    .q(al_b0941661[5]));
  AL_DFF_X al_5232cd3f (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_a82321a2[6]),
    .en(1'b1),
    .sr(al_9b2723ca),
    .ss(1'b0),
    .q(al_b0941661[6]));
  AL_DFF_X al_520b4f95 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_a82321a2[7]),
    .en(1'b1),
    .sr(al_9b2723ca),
    .ss(1'b0),
    .q(al_b0941661[7]));
  AL_DFF_X al_8a2567d8 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_a9c996b9[0]),
    .en(al_84673a50),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_5be243[0]));
  AL_DFF_X al_277a66ef (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_a9c996b9[1]),
    .en(al_84673a50),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_5be243[1]));
  AL_DFF_X al_c2fecc22 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_a9c996b9[2]),
    .en(al_84673a50),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_5be243[2]));
  AL_DFF_X al_40281786 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_a9c996b9[3]),
    .en(al_84673a50),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_5be243[3]));
  AL_DFF_X al_6b5917da (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_a9c996b9[4]),
    .en(al_84673a50),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_5be243[4]));
  AL_DFF_X al_18dd5a8d (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_53d9ecb3),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_c0ae55ee));
  AL_MAP_LUT4 #(
    .EQN("~(~C*~(D*~(B)*~(A)+D*B*~(A)+~(D)*B*A+D*B*A))"),
    .INIT(16'hfdf8))
    al_d08a7efd (
    .a(al_513770c2),
    .b(al_dffa28e6),
    .c(al_8e707a3),
    .d(al_c0ae55ee),
    .o(al_53d9ecb3));
  AL_DFF_X al_c19bd8e9 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_e15cdb87),
    .en(al_84673a50),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_3683e7ab));
  AL_DFF_X al_e71bf610 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_513770c2),
    .en(1'b1),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_35747f18));
  AL_DFF_X al_ddfa5780 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_35747f18),
    .en(1'b1),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_fb2f48d1));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    al_6741a3e3 (
    .a(al_393235c7[8]),
    .b(al_8e707a3),
    .o(al_1c654c99[1]));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB_CARRY"))
    al_d2dee525 (
    .a(1'b0),
    .o({al_9137c46b,open_n128}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    al_bc7f8aed (
    .a(al_9d0466fd[0]),
    .b(al_31057df8[0]),
    .c(al_9137c46b),
    .o({al_749e6b43,al_4965734[0]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    al_637be0b9 (
    .a(al_9d0466fd[1]),
    .b(al_31057df8[1]),
    .c(al_749e6b43),
    .o({al_8885c01f,al_4965734[1]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    al_a367c399 (
    .a(al_9d0466fd[2]),
    .b(al_31057df8[2]),
    .c(al_8885c01f),
    .o({al_44a6a7c2,al_4965734[2]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    al_e1456d4b (
    .a(al_9d0466fd[3]),
    .b(1'b0),
    .c(al_44a6a7c2),
    .o({al_6412dfc2,al_4965734[3]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    al_fe07d46 (
    .a(al_9d0466fd[4]),
    .b(1'b0),
    .c(al_6412dfc2),
    .o({open_n129,al_4965734[4]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB_CARRY"))
    al_2aa87fc1 (
    .a(1'b0),
    .o({al_3e0c0b03,open_n132}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    al_b857df4f (
    .a(al_5be243[0]),
    .b(al_1c654c99[0]),
    .c(al_3e0c0b03),
    .o({al_2470a7c2,al_261227a1[0]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    al_61f8f8c3 (
    .a(al_5be243[1]),
    .b(al_1c654c99[1]),
    .c(al_2470a7c2),
    .o({al_15a216ef,al_261227a1[1]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    al_2162362b (
    .a(al_5be243[2]),
    .b(1'b0),
    .c(al_15a216ef),
    .o({al_a427d43e,al_261227a1[2]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    al_d6ee1e1f (
    .a(al_5be243[3]),
    .b(1'b0),
    .c(al_a427d43e),
    .o({al_9691b7da,al_261227a1[3]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    al_4261e5d3 (
    .a(al_5be243[4]),
    .b(1'b0),
    .c(al_9691b7da),
    .o({open_n133,al_261227a1[4]}));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_3c56225c (
    .a(al_c355151b[0]),
    .b(al_393235c7[1]),
    .o(al_be4b3284));
  AL_MAP_LUT3 #(
    .EQN("(~A*~(~C*B))"),
    .INIT(8'h51))
    al_564262b3 (
    .a(al_9f1aa165),
    .b(al_be4b3284),
    .c(al_c39e83d1),
    .o(al_605ee510));
  AL_MAP_LUT5 #(
    .EQN("(A*~(C)*~((~(E@B)*D))+~(A)*C*~((~(E@B)*D))+A*~(C)*(~(E@B)*D))"),
    .INIT(32'h1a5a4a5a))
    al_e38d711d (
    .a(al_25882c89),
    .b(al_c355151b[3]),
    .c(al_be4b3284),
    .d(al_393235c7[2]),
    .e(al_5be243[3]),
    .o(al_8fac4c44));
  AL_MAP_LUT3 #(
    .EQN("(~(A)*~(B)*~(C)+A*~(B)*~(C)+A*B*~(C)+~(A)*~(B)*C+~(A)*B*C+A*B*C)"),
    .INIT(8'hdb))
    al_425af281 (
    .a(al_99e8388),
    .b(al_c355151b[0]),
    .c(al_5be243[0]),
    .o(al_db113f6c));
  AL_MAP_LUT4 #(
    .EQN("(~D*C*~B*A)"),
    .INIT(16'h0020))
    al_35923855 (
    .a(al_967f46f4),
    .b(al_605ee510),
    .c(al_8fac4c44),
    .d(al_db113f6c),
    .o(al_2aa5e363));
  AL_DFF_X al_c4d4fa1b (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_2aa5e363),
    .en(al_84673a50),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_4e71988a));
  AL_DFF_X al_a1915627 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_ef00f01d),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_5081afcf));
  AL_MAP_LUT4 #(
    .EQN("~(~B*(~D*~(A)*~(C)+~D*A*~(C)+~(~D)*A*C+~D*A*C))"),
    .INIT(16'hdfdc))
    al_5afc319e (
    .a(al_caeda5fd),
    .b(al_8e707a3),
    .c(al_fb2f48d1),
    .d(al_5081afcf),
    .o(al_ef00f01d));
  AL_DFF_X al_57296b37 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_1d79b1a1),
    .en(1'b1),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_b9f88c11));
  AL_DFF_X al_9a0fbf2a (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_b9f88c11),
    .en(1'b1),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_c2b02029));
  AL_DFF_X al_4c60093b (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_127cf376),
    .en(1'b1),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_4a4ebdac));
  AL_DFF_X al_8f46036c (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_4a4ebdac),
    .en(1'b1),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_84f88b7d));
  AL_DFF_X al_4d38fe1 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_71387e99[0]),
    .en(1'b1),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_a3b34647[0]));
  AL_DFF_X al_e1f0935c (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_71387e99[1]),
    .en(1'b1),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_a3b34647[1]));
  AL_DFF_X al_fc41ab12 (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_a3b34647[0]),
    .en(1'b1),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_e8488bce[0]));
  AL_DFF_X al_81d1bb6b (
    .ar(1'b0),
    .as(1'b0),
    .clk(can_clk),
    .d(al_a3b34647[1]),
    .en(1'b1),
    .sr(al_8e707a3),
    .ss(1'b0),
    .q(al_e8488bce[1]));

endmodule 

