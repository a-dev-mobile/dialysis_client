// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/foundation.dart';

@immutable
class FoodDbModel {
  /*  */
  final int id;
  /*  */
  final int id_product;
  /*  */
  final int id_category;
  /*  */
  final int id_source;
  /*  */
  final double? water;
  /*  */
  final double? k_potassium;
  /*  */
  final double? na_sodium;
  /*  */
  final double? p_phosphorus;
  /*  */
  final double? ca_calcium;
  /*  */
  final double? proteins;
  /*  */
  final double? calorie;
  /*  */
  final double? carbohydrates;
  /*  */
  final double? fats;
  /*  */
  final double? feed_ash;
  /*  */
  final double? a_vitamin;
  /*  */
  final double? retinol;
  /*  */
  final double? beta_carotene;
  /*  */
  final double? b1_vitamin_thiamine;
  /*  */
  final double? b2_vitamin_riboflavin;
  /*  */
  final double? b5_vitamin;
  /*  */
  final double? b6_vitamin_pyridoxine;
  /*  */
  final double? b9_vitamin_folates;
  /*  */
  final double? b12_vitamin_cobalamin;
  /*  */
  final double? c_vitamin;
  /*  */
  final double? e_vitamin;
  /*  */
  final double? rr_vitamin;
  /*  */
  final double? niacin;
  /*  */
  final double? mg_magnesium;
  /*  */
  final double? s_sulfur;
  /*  */
  final double? cl_chlorine;
  /*  */
  final double? fe_iron;
  /*  */
  final double? i_iodine;
  /*  */
  final double? co_cobalt;
  /*  */
  final double? mn_manganese;
  /*  */
  final double? cu_copper;
  /*  */
  final double? mo_molybdenum;
  /*  */
  final double? ni_nickel;
  /*  */
  final double? se_selenium;
  /*  */
  final double? f_fluorine;
  /*  */
  final double? cr_chrome;
  /*  */
  final double? zh_zinc;
  /*  */
  final double? cholesterol;
  /*  */
  final double? saturated_fatty_acids;
  /*  */
  final double? myristina;
  /*  */
  final double? palmitic;
  /*  */
  final double? stearic;
  /*  */
  final double? arachinova;
  /*  */
  final double? mono_fatty_acids;
  /*  */
  final double? palmitoleic;
  /*  */
  final double? heptadecene;
  /*  */
  final double? omega_9_oleic;
  /*  */
  final double? omega_9_gadolein;
  /*  */
  final double? poly_fatty_acids;
  /*  */
  final double? linoleic;
  /*  */
  final double? linolenic;
  /*  */
  final double? arachidonic;
  /*  */
  final double? omega_3_epk;
  /*  */
  final double? omega_3_fatty_acids;
  /*  */
  final double? omega_3_dpc;
  /*  */
  final double? omega_6_fatty_acids;
  /*  */
  final double? dietary_fiber;
  /*  */
  final double? mono_di_saccharides;
  /*  */
  final double? organic_acids;
  /*  */
  final double? b4_vitamin;
  /*  */
  final double? d_Vitamin_calciferol;
  /*  */
  final double? h_vitamin_biotin;
  /*  */
  final double? k_vitamin_phylloquinone;
  /*  */
  final double? al_aluminium;
  /*  */
  final double? sn_tin;
  /*  */
  final double? sr_strontium;
  /*  */
  final double? galactose;
  /*  */
  final double? glucose_dextrose;
  /*  */
  final double? lactose;
  /*  */
  final double? essential_amino_acids;
  /*  */
  final double? arginine;
  /*  */
  final double? valin;
  /*  */
  final double? histidine;
  /*  */
  final double? isoleucine;
  /*  */
  final double? leucine;
  /*  */
  final double? lysine;
  /*  */
  final double? methionine;
  /*  */
  final double? methionine_cysteine;
  /*  */
  final double? threonine;
  /*  */
  final double? tryptophan;
  /*  */
  final double? phenylalanine;
  /*  */
  final double? phenylalanine_tyrosine;
  /*  */
  final double? substitutable_amino_acids;
  /*  */
  final double? alanine;
  /*  */
  final double? aspartica_acid;
  /*  */
  final double? glycine;
  /*  */
  final double? glutamic_acid;
  /*  */
  final double? proline;
  /*  */
  final double? serin;
  /*  */
  final double? tyrosine;
  /*  */
  final double? cysteine;
  /*  */
  final double? oil_4_0;
  /*  */
  final double? capron;
  /*  */
  final double? caprylic;
  /*  */
  final double? caprine;
  /*  */
  final double? laurin;
  /*  */
  final double? pentadecane;
  /*  */
  final double? margarine;
  /*  */
  final double? myristolein;
  /*  */
  final double? sucrose;
  /*  */
  final double? trans_fats;
  /*  */
  final double? starch_dextrins;
  /*  */
  final double? ethyl_alcohol;
  /*  */
  final double? si_silicon;
  /*  */
  final double? b_bohr;
  /*  */
  final double? v_vanadium;
  /*  */
  final double? li_lithium;
  /*  */
  final double? rb_rubidium;
  /*  */
  final double? zr_zirconium;
  /*  */
  final double? omega_9_eruca;
  /*  */
  final double? omega_3_stioride;
  /*  */
  final double? omega_3_Docosahexaeno;
  /*  */
  final double? beta_sitosterol;
  /*  */
  final double? begenova;
  /*  */
  final double? fructose;
  /*  */
  final double? maltose;
  /*  */
  final double? phytosterols;
  /*  */
  final double? ti_titan;
  /*  */
  final double? hydroxyproline;
  /*  */
  final double? lignoceric;
  /*  */
  final double? betaine;
  /*  */
  final double? monoun_trans_fats;
  /*  */
  final double? cis_16_1;
  /*  */
  final double? cis_18_1;
  /*  */
  final double? trance_18_1;
  /*  */
  final double? mixed_isomers;
  /*  */
  final double? omega_6_cis;
  /*  */
  final double? conjugated_linoleic_acid;
  /*  */
  final double? omega_3_alpha_linolenic;
  /*  */
  final double? d3_vitamin_cholecalciferol;
  /*  */
  final double? alpha_carotene;
  /*  */
  final double? cryptoxanthin_beta;
  /*  */
  final double? lutein_zeaxanthin;
  /*  */
  final double? beta_tocopherol;
  /*  */
  final double? gamma_tocopherol;
  /*  */
  final double? trance_16_1;
  /*  */
  final double? cis_22_1;
  /*  */
  final double? omega_9_nervone;
  /*  */
  final double? trans_isomer_undefined;
  /*  */
  final double? omega_6_gamma_linolenic;
  /*  */
  final double? trance_18_3;
  /*  */
  final double? omega_6_eicosadieno;
  /*  */
  final double? eicosatrieno;
  /*  */
  final double? omega_6_20_3;
  /*  */
  final double? omega_6_docosatetraeno;
  /*  */
  final double? lycopene;
  /*  */
  final double? tocopherol_delta;
  /*  */
  final double? polyun_trans_fats;
  /*  */
  final double? tridecane_13_0;
  /*  */
  final double? omega_3;
  /*  */
  final double? pentadecene;
  /*  */
  final double? caffeine;
  /*  */
  final double? theobromine;
  /*  */
  final double? trans_trans;
  /*  */
  final double? menaquinone_4;
  /*  */
  final double? campesterol;
  /*  */
  final double? stigmasterol;
  /*  */
  final double? e_vitamin_added;
  /*  */
  final double? b12_vitamin_added;
  /*  */
  final double? trance_22_1;
  /*  */
  final double? dihydrophylloquinone;
  /*  */
  final double? d2_vitamin_ergocalciferol;
  /*  */
  final double? omega_6_20_4;
  /*  */
  final double? omega_3_geneico;
  /*  */
  final double? phosphorus_protein_ratio;
  /*  */
  final double? kilojoule;

// end

  //  ******************************
  // GENERATED CODE BELOW - DO NOT MODIFY
  //  ******************************

  const FoodDbModel({
    required this.id,
    required this.id_product,
    required this.id_category,
    required this.id_source,
    this.water,
    this.k_potassium,
    this.na_sodium,
    this.p_phosphorus,
    this.ca_calcium,
    this.proteins,
    this.calorie,
    this.carbohydrates,
    this.fats,
    this.feed_ash,
    this.a_vitamin,
    this.retinol,
    this.beta_carotene,
    this.b1_vitamin_thiamine,
    this.b2_vitamin_riboflavin,
    this.b5_vitamin,
    this.b6_vitamin_pyridoxine,
    this.b9_vitamin_folates,
    this.b12_vitamin_cobalamin,
    this.c_vitamin,
    this.e_vitamin,
    this.rr_vitamin,
    this.niacin,
    this.mg_magnesium,
    this.s_sulfur,
    this.cl_chlorine,
    this.fe_iron,
    this.i_iodine,
    this.co_cobalt,
    this.mn_manganese,
    this.cu_copper,
    this.mo_molybdenum,
    this.ni_nickel,
    this.se_selenium,
    this.f_fluorine,
    this.cr_chrome,
    this.zh_zinc,
    this.cholesterol,
    this.saturated_fatty_acids,
    this.myristina,
    this.palmitic,
    this.stearic,
    this.arachinova,
    this.mono_fatty_acids,
    this.palmitoleic,
    this.heptadecene,
    this.omega_9_oleic,
    this.omega_9_gadolein,
    this.poly_fatty_acids,
    this.linoleic,
    this.linolenic,
    this.arachidonic,
    this.omega_3_epk,
    this.omega_3_fatty_acids,
    this.omega_3_dpc,
    this.omega_6_fatty_acids,
    this.dietary_fiber,
    this.mono_di_saccharides,
    this.organic_acids,
    this.b4_vitamin,
    this.d_Vitamin_calciferol,
    this.h_vitamin_biotin,
    this.k_vitamin_phylloquinone,
    this.al_aluminium,
    this.sn_tin,
    this.sr_strontium,
    this.galactose,
    this.glucose_dextrose,
    this.lactose,
    this.essential_amino_acids,
    this.arginine,
    this.valin,
    this.histidine,
    this.isoleucine,
    this.leucine,
    this.lysine,
    this.methionine,
    this.methionine_cysteine,
    this.threonine,
    this.tryptophan,
    this.phenylalanine,
    this.phenylalanine_tyrosine,
    this.substitutable_amino_acids,
    this.alanine,
    this.aspartica_acid,
    this.glycine,
    this.glutamic_acid,
    this.proline,
    this.serin,
    this.tyrosine,
    this.cysteine,
    this.oil_4_0,
    this.capron,
    this.caprylic,
    this.caprine,
    this.laurin,
    this.pentadecane,
    this.margarine,
    this.myristolein,
    this.sucrose,
    this.trans_fats,
    this.starch_dextrins,
    this.ethyl_alcohol,
    this.si_silicon,
    this.b_bohr,
    this.v_vanadium,
    this.li_lithium,
    this.rb_rubidium,
    this.zr_zirconium,
    this.omega_9_eruca,
    this.omega_3_stioride,
    this.omega_3_Docosahexaeno,
    this.beta_sitosterol,
    this.begenova,
    this.fructose,
    this.maltose,
    this.phytosterols,
    this.ti_titan,
    this.hydroxyproline,
    this.lignoceric,
    this.betaine,
    this.monoun_trans_fats,
    this.cis_16_1,
    this.cis_18_1,
    this.trance_18_1,
    this.mixed_isomers,
    this.omega_6_cis,
    this.conjugated_linoleic_acid,
    this.omega_3_alpha_linolenic,
    this.d3_vitamin_cholecalciferol,
    this.alpha_carotene,
    this.cryptoxanthin_beta,
    this.lutein_zeaxanthin,
    this.beta_tocopherol,
    this.gamma_tocopherol,
    this.trance_16_1,
    this.cis_22_1,
    this.omega_9_nervone,
    this.trans_isomer_undefined,
    this.omega_6_gamma_linolenic,
    this.trance_18_3,
    this.omega_6_eicosadieno,
    this.eicosatrieno,
    this.omega_6_20_3,
    this.omega_6_docosatetraeno,
    this.lycopene,
    this.tocopherol_delta,
    this.polyun_trans_fats,
    this.tridecane_13_0,
    this.omega_3,
    this.pentadecene,
    this.caffeine,
    this.theobromine,
    this.trans_trans,
    this.menaquinone_4,
    this.campesterol,
    this.stigmasterol,
    this.e_vitamin_added,
    this.b12_vitamin_added,
    this.trance_22_1,
    this.dihydrophylloquinone,
    this.d2_vitamin_ergocalciferol,
    this.omega_6_20_4,
    this.omega_3_geneico,
    this.phosphorus_protein_ratio,
    this.kilojoule,
  });
  /*
   factory FoodDbModel.init() => FoodDbModel(
        id: 0,
        id_product: 0,
        id_category: 0,
        id_source: 0,
      ); 
  */

  FoodDbModel copyWith({
    int? id,
    int? id_product,
    int? id_category,
    int? id_source,
    double? water,
    double? k_potassium,
    double? na_sodium,
    double? p_phosphorus,
    double? ca_calcium,
    double? proteins,
    double? calorie,
    double? carbohydrates,
    double? fats,
    double? feed_ash,
    double? a_vitamin,
    double? retinol,
    double? beta_carotene,
    double? b1_vitamin_thiamine,
    double? b2_vitamin_riboflavin,
    double? b5_vitamin,
    double? b6_vitamin_pyridoxine,
    double? b9_vitamin_folates,
    double? b12_vitamin_cobalamin,
    double? c_vitamin,
    double? e_vitamin,
    double? rr_vitamin,
    double? niacin,
    double? mg_magnesium,
    double? s_sulfur,
    double? cl_chlorine,
    double? fe_iron,
    double? i_iodine,
    double? co_cobalt,
    double? mn_manganese,
    double? cu_copper,
    double? mo_molybdenum,
    double? ni_nickel,
    double? se_selenium,
    double? f_fluorine,
    double? cr_chrome,
    double? zh_zinc,
    double? cholesterol,
    double? saturated_fatty_acids,
    double? myristina,
    double? palmitic,
    double? stearic,
    double? arachinova,
    double? mono_fatty_acids,
    double? palmitoleic,
    double? heptadecene,
    double? omega_9_oleic,
    double? omega_9_gadolein,
    double? poly_fatty_acids,
    double? linoleic,
    double? linolenic,
    double? arachidonic,
    double? omega_3_epk,
    double? omega_3_fatty_acids,
    double? omega_3_dpc,
    double? omega_6_fatty_acids,
    double? dietary_fiber,
    double? mono_di_saccharides,
    double? organic_acids,
    double? b4_vitamin,
    double? d_Vitamin_calciferol,
    double? h_vitamin_biotin,
    double? k_vitamin_phylloquinone,
    double? al_aluminium,
    double? sn_tin,
    double? sr_strontium,
    double? galactose,
    double? glucose_dextrose,
    double? lactose,
    double? essential_amino_acids,
    double? arginine,
    double? valin,
    double? histidine,
    double? isoleucine,
    double? leucine,
    double? lysine,
    double? methionine,
    double? methionine_cysteine,
    double? threonine,
    double? tryptophan,
    double? phenylalanine,
    double? phenylalanine_tyrosine,
    double? substitutable_amino_acids,
    double? alanine,
    double? aspartica_acid,
    double? glycine,
    double? glutamic_acid,
    double? proline,
    double? serin,
    double? tyrosine,
    double? cysteine,
    double? oil_4_0,
    double? capron,
    double? caprylic,
    double? caprine,
    double? laurin,
    double? pentadecane,
    double? margarine,
    double? myristolein,
    double? sucrose,
    double? trans_fats,
    double? starch_dextrins,
    double? ethyl_alcohol,
    double? si_silicon,
    double? b_bohr,
    double? v_vanadium,
    double? li_lithium,
    double? rb_rubidium,
    double? zr_zirconium,
    double? omega_9_eruca,
    double? omega_3_stioride,
    double? omega_3_Docosahexaeno,
    double? beta_sitosterol,
    double? begenova,
    double? fructose,
    double? maltose,
    double? phytosterols,
    double? ti_titan,
    double? hydroxyproline,
    double? lignoceric,
    double? betaine,
    double? monoun_trans_fats,
    double? cis_16_1,
    double? cis_18_1,
    double? trance_18_1,
    double? mixed_isomers,
    double? omega_6_cis,
    double? conjugated_linoleic_acid,
    double? omega_3_alpha_linolenic,
    double? d3_vitamin_cholecalciferol,
    double? alpha_carotene,
    double? cryptoxanthin_beta,
    double? lutein_zeaxanthin,
    double? beta_tocopherol,
    double? gamma_tocopherol,
    double? trance_16_1,
    double? cis_22_1,
    double? omega_9_nervone,
    double? trans_isomer_undefined,
    double? omega_6_gamma_linolenic,
    double? trance_18_3,
    double? omega_6_eicosadieno,
    double? eicosatrieno,
    double? omega_6_20_3,
    double? omega_6_docosatetraeno,
    double? lycopene,
    double? tocopherol_delta,
    double? polyun_trans_fats,
    double? tridecane_13_0,
    double? omega_3,
    double? pentadecene,
    double? caffeine,
    double? theobromine,
    double? trans_trans,
    double? menaquinone_4,
    double? campesterol,
    double? stigmasterol,
    double? e_vitamin_added,
    double? b12_vitamin_added,
    double? trance_22_1,
    double? dihydrophylloquinone,
    double? d2_vitamin_ergocalciferol,
    double? omega_6_20_4,
    double? omega_3_geneico,
    double? phosphorus_protein_ratio,
    double? kilojoule,
  }) {
    return FoodDbModel(
      id: id ?? this.id,
      id_product: id_product ?? this.id_product,
      id_category: id_category ?? this.id_category,
      id_source: id_source ?? this.id_source,
      water: water ?? this.water,
      k_potassium: k_potassium ?? this.k_potassium,
      na_sodium: na_sodium ?? this.na_sodium,
      p_phosphorus: p_phosphorus ?? this.p_phosphorus,
      ca_calcium: ca_calcium ?? this.ca_calcium,
      proteins: proteins ?? this.proteins,
      calorie: calorie ?? this.calorie,
      carbohydrates: carbohydrates ?? this.carbohydrates,
      fats: fats ?? this.fats,
      feed_ash: feed_ash ?? this.feed_ash,
      a_vitamin: a_vitamin ?? this.a_vitamin,
      retinol: retinol ?? this.retinol,
      beta_carotene: beta_carotene ?? this.beta_carotene,
      b1_vitamin_thiamine: b1_vitamin_thiamine ?? this.b1_vitamin_thiamine,
      b2_vitamin_riboflavin:
          b2_vitamin_riboflavin ?? this.b2_vitamin_riboflavin,
      b5_vitamin: b5_vitamin ?? this.b5_vitamin,
      b6_vitamin_pyridoxine:
          b6_vitamin_pyridoxine ?? this.b6_vitamin_pyridoxine,
      b9_vitamin_folates: b9_vitamin_folates ?? this.b9_vitamin_folates,
      b12_vitamin_cobalamin:
          b12_vitamin_cobalamin ?? this.b12_vitamin_cobalamin,
      c_vitamin: c_vitamin ?? this.c_vitamin,
      e_vitamin: e_vitamin ?? this.e_vitamin,
      rr_vitamin: rr_vitamin ?? this.rr_vitamin,
      niacin: niacin ?? this.niacin,
      mg_magnesium: mg_magnesium ?? this.mg_magnesium,
      s_sulfur: s_sulfur ?? this.s_sulfur,
      cl_chlorine: cl_chlorine ?? this.cl_chlorine,
      fe_iron: fe_iron ?? this.fe_iron,
      i_iodine: i_iodine ?? this.i_iodine,
      co_cobalt: co_cobalt ?? this.co_cobalt,
      mn_manganese: mn_manganese ?? this.mn_manganese,
      cu_copper: cu_copper ?? this.cu_copper,
      mo_molybdenum: mo_molybdenum ?? this.mo_molybdenum,
      ni_nickel: ni_nickel ?? this.ni_nickel,
      se_selenium: se_selenium ?? this.se_selenium,
      f_fluorine: f_fluorine ?? this.f_fluorine,
      cr_chrome: cr_chrome ?? this.cr_chrome,
      zh_zinc: zh_zinc ?? this.zh_zinc,
      cholesterol: cholesterol ?? this.cholesterol,
      saturated_fatty_acids:
          saturated_fatty_acids ?? this.saturated_fatty_acids,
      myristina: myristina ?? this.myristina,
      palmitic: palmitic ?? this.palmitic,
      stearic: stearic ?? this.stearic,
      arachinova: arachinova ?? this.arachinova,
      mono_fatty_acids: mono_fatty_acids ?? this.mono_fatty_acids,
      palmitoleic: palmitoleic ?? this.palmitoleic,
      heptadecene: heptadecene ?? this.heptadecene,
      omega_9_oleic: omega_9_oleic ?? this.omega_9_oleic,
      omega_9_gadolein: omega_9_gadolein ?? this.omega_9_gadolein,
      poly_fatty_acids: poly_fatty_acids ?? this.poly_fatty_acids,
      linoleic: linoleic ?? this.linoleic,
      linolenic: linolenic ?? this.linolenic,
      arachidonic: arachidonic ?? this.arachidonic,
      omega_3_epk: omega_3_epk ?? this.omega_3_epk,
      omega_3_fatty_acids: omega_3_fatty_acids ?? this.omega_3_fatty_acids,
      omega_3_dpc: omega_3_dpc ?? this.omega_3_dpc,
      omega_6_fatty_acids: omega_6_fatty_acids ?? this.omega_6_fatty_acids,
      dietary_fiber: dietary_fiber ?? this.dietary_fiber,
      mono_di_saccharides: mono_di_saccharides ?? this.mono_di_saccharides,
      organic_acids: organic_acids ?? this.organic_acids,
      b4_vitamin: b4_vitamin ?? this.b4_vitamin,
      d_Vitamin_calciferol: d_Vitamin_calciferol ?? this.d_Vitamin_calciferol,
      h_vitamin_biotin: h_vitamin_biotin ?? this.h_vitamin_biotin,
      k_vitamin_phylloquinone:
          k_vitamin_phylloquinone ?? this.k_vitamin_phylloquinone,
      al_aluminium: al_aluminium ?? this.al_aluminium,
      sn_tin: sn_tin ?? this.sn_tin,
      sr_strontium: sr_strontium ?? this.sr_strontium,
      galactose: galactose ?? this.galactose,
      glucose_dextrose: glucose_dextrose ?? this.glucose_dextrose,
      lactose: lactose ?? this.lactose,
      essential_amino_acids:
          essential_amino_acids ?? this.essential_amino_acids,
      arginine: arginine ?? this.arginine,
      valin: valin ?? this.valin,
      histidine: histidine ?? this.histidine,
      isoleucine: isoleucine ?? this.isoleucine,
      leucine: leucine ?? this.leucine,
      lysine: lysine ?? this.lysine,
      methionine: methionine ?? this.methionine,
      methionine_cysteine: methionine_cysteine ?? this.methionine_cysteine,
      threonine: threonine ?? this.threonine,
      tryptophan: tryptophan ?? this.tryptophan,
      phenylalanine: phenylalanine ?? this.phenylalanine,
      phenylalanine_tyrosine:
          phenylalanine_tyrosine ?? this.phenylalanine_tyrosine,
      substitutable_amino_acids:
          substitutable_amino_acids ?? this.substitutable_amino_acids,
      alanine: alanine ?? this.alanine,
      aspartica_acid: aspartica_acid ?? this.aspartica_acid,
      glycine: glycine ?? this.glycine,
      glutamic_acid: glutamic_acid ?? this.glutamic_acid,
      proline: proline ?? this.proline,
      serin: serin ?? this.serin,
      tyrosine: tyrosine ?? this.tyrosine,
      cysteine: cysteine ?? this.cysteine,
      oil_4_0: oil_4_0 ?? this.oil_4_0,
      capron: capron ?? this.capron,
      caprylic: caprylic ?? this.caprylic,
      caprine: caprine ?? this.caprine,
      laurin: laurin ?? this.laurin,
      pentadecane: pentadecane ?? this.pentadecane,
      margarine: margarine ?? this.margarine,
      myristolein: myristolein ?? this.myristolein,
      sucrose: sucrose ?? this.sucrose,
      trans_fats: trans_fats ?? this.trans_fats,
      starch_dextrins: starch_dextrins ?? this.starch_dextrins,
      ethyl_alcohol: ethyl_alcohol ?? this.ethyl_alcohol,
      si_silicon: si_silicon ?? this.si_silicon,
      b_bohr: b_bohr ?? this.b_bohr,
      v_vanadium: v_vanadium ?? this.v_vanadium,
      li_lithium: li_lithium ?? this.li_lithium,
      rb_rubidium: rb_rubidium ?? this.rb_rubidium,
      zr_zirconium: zr_zirconium ?? this.zr_zirconium,
      omega_9_eruca: omega_9_eruca ?? this.omega_9_eruca,
      omega_3_stioride: omega_3_stioride ?? this.omega_3_stioride,
      omega_3_Docosahexaeno:
          omega_3_Docosahexaeno ?? this.omega_3_Docosahexaeno,
      beta_sitosterol: beta_sitosterol ?? this.beta_sitosterol,
      begenova: begenova ?? this.begenova,
      fructose: fructose ?? this.fructose,
      maltose: maltose ?? this.maltose,
      phytosterols: phytosterols ?? this.phytosterols,
      ti_titan: ti_titan ?? this.ti_titan,
      hydroxyproline: hydroxyproline ?? this.hydroxyproline,
      lignoceric: lignoceric ?? this.lignoceric,
      betaine: betaine ?? this.betaine,
      monoun_trans_fats: monoun_trans_fats ?? this.monoun_trans_fats,
      cis_16_1: cis_16_1 ?? this.cis_16_1,
      cis_18_1: cis_18_1 ?? this.cis_18_1,
      trance_18_1: trance_18_1 ?? this.trance_18_1,
      mixed_isomers: mixed_isomers ?? this.mixed_isomers,
      omega_6_cis: omega_6_cis ?? this.omega_6_cis,
      conjugated_linoleic_acid:
          conjugated_linoleic_acid ?? this.conjugated_linoleic_acid,
      omega_3_alpha_linolenic:
          omega_3_alpha_linolenic ?? this.omega_3_alpha_linolenic,
      d3_vitamin_cholecalciferol:
          d3_vitamin_cholecalciferol ?? this.d3_vitamin_cholecalciferol,
      alpha_carotene: alpha_carotene ?? this.alpha_carotene,
      cryptoxanthin_beta: cryptoxanthin_beta ?? this.cryptoxanthin_beta,
      lutein_zeaxanthin: lutein_zeaxanthin ?? this.lutein_zeaxanthin,
      beta_tocopherol: beta_tocopherol ?? this.beta_tocopherol,
      gamma_tocopherol: gamma_tocopherol ?? this.gamma_tocopherol,
      trance_16_1: trance_16_1 ?? this.trance_16_1,
      cis_22_1: cis_22_1 ?? this.cis_22_1,
      omega_9_nervone: omega_9_nervone ?? this.omega_9_nervone,
      trans_isomer_undefined:
          trans_isomer_undefined ?? this.trans_isomer_undefined,
      omega_6_gamma_linolenic:
          omega_6_gamma_linolenic ?? this.omega_6_gamma_linolenic,
      trance_18_3: trance_18_3 ?? this.trance_18_3,
      omega_6_eicosadieno: omega_6_eicosadieno ?? this.omega_6_eicosadieno,
      eicosatrieno: eicosatrieno ?? this.eicosatrieno,
      omega_6_20_3: omega_6_20_3 ?? this.omega_6_20_3,
      omega_6_docosatetraeno:
          omega_6_docosatetraeno ?? this.omega_6_docosatetraeno,
      lycopene: lycopene ?? this.lycopene,
      tocopherol_delta: tocopherol_delta ?? this.tocopherol_delta,
      polyun_trans_fats: polyun_trans_fats ?? this.polyun_trans_fats,
      tridecane_13_0: tridecane_13_0 ?? this.tridecane_13_0,
      omega_3: omega_3 ?? this.omega_3,
      pentadecene: pentadecene ?? this.pentadecene,
      caffeine: caffeine ?? this.caffeine,
      theobromine: theobromine ?? this.theobromine,
      trans_trans: trans_trans ?? this.trans_trans,
      menaquinone_4: menaquinone_4 ?? this.menaquinone_4,
      campesterol: campesterol ?? this.campesterol,
      stigmasterol: stigmasterol ?? this.stigmasterol,
      e_vitamin_added: e_vitamin_added ?? this.e_vitamin_added,
      b12_vitamin_added: b12_vitamin_added ?? this.b12_vitamin_added,
      trance_22_1: trance_22_1 ?? this.trance_22_1,
      dihydrophylloquinone: dihydrophylloquinone ?? this.dihydrophylloquinone,
      d2_vitamin_ergocalciferol:
          d2_vitamin_ergocalciferol ?? this.d2_vitamin_ergocalciferol,
      omega_6_20_4: omega_6_20_4 ?? this.omega_6_20_4,
      omega_3_geneico: omega_3_geneico ?? this.omega_3_geneico,
      phosphorus_protein_ratio:
          phosphorus_protein_ratio ?? this.phosphorus_protein_ratio,
      kilojoule: kilojoule ?? this.kilojoule,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'id_product': id_product,
      'id_category': id_category,
      'id_source': id_source,
      'water': water,
      'k_potassium': k_potassium,
      'na_sodium': na_sodium,
      'p_phosphorus': p_phosphorus,
      'ca_calcium': ca_calcium,
      'proteins': proteins,
      'calorie': calorie,
      'carbohydrates': carbohydrates,
      'fats': fats,
      'feed_ash': feed_ash,
      'a_vitamin': a_vitamin,
      'retinol': retinol,
      'beta_carotene': beta_carotene,
      'b1_vitamin_thiamine': b1_vitamin_thiamine,
      'b2_vitamin_riboflavin': b2_vitamin_riboflavin,
      'b5_vitamin': b5_vitamin,
      'b6_vitamin_pyridoxine': b6_vitamin_pyridoxine,
      'b9_vitamin_folates': b9_vitamin_folates,
      'b12_vitamin_cobalamin': b12_vitamin_cobalamin,
      'c_vitamin': c_vitamin,
      'e_vitamin': e_vitamin,
      'rr_vitamin': rr_vitamin,
      'niacin': niacin,
      'mg_magnesium': mg_magnesium,
      's_sulfur': s_sulfur,
      'cl_chlorine': cl_chlorine,
      'fe_iron': fe_iron,
      'i_iodine': i_iodine,
      'co_cobalt': co_cobalt,
      'mn_manganese': mn_manganese,
      'cu_copper': cu_copper,
      'mo_molybdenum': mo_molybdenum,
      'ni_nickel': ni_nickel,
      'se_selenium': se_selenium,
      'f_fluorine': f_fluorine,
      'cr_chrome': cr_chrome,
      'zh_zinc': zh_zinc,
      'cholesterol': cholesterol,
      'saturated_fatty_acids': saturated_fatty_acids,
      'myristina': myristina,
      'palmitic': palmitic,
      'stearic': stearic,
      'arachinova': arachinova,
      'mono_fatty_acids': mono_fatty_acids,
      'palmitoleic': palmitoleic,
      'heptadecene': heptadecene,
      'omega_9_oleic': omega_9_oleic,
      'omega_9_gadolein': omega_9_gadolein,
      'poly_fatty_acids': poly_fatty_acids,
      'linoleic': linoleic,
      'linolenic': linolenic,
      'arachidonic': arachidonic,
      'omega_3_epk': omega_3_epk,
      'omega_3_fatty_acids': omega_3_fatty_acids,
      'omega_3_dpc': omega_3_dpc,
      'omega_6_fatty_acids': omega_6_fatty_acids,
      'dietary_fiber': dietary_fiber,
      'mono_di_saccharides': mono_di_saccharides,
      'organic_acids': organic_acids,
      'b4_vitamin': b4_vitamin,
      'd_Vitamin_calciferol': d_Vitamin_calciferol,
      'h_vitamin_biotin': h_vitamin_biotin,
      'k_vitamin_phylloquinone': k_vitamin_phylloquinone,
      'al_aluminium': al_aluminium,
      'sn_tin': sn_tin,
      'sr_strontium': sr_strontium,
      'galactose': galactose,
      'glucose_dextrose': glucose_dextrose,
      'lactose': lactose,
      'essential_amino_acids': essential_amino_acids,
      'arginine': arginine,
      'valin': valin,
      'histidine': histidine,
      'isoleucine': isoleucine,
      'leucine': leucine,
      'lysine': lysine,
      'methionine': methionine,
      'methionine_cysteine': methionine_cysteine,
      'threonine': threonine,
      'tryptophan': tryptophan,
      'phenylalanine': phenylalanine,
      'phenylalanine_tyrosine': phenylalanine_tyrosine,
      'substitutable_amino_acids': substitutable_amino_acids,
      'alanine': alanine,
      'aspartica_acid': aspartica_acid,
      'glycine': glycine,
      'glutamic_acid': glutamic_acid,
      'proline': proline,
      'serin': serin,
      'tyrosine': tyrosine,
      'cysteine': cysteine,
      'oil_4_0': oil_4_0,
      'capron': capron,
      'caprylic': caprylic,
      'caprine': caprine,
      'laurin': laurin,
      'pentadecane': pentadecane,
      'margarine': margarine,
      'myristolein': myristolein,
      'sucrose': sucrose,
      'trans_fats': trans_fats,
      'starch_dextrins': starch_dextrins,
      'ethyl_alcohol': ethyl_alcohol,
      'si_silicon': si_silicon,
      'b_bohr': b_bohr,
      'v_vanadium': v_vanadium,
      'li_lithium': li_lithium,
      'rb_rubidium': rb_rubidium,
      'zr_zirconium': zr_zirconium,
      'omega_9_eruca': omega_9_eruca,
      'omega_3_stioride': omega_3_stioride,
      'omega_3_Docosahexaeno': omega_3_Docosahexaeno,
      'beta_sitosterol': beta_sitosterol,
      'begenova': begenova,
      'fructose': fructose,
      'maltose': maltose,
      'phytosterols': phytosterols,
      'ti_titan': ti_titan,
      'hydroxyproline': hydroxyproline,
      'lignoceric': lignoceric,
      'betaine': betaine,
      'monoun_trans_fats': monoun_trans_fats,
      'cis_16_1': cis_16_1,
      'cis_18_1': cis_18_1,
      'trance_18_1': trance_18_1,
      'mixed_isomers': mixed_isomers,
      'omega_6_cis': omega_6_cis,
      'conjugated_linoleic_acid': conjugated_linoleic_acid,
      'omega_3_alpha_linolenic': omega_3_alpha_linolenic,
      'd3_vitamin_cholecalciferol': d3_vitamin_cholecalciferol,
      'alpha_carotene': alpha_carotene,
      'cryptoxanthin_beta': cryptoxanthin_beta,
      'lutein_zeaxanthin': lutein_zeaxanthin,
      'beta_tocopherol': beta_tocopherol,
      'gamma_tocopherol': gamma_tocopherol,
      'trance_16_1': trance_16_1,
      'cis_22_1': cis_22_1,
      'omega_9_nervone': omega_9_nervone,
      'trans_isomer_undefined': trans_isomer_undefined,
      'omega_6_gamma_linolenic': omega_6_gamma_linolenic,
      'trance_18_3': trance_18_3,
      'omega_6_eicosadieno': omega_6_eicosadieno,
      'eicosatrieno': eicosatrieno,
      'omega_6_20_3': omega_6_20_3,
      'omega_6_docosatetraeno': omega_6_docosatetraeno,
      'lycopene': lycopene,
      'tocopherol_delta': tocopherol_delta,
      'polyun_trans_fats': polyun_trans_fats,
      'tridecane_13_0': tridecane_13_0,
      'omega_3': omega_3,
      'pentadecene': pentadecene,
      'caffeine': caffeine,
      'theobromine': theobromine,
      'trans_trans': trans_trans,
      'menaquinone_4': menaquinone_4,
      'campesterol': campesterol,
      'stigmasterol': stigmasterol,
      'e_vitamin_added': e_vitamin_added,
      'b12_vitamin_added': b12_vitamin_added,
      'trance_22_1': trance_22_1,
      'dihydrophylloquinone': dihydrophylloquinone,
      'd2_vitamin_ergocalciferol': d2_vitamin_ergocalciferol,
      'omega_6_20_4': omega_6_20_4,
      'omega_3_geneico': omega_3_geneico,
      'phosphorus_protein_ratio': phosphorus_protein_ratio,
      'kilojoule': kilojoule,
    };
  }

  factory FoodDbModel.fromMap(Map<String, dynamic> map) {
    return FoodDbModel(
      id: map['id'] as int,
      id_product: map['id_product'] as int,
      id_category: map['id_category'] as int,
      id_source: map['id_source'] as int,
      water: (map['water'] as num?)?.toDouble(),
      k_potassium: (map['k_potassium'] as num?)?.toDouble(),
      na_sodium: (map['na_sodium'] as num?)?.toDouble(),
      p_phosphorus: (map['p_phosphorus'] as num?)?.toDouble(),
      ca_calcium: (map['ca_calcium'] as num?)?.toDouble(),
      proteins: (map['proteins'] as num?)?.toDouble(),
      calorie: (map['calorie'] as num?)?.toDouble(),
      carbohydrates: (map['carbohydrates'] as num?)?.toDouble(),
      fats: (map['fats'] as num?)?.toDouble(),
      feed_ash: (map['feed_ash'] as num?)?.toDouble(),
      a_vitamin: (map['a_vitamin'] as num?)?.toDouble(),
      retinol: (map['retinol'] as num?)?.toDouble(),
      beta_carotene: (map['beta_carotene'] as num?)?.toDouble(),
      b1_vitamin_thiamine: (map['b1_vitamin_thiamine'] as num?)?.toDouble(),
      b2_vitamin_riboflavin: (map['b2_vitamin_riboflavin'] as num?)?.toDouble(),
      b5_vitamin: (map['b5_vitamin'] as num?)?.toDouble(),
      b6_vitamin_pyridoxine: (map['b6_vitamin_pyridoxine'] as num?)?.toDouble(),
      b9_vitamin_folates: (map['b9_vitamin_folates'] as num?)?.toDouble(),
      b12_vitamin_cobalamin: (map['b12_vitamin_cobalamin'] as num?)?.toDouble(),
      c_vitamin: (map['c_vitamin'] as num?)?.toDouble(),
      e_vitamin: (map['e_vitamin'] as num?)?.toDouble(),
      rr_vitamin: (map['rr_vitamin'] as num?)?.toDouble(),
      niacin: (map['niacin'] as num?)?.toDouble(),
      mg_magnesium: (map['mg_magnesium'] as num?)?.toDouble(),
      s_sulfur: (map['s_sulfur'] as num?)?.toDouble(),
      cl_chlorine: (map['cl_chlorine'] as num?)?.toDouble(),
      fe_iron: (map['fe_iron'] as num?)?.toDouble(),
      i_iodine: (map['i_iodine'] as num?)?.toDouble(),
      co_cobalt: (map['co_cobalt'] as num?)?.toDouble(),
      mn_manganese: (map['mn_manganese'] as num?)?.toDouble(),
      cu_copper: (map['cu_copper'] as num?)?.toDouble(),
      mo_molybdenum: (map['mo_molybdenum'] as num?)?.toDouble(),
      ni_nickel: (map['ni_nickel'] as num?)?.toDouble(),
      se_selenium: (map['se_selenium'] as num?)?.toDouble(),
      f_fluorine: (map['f_fluorine'] as num?)?.toDouble(),
      cr_chrome: (map['cr_chrome'] as num?)?.toDouble(),
      zh_zinc: (map['zh_zinc'] as num?)?.toDouble(),
      cholesterol: (map['cholesterol'] as num?)?.toDouble(),
      saturated_fatty_acids: (map['saturated_fatty_acids'] as num?)?.toDouble(),
      myristina: (map['myristina'] as num?)?.toDouble(),
      palmitic: (map['palmitic'] as num?)?.toDouble(),
      stearic: (map['stearic'] as num?)?.toDouble(),
      arachinova: (map['arachinova'] as num?)?.toDouble(),
      mono_fatty_acids: (map['mono_fatty_acids'] as num?)?.toDouble(),
      palmitoleic: (map['palmitoleic'] as num?)?.toDouble(),
      heptadecene: (map['heptadecene'] as num?)?.toDouble(),
      omega_9_oleic: (map['omega_9_oleic'] as num?)?.toDouble(),
      omega_9_gadolein: (map['omega_9_gadolein'] as num?)?.toDouble(),
      poly_fatty_acids: (map['poly_fatty_acids'] as num?)?.toDouble(),
      linoleic: (map['linoleic'] as num?)?.toDouble(),
      linolenic: (map['linolenic'] as num?)?.toDouble(),
      arachidonic: (map['arachidonic'] as num?)?.toDouble(),
      omega_3_epk: (map['omega_3_epk'] as num?)?.toDouble(),
      omega_3_fatty_acids: (map['omega_3_fatty_acids'] as num?)?.toDouble(),
      omega_3_dpc: (map['omega_3_dpc'] as num?)?.toDouble(),
      omega_6_fatty_acids: (map['omega_6_fatty_acids'] as num?)?.toDouble(),
      dietary_fiber: (map['dietary_fiber'] as num?)?.toDouble(),
      mono_di_saccharides: (map['mono_di_saccharides'] as num?)?.toDouble(),
      organic_acids: (map['organic_acids'] as num?)?.toDouble(),
      b4_vitamin: (map['b4_vitamin'] as num?)?.toDouble(),
      d_Vitamin_calciferol: (map['d_Vitamin_calciferol'] as num?)?.toDouble(),
      h_vitamin_biotin: (map['h_vitamin_biotin'] as num?)?.toDouble(),
      k_vitamin_phylloquinone:
          (map['k_vitamin_phylloquinone'] as num?)?.toDouble(),
      al_aluminium: (map['al_aluminium'] as num?)?.toDouble(),
      sn_tin: (map['sn_tin'] as num?)?.toDouble(),
      sr_strontium: (map['sr_strontium'] as num?)?.toDouble(),
      galactose: (map['galactose'] as num?)?.toDouble(),
      glucose_dextrose: (map['glucose_dextrose'] as num?)?.toDouble(),
      lactose: (map['lactose'] as num?)?.toDouble(),
      essential_amino_acids: (map['essential_amino_acids'] as num?)?.toDouble(),
      arginine: (map['arginine'] as num?)?.toDouble(),
      valin: (map['valin'] as num?)?.toDouble(),
      histidine: (map['histidine'] as num?)?.toDouble(),
      isoleucine: (map['isoleucine'] as num?)?.toDouble(),
      leucine: (map['leucine'] as num?)?.toDouble(),
      lysine: (map['lysine'] as num?)?.toDouble(),
      methionine: (map['methionine'] as num?)?.toDouble(),
      methionine_cysteine: (map['methionine_cysteine'] as num?)?.toDouble(),
      threonine: (map['threonine'] as num?)?.toDouble(),
      tryptophan: (map['tryptophan'] as num?)?.toDouble(),
      phenylalanine: (map['phenylalanine'] as num?)?.toDouble(),
      phenylalanine_tyrosine:
          (map['phenylalanine_tyrosine'] as num?)?.toDouble(),
      substitutable_amino_acids:
          (map['substitutable_amino_acids'] as num?)?.toDouble(),
      alanine: (map['alanine'] as num?)?.toDouble(),
      aspartica_acid: (map['aspartica_acid'] as num?)?.toDouble(),
      glycine: (map['glycine'] as num?)?.toDouble(),
      glutamic_acid: (map['glutamic_acid'] as num?)?.toDouble(),
      proline: (map['proline'] as num?)?.toDouble(),
      serin: (map['serin'] as num?)?.toDouble(),
      tyrosine: (map['tyrosine'] as num?)?.toDouble(),
      cysteine: (map['cysteine'] as num?)?.toDouble(),
      oil_4_0: (map['oil_4_0'] as num?)?.toDouble(),
      capron: (map['capron'] as num?)?.toDouble(),
      caprylic: (map['caprylic'] as num?)?.toDouble(),
      caprine: (map['caprine'] as num?)?.toDouble(),
      laurin: (map['laurin'] as num?)?.toDouble(),
      pentadecane: (map['pentadecane'] as num?)?.toDouble(),
      margarine: (map['margarine'] as num?)?.toDouble(),
      myristolein: (map['myristolein'] as num?)?.toDouble(),
      sucrose: (map['sucrose'] as num?)?.toDouble(),
      trans_fats: (map['trans_fats'] as num?)?.toDouble(),
      starch_dextrins: (map['starch_dextrins'] as num?)?.toDouble(),
      ethyl_alcohol: (map['ethyl_alcohol'] as num?)?.toDouble(),
      si_silicon: (map['si_silicon'] as num?)?.toDouble(),
      b_bohr: (map['b_bohr'] as num?)?.toDouble(),
      v_vanadium: (map['v_vanadium'] as num?)?.toDouble(),
      li_lithium: (map['li_lithium'] as num?)?.toDouble(),
      rb_rubidium: (map['rb_rubidium'] as num?)?.toDouble(),
      zr_zirconium: (map['zr_zirconium'] as num?)?.toDouble(),
      omega_9_eruca: (map['omega_9_eruca'] as num?)?.toDouble(),
      omega_3_stioride: (map['omega_3_stioride'] as num?)?.toDouble(),
      omega_3_Docosahexaeno: (map['omega_3_Docosahexaeno'] as num?)?.toDouble(),
      beta_sitosterol: (map['beta_sitosterol'] as num?)?.toDouble(),
      begenova: (map['begenova'] as num?)?.toDouble(),
      fructose: (map['fructose'] as num?)?.toDouble(),
      maltose: (map['maltose'] as num?)?.toDouble(),
      phytosterols: (map['phytosterols'] as num?)?.toDouble(),
      ti_titan: (map['ti_titan'] as num?)?.toDouble(),
      hydroxyproline: (map['hydroxyproline'] as num?)?.toDouble(),
      lignoceric: (map['lignoceric'] as num?)?.toDouble(),
      betaine: (map['betaine'] as num?)?.toDouble(),
      monoun_trans_fats: (map['monoun_trans_fats'] as num?)?.toDouble(),
      cis_16_1: (map['cis_16_1'] as num?)?.toDouble(),
      cis_18_1: (map['cis_18_1'] as num?)?.toDouble(),
      trance_18_1: (map['trance_18_1'] as num?)?.toDouble(),
      mixed_isomers: (map['mixed_isomers'] as num?)?.toDouble(),
      omega_6_cis: (map['omega_6_cis'] as num?)?.toDouble(),
      conjugated_linoleic_acid:
          (map['conjugated_linoleic_acid'] as num?)?.toDouble(),
      omega_3_alpha_linolenic:
          (map['omega_3_alpha_linolenic'] as num?)?.toDouble(),
      d3_vitamin_cholecalciferol:
          (map['d3_vitamin_cholecalciferol'] as num?)?.toDouble(),
      alpha_carotene: (map['alpha_carotene'] as num?)?.toDouble(),
      cryptoxanthin_beta: (map['cryptoxanthin_beta'] as num?)?.toDouble(),
      lutein_zeaxanthin: (map['lutein_zeaxanthin'] as num?)?.toDouble(),
      beta_tocopherol: (map['beta_tocopherol'] as num?)?.toDouble(),
      gamma_tocopherol: (map['gamma_tocopherol'] as num?)?.toDouble(),
      trance_16_1: (map['trance_16_1'] as num?)?.toDouble(),
      cis_22_1: (map['cis_22_1'] as num?)?.toDouble(),
      omega_9_nervone: (map['omega_9_nervone'] as num?)?.toDouble(),
      trans_isomer_undefined:
          (map['trans_isomer_undefined'] as num?)?.toDouble(),
      omega_6_gamma_linolenic:
          (map['omega_6_gamma_linolenic'] as num?)?.toDouble(),
      trance_18_3: (map['trance_18_3'] as num?)?.toDouble(),
      omega_6_eicosadieno: (map['omega_6_eicosadieno'] as num?)?.toDouble(),
      eicosatrieno: (map['eicosatrieno'] as num?)?.toDouble(),
      omega_6_20_3: (map['omega_6_20_3'] as num?)?.toDouble(),
      omega_6_docosatetraeno:
          (map['omega_6_docosatetraeno'] as num?)?.toDouble(),
      lycopene: (map['lycopene'] as num?)?.toDouble(),
      tocopherol_delta: (map['tocopherol_delta'] as num?)?.toDouble(),
      polyun_trans_fats: (map['polyun_trans_fats'] as num?)?.toDouble(),
      tridecane_13_0: (map['tridecane_13_0'] as num?)?.toDouble(),
      omega_3: (map['omega_3'] as num?)?.toDouble(),
      pentadecene: (map['pentadecene'] as num?)?.toDouble(),
      caffeine: (map['caffeine'] as num?)?.toDouble(),
      theobromine: (map['theobromine'] as num?)?.toDouble(),
      trans_trans: (map['trans_trans'] as num?)?.toDouble(),
      menaquinone_4: (map['menaquinone_4'] as num?)?.toDouble(),
      campesterol: (map['campesterol'] as num?)?.toDouble(),
      stigmasterol: (map['stigmasterol'] as num?)?.toDouble(),
      e_vitamin_added: (map['e_vitamin_added'] as num?)?.toDouble(),
      b12_vitamin_added: (map['b12_vitamin_added'] as num?)?.toDouble(),
      trance_22_1: (map['trance_22_1'] as num?)?.toDouble(),
      dihydrophylloquinone: (map['dihydrophylloquinone'] as num?)?.toDouble(),
      d2_vitamin_ergocalciferol:
          (map['d2_vitamin_ergocalciferol'] as num?)?.toDouble(),
      omega_6_20_4: (map['omega_6_20_4'] as num?)?.toDouble(),
      omega_3_geneico: (map['omega_3_geneico'] as num?)?.toDouble(),
      phosphorus_protein_ratio:
          (map['phosphorus_protein_ratio'] as num?)?.toDouble(),
      kilojoule: (map['kilojoule'] as num?)?.toDouble(),
    );
  }
  @override
  String toString() {
    return 'FoodDbModel(id: $id, id_product: $id_product, id_category: $id_category, id_source: $id_source, water: $water, k_potassium: $k_potassium, na_sodium: $na_sodium, p_phosphorus: $p_phosphorus, ca_calcium: $ca_calcium, proteins: $proteins, calorie: $calorie, carbohydrates: $carbohydrates, fats: $fats, feed_ash: $feed_ash, a_vitamin: $a_vitamin, retinol: $retinol, beta_carotene: $beta_carotene, b1_vitamin_thiamine: $b1_vitamin_thiamine, b2_vitamin_riboflavin: $b2_vitamin_riboflavin, b5_vitamin: $b5_vitamin, b6_vitamin_pyridoxine: $b6_vitamin_pyridoxine, b9_vitamin_folates: $b9_vitamin_folates, b12_vitamin_cobalamin: $b12_vitamin_cobalamin, c_vitamin: $c_vitamin, e_vitamin: $e_vitamin, rr_vitamin: $rr_vitamin, niacin: $niacin, mg_magnesium: $mg_magnesium, s_sulfur: $s_sulfur, cl_chlorine: $cl_chlorine, fe_iron: $fe_iron, i_iodine: $i_iodine, co_cobalt: $co_cobalt, mn_manganese: $mn_manganese, cu_copper: $cu_copper, mo_molybdenum: $mo_molybdenum, ni_nickel: $ni_nickel, se_selenium: $se_selenium, f_fluorine: $f_fluorine, cr_chrome: $cr_chrome, zh_zinc: $zh_zinc, cholesterol: $cholesterol, saturated_fatty_acids: $saturated_fatty_acids, myristina: $myristina, palmitic: $palmitic, stearic: $stearic, arachinova: $arachinova, mono_fatty_acids: $mono_fatty_acids, palmitoleic: $palmitoleic, heptadecene: $heptadecene, omega_9_oleic: $omega_9_oleic, omega_9_gadolein: $omega_9_gadolein, poly_fatty_acids: $poly_fatty_acids, linoleic: $linoleic, linolenic: $linolenic, arachidonic: $arachidonic, omega_3_epk: $omega_3_epk, omega_3_fatty_acids: $omega_3_fatty_acids, omega_3_dpc: $omega_3_dpc, omega_6_fatty_acids: $omega_6_fatty_acids, dietary_fiber: $dietary_fiber, mono_di_saccharides: $mono_di_saccharides, organic_acids: $organic_acids, b4_vitamin: $b4_vitamin, d_Vitamin_calciferol: $d_Vitamin_calciferol, h_vitamin_biotin: $h_vitamin_biotin, k_vitamin_phylloquinone: $k_vitamin_phylloquinone, al_aluminium: $al_aluminium, sn_tin: $sn_tin, sr_strontium: $sr_strontium, galactose: $galactose, glucose_dextrose: $glucose_dextrose, lactose: $lactose, essential_amino_acids: $essential_amino_acids, arginine: $arginine, valin: $valin, histidine: $histidine, isoleucine: $isoleucine, leucine: $leucine, lysine: $lysine, methionine: $methionine, methionine_cysteine: $methionine_cysteine, threonine: $threonine, tryptophan: $tryptophan, phenylalanine: $phenylalanine, phenylalanine_tyrosine: $phenylalanine_tyrosine, substitutable_amino_acids: $substitutable_amino_acids, alanine: $alanine, aspartica_acid: $aspartica_acid, glycine: $glycine, glutamic_acid: $glutamic_acid, proline: $proline, serin: $serin, tyrosine: $tyrosine, cysteine: $cysteine, oil_4_0: $oil_4_0, capron: $capron, caprylic: $caprylic, caprine: $caprine, laurin: $laurin, pentadecane: $pentadecane, margarine: $margarine, myristolein: $myristolein, sucrose: $sucrose, trans_fats: $trans_fats, starch_dextrins: $starch_dextrins, ethyl_alcohol: $ethyl_alcohol, si_silicon: $si_silicon, b_bohr: $b_bohr, v_vanadium: $v_vanadium, li_lithium: $li_lithium, rb_rubidium: $rb_rubidium, zr_zirconium: $zr_zirconium, omega_9_eruca: $omega_9_eruca, omega_3_stioride: $omega_3_stioride, omega_3_Docosahexaeno: $omega_3_Docosahexaeno, beta_sitosterol: $beta_sitosterol, begenova: $begenova, fructose: $fructose, maltose: $maltose, phytosterols: $phytosterols, ti_titan: $ti_titan, hydroxyproline: $hydroxyproline, lignoceric: $lignoceric, betaine: $betaine, monoun_trans_fats: $monoun_trans_fats, cis_16_1: $cis_16_1, cis_18_1: $cis_18_1, trance_18_1: $trance_18_1, mixed_isomers: $mixed_isomers, omega_6_cis: $omega_6_cis, conjugated_linoleic_acid: $conjugated_linoleic_acid, omega_3_alpha_linolenic: $omega_3_alpha_linolenic, d3_vitamin_cholecalciferol: $d3_vitamin_cholecalciferol, alpha_carotene: $alpha_carotene, cryptoxanthin_beta: $cryptoxanthin_beta, lutein_zeaxanthin: $lutein_zeaxanthin, beta_tocopherol: $beta_tocopherol, gamma_tocopherol: $gamma_tocopherol, trance_16_1: $trance_16_1, cis_22_1: $cis_22_1, omega_9_nervone: $omega_9_nervone, trans_isomer_undefined: $trans_isomer_undefined, omega_6_gamma_linolenic: $omega_6_gamma_linolenic, trance_18_3: $trance_18_3, omega_6_eicosadieno: $omega_6_eicosadieno, eicosatrieno: $eicosatrieno, omega_6_20_3: $omega_6_20_3, omega_6_docosatetraeno: $omega_6_docosatetraeno, lycopene: $lycopene, tocopherol_delta: $tocopherol_delta, polyun_trans_fats: $polyun_trans_fats, tridecane_13_0: $tridecane_13_0, omega_3: $omega_3, pentadecene: $pentadecene, caffeine: $caffeine, theobromine: $theobromine, trans_trans: $trans_trans, menaquinone_4: $menaquinone_4, campesterol: $campesterol, stigmasterol: $stigmasterol, e_vitamin_added: $e_vitamin_added, b12_vitamin_added: $b12_vitamin_added, trance_22_1: $trance_22_1, dihydrophylloquinone: $dihydrophylloquinone, d2_vitamin_ergocalciferol: $d2_vitamin_ergocalciferol, omega_6_20_4: $omega_6_20_4, omega_3_geneico: $omega_3_geneico, phosphorus_protein_ratio: $phosphorus_protein_ratio, kilojoule: $kilojoule, )';
  }

  String toJson() => json.encode(toMap());

  factory FoodDbModel.fromJson(String source) =>
      FoodDbModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FoodDbModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.id_product, id_product) ||
                other.id_product == id_product) &&
            (identical(other.id_category, id_category) ||
                other.id_category == id_category) &&
            (identical(other.id_source, id_source) ||
                other.id_source == id_source) &&
            (identical(other.water, water) || other.water == water) &&
            (identical(other.k_potassium, k_potassium) ||
                other.k_potassium == k_potassium) &&
            (identical(other.na_sodium, na_sodium) ||
                other.na_sodium == na_sodium) &&
            (identical(other.p_phosphorus, p_phosphorus) ||
                other.p_phosphorus == p_phosphorus) &&
            (identical(other.ca_calcium, ca_calcium) ||
                other.ca_calcium == ca_calcium) &&
            (identical(other.proteins, proteins) ||
                other.proteins == proteins) &&
            (identical(other.calorie, calorie) || other.calorie == calorie) &&
            (identical(other.carbohydrates, carbohydrates) ||
                other.carbohydrates == carbohydrates) &&
            (identical(other.fats, fats) || other.fats == fats) &&
            (identical(other.feed_ash, feed_ash) ||
                other.feed_ash == feed_ash) &&
            (identical(other.a_vitamin, a_vitamin) ||
                other.a_vitamin == a_vitamin) &&
            (identical(other.retinol, retinol) || other.retinol == retinol) &&
            (identical(other.beta_carotene, beta_carotene) ||
                other.beta_carotene == beta_carotene) &&
            (identical(other.b1_vitamin_thiamine, b1_vitamin_thiamine) ||
                other.b1_vitamin_thiamine == b1_vitamin_thiamine) &&
            (identical(other.b2_vitamin_riboflavin, b2_vitamin_riboflavin) ||
                other.b2_vitamin_riboflavin == b2_vitamin_riboflavin) &&
            (identical(other.b5_vitamin, b5_vitamin) ||
                other.b5_vitamin == b5_vitamin) &&
            (identical(other.b6_vitamin_pyridoxine, b6_vitamin_pyridoxine) ||
                other.b6_vitamin_pyridoxine == b6_vitamin_pyridoxine) &&
            (identical(other.b9_vitamin_folates, b9_vitamin_folates) ||
                other.b9_vitamin_folates == b9_vitamin_folates) &&
            (identical(other.b12_vitamin_cobalamin, b12_vitamin_cobalamin) ||
                other.b12_vitamin_cobalamin == b12_vitamin_cobalamin) &&
            (identical(other.c_vitamin, c_vitamin) ||
                other.c_vitamin == c_vitamin) &&
            (identical(other.e_vitamin, e_vitamin) ||
                other.e_vitamin == e_vitamin) &&
            (identical(other.rr_vitamin, rr_vitamin) ||
                other.rr_vitamin == rr_vitamin) &&
            (identical(other.niacin, niacin) || other.niacin == niacin) &&
            (identical(other.mg_magnesium, mg_magnesium) ||
                other.mg_magnesium == mg_magnesium) &&
            (identical(other.s_sulfur, s_sulfur) ||
                other.s_sulfur == s_sulfur) &&
            (identical(other.cl_chlorine, cl_chlorine) ||
                other.cl_chlorine == cl_chlorine) &&
            (identical(other.fe_iron, fe_iron) || other.fe_iron == fe_iron) &&
            (identical(other.i_iodine, i_iodine) ||
                other.i_iodine == i_iodine) &&
            (identical(other.co_cobalt, co_cobalt) ||
                other.co_cobalt == co_cobalt) &&
            (identical(other.mn_manganese, mn_manganese) ||
                other.mn_manganese == mn_manganese) &&
            (identical(other.cu_copper, cu_copper) ||
                other.cu_copper == cu_copper) &&
            (identical(other.mo_molybdenum, mo_molybdenum) ||
                other.mo_molybdenum == mo_molybdenum) &&
            (identical(other.ni_nickel, ni_nickel) ||
                other.ni_nickel == ni_nickel) &&
            (identical(other.se_selenium, se_selenium) ||
                other.se_selenium == se_selenium) &&
            (identical(other.f_fluorine, f_fluorine) ||
                other.f_fluorine == f_fluorine) &&
            (identical(other.cr_chrome, cr_chrome) ||
                other.cr_chrome == cr_chrome) &&
            (identical(other.zh_zinc, zh_zinc) || other.zh_zinc == zh_zinc) &&
            (identical(other.cholesterol, cholesterol) ||
                other.cholesterol == cholesterol) &&
            (identical(other.saturated_fatty_acids, saturated_fatty_acids) ||
                other.saturated_fatty_acids == saturated_fatty_acids) &&
            (identical(other.myristina, myristina) ||
                other.myristina == myristina) &&
            (identical(other.palmitic, palmitic) ||
                other.palmitic == palmitic) &&
            (identical(other.stearic, stearic) || other.stearic == stearic) &&
            (identical(other.arachinova, arachinova) ||
                other.arachinova == arachinova) &&
            (identical(other.mono_fatty_acids, mono_fatty_acids) ||
                other.mono_fatty_acids == mono_fatty_acids) &&
            (identical(other.palmitoleic, palmitoleic) ||
                other.palmitoleic == palmitoleic) &&
            (identical(other.heptadecene, heptadecene) ||
                other.heptadecene == heptadecene) &&
            (identical(other.omega_9_oleic, omega_9_oleic) ||
                other.omega_9_oleic == omega_9_oleic) &&
            (identical(other.omega_9_gadolein, omega_9_gadolein) ||
                other.omega_9_gadolein == omega_9_gadolein) &&
            (identical(other.poly_fatty_acids, poly_fatty_acids) || other.poly_fatty_acids == poly_fatty_acids) &&
            (identical(other.linoleic, linoleic) || other.linoleic == linoleic) &&
            (identical(other.linolenic, linolenic) || other.linolenic == linolenic) &&
            (identical(other.arachidonic, arachidonic) || other.arachidonic == arachidonic) &&
            (identical(other.omega_3_epk, omega_3_epk) || other.omega_3_epk == omega_3_epk) &&
            (identical(other.omega_3_fatty_acids, omega_3_fatty_acids) || other.omega_3_fatty_acids == omega_3_fatty_acids) &&
            (identical(other.omega_3_dpc, omega_3_dpc) || other.omega_3_dpc == omega_3_dpc) &&
            (identical(other.omega_6_fatty_acids, omega_6_fatty_acids) || other.omega_6_fatty_acids == omega_6_fatty_acids) &&
            (identical(other.dietary_fiber, dietary_fiber) || other.dietary_fiber == dietary_fiber) &&
            (identical(other.mono_di_saccharides, mono_di_saccharides) || other.mono_di_saccharides == mono_di_saccharides) &&
            (identical(other.organic_acids, organic_acids) || other.organic_acids == organic_acids) &&
            (identical(other.b4_vitamin, b4_vitamin) || other.b4_vitamin == b4_vitamin) &&
            (identical(other.d_Vitamin_calciferol, d_Vitamin_calciferol) || other.d_Vitamin_calciferol == d_Vitamin_calciferol) &&
            (identical(other.h_vitamin_biotin, h_vitamin_biotin) || other.h_vitamin_biotin == h_vitamin_biotin) &&
            (identical(other.k_vitamin_phylloquinone, k_vitamin_phylloquinone) || other.k_vitamin_phylloquinone == k_vitamin_phylloquinone) &&
            (identical(other.al_aluminium, al_aluminium) || other.al_aluminium == al_aluminium) &&
            (identical(other.sn_tin, sn_tin) || other.sn_tin == sn_tin) &&
            (identical(other.sr_strontium, sr_strontium) || other.sr_strontium == sr_strontium) &&
            (identical(other.galactose, galactose) || other.galactose == galactose) &&
            (identical(other.glucose_dextrose, glucose_dextrose) || other.glucose_dextrose == glucose_dextrose) &&
            (identical(other.lactose, lactose) || other.lactose == lactose) &&
            (identical(other.essential_amino_acids, essential_amino_acids) || other.essential_amino_acids == essential_amino_acids) &&
            (identical(other.arginine, arginine) || other.arginine == arginine) &&
            (identical(other.valin, valin) || other.valin == valin) &&
            (identical(other.histidine, histidine) || other.histidine == histidine) &&
            (identical(other.isoleucine, isoleucine) || other.isoleucine == isoleucine) &&
            (identical(other.leucine, leucine) || other.leucine == leucine) &&
            (identical(other.lysine, lysine) || other.lysine == lysine) &&
            (identical(other.methionine, methionine) || other.methionine == methionine) &&
            (identical(other.methionine_cysteine, methionine_cysteine) || other.methionine_cysteine == methionine_cysteine) &&
            (identical(other.threonine, threonine) || other.threonine == threonine) &&
            (identical(other.tryptophan, tryptophan) || other.tryptophan == tryptophan) &&
            (identical(other.phenylalanine, phenylalanine) || other.phenylalanine == phenylalanine) &&
            (identical(other.phenylalanine_tyrosine, phenylalanine_tyrosine) || other.phenylalanine_tyrosine == phenylalanine_tyrosine) &&
            (identical(other.substitutable_amino_acids, substitutable_amino_acids) || other.substitutable_amino_acids == substitutable_amino_acids) &&
            (identical(other.alanine, alanine) || other.alanine == alanine) &&
            (identical(other.aspartica_acid, aspartica_acid) || other.aspartica_acid == aspartica_acid) &&
            (identical(other.glycine, glycine) || other.glycine == glycine) &&
            (identical(other.glutamic_acid, glutamic_acid) || other.glutamic_acid == glutamic_acid) &&
            (identical(other.proline, proline) || other.proline == proline) &&
            (identical(other.serin, serin) || other.serin == serin) &&
            (identical(other.tyrosine, tyrosine) || other.tyrosine == tyrosine) &&
            (identical(other.cysteine, cysteine) || other.cysteine == cysteine) &&
            (identical(other.oil_4_0, oil_4_0) || other.oil_4_0 == oil_4_0) &&
            (identical(other.capron, capron) || other.capron == capron) &&
            (identical(other.caprylic, caprylic) || other.caprylic == caprylic) &&
            (identical(other.caprine, caprine) || other.caprine == caprine) &&
            (identical(other.laurin, laurin) || other.laurin == laurin) &&
            (identical(other.pentadecane, pentadecane) || other.pentadecane == pentadecane) &&
            (identical(other.margarine, margarine) || other.margarine == margarine) &&
            (identical(other.myristolein, myristolein) || other.myristolein == myristolein) &&
            (identical(other.sucrose, sucrose) || other.sucrose == sucrose) &&
            (identical(other.trans_fats, trans_fats) || other.trans_fats == trans_fats) &&
            (identical(other.starch_dextrins, starch_dextrins) || other.starch_dextrins == starch_dextrins) &&
            (identical(other.ethyl_alcohol, ethyl_alcohol) || other.ethyl_alcohol == ethyl_alcohol) &&
            (identical(other.si_silicon, si_silicon) || other.si_silicon == si_silicon) &&
            (identical(other.b_bohr, b_bohr) || other.b_bohr == b_bohr) &&
            (identical(other.v_vanadium, v_vanadium) || other.v_vanadium == v_vanadium) &&
            (identical(other.li_lithium, li_lithium) || other.li_lithium == li_lithium) &&
            (identical(other.rb_rubidium, rb_rubidium) || other.rb_rubidium == rb_rubidium) &&
            (identical(other.zr_zirconium, zr_zirconium) || other.zr_zirconium == zr_zirconium) &&
            (identical(other.omega_9_eruca, omega_9_eruca) || other.omega_9_eruca == omega_9_eruca) &&
            (identical(other.omega_3_stioride, omega_3_stioride) || other.omega_3_stioride == omega_3_stioride) &&
            (identical(other.omega_3_Docosahexaeno, omega_3_Docosahexaeno) || other.omega_3_Docosahexaeno == omega_3_Docosahexaeno) &&
            (identical(other.beta_sitosterol, beta_sitosterol) || other.beta_sitosterol == beta_sitosterol) &&
            (identical(other.begenova, begenova) || other.begenova == begenova) &&
            (identical(other.fructose, fructose) || other.fructose == fructose) &&
            (identical(other.maltose, maltose) || other.maltose == maltose) &&
            (identical(other.phytosterols, phytosterols) || other.phytosterols == phytosterols) &&
            (identical(other.ti_titan, ti_titan) || other.ti_titan == ti_titan) &&
            (identical(other.hydroxyproline, hydroxyproline) || other.hydroxyproline == hydroxyproline) &&
            (identical(other.lignoceric, lignoceric) || other.lignoceric == lignoceric) &&
            (identical(other.betaine, betaine) || other.betaine == betaine) &&
            (identical(other.monoun_trans_fats, monoun_trans_fats) || other.monoun_trans_fats == monoun_trans_fats) &&
            (identical(other.cis_16_1, cis_16_1) || other.cis_16_1 == cis_16_1) &&
            (identical(other.cis_18_1, cis_18_1) || other.cis_18_1 == cis_18_1) &&
            (identical(other.trance_18_1, trance_18_1) || other.trance_18_1 == trance_18_1) &&
            (identical(other.mixed_isomers, mixed_isomers) || other.mixed_isomers == mixed_isomers) &&
            (identical(other.omega_6_cis, omega_6_cis) || other.omega_6_cis == omega_6_cis) &&
            (identical(other.conjugated_linoleic_acid, conjugated_linoleic_acid) || other.conjugated_linoleic_acid == conjugated_linoleic_acid) &&
            (identical(other.omega_3_alpha_linolenic, omega_3_alpha_linolenic) || other.omega_3_alpha_linolenic == omega_3_alpha_linolenic) &&
            (identical(other.d3_vitamin_cholecalciferol, d3_vitamin_cholecalciferol) || other.d3_vitamin_cholecalciferol == d3_vitamin_cholecalciferol) &&
            (identical(other.alpha_carotene, alpha_carotene) || other.alpha_carotene == alpha_carotene) &&
            (identical(other.cryptoxanthin_beta, cryptoxanthin_beta) || other.cryptoxanthin_beta == cryptoxanthin_beta) &&
            (identical(other.lutein_zeaxanthin, lutein_zeaxanthin) || other.lutein_zeaxanthin == lutein_zeaxanthin) &&
            (identical(other.beta_tocopherol, beta_tocopherol) || other.beta_tocopherol == beta_tocopherol) &&
            (identical(other.gamma_tocopherol, gamma_tocopherol) || other.gamma_tocopherol == gamma_tocopherol) &&
            (identical(other.trance_16_1, trance_16_1) || other.trance_16_1 == trance_16_1) &&
            (identical(other.cis_22_1, cis_22_1) || other.cis_22_1 == cis_22_1) &&
            (identical(other.omega_9_nervone, omega_9_nervone) || other.omega_9_nervone == omega_9_nervone) &&
            (identical(other.trans_isomer_undefined, trans_isomer_undefined) || other.trans_isomer_undefined == trans_isomer_undefined) &&
            (identical(other.omega_6_gamma_linolenic, omega_6_gamma_linolenic) || other.omega_6_gamma_linolenic == omega_6_gamma_linolenic) &&
            (identical(other.trance_18_3, trance_18_3) || other.trance_18_3 == trance_18_3) &&
            (identical(other.omega_6_eicosadieno, omega_6_eicosadieno) || other.omega_6_eicosadieno == omega_6_eicosadieno) &&
            (identical(other.eicosatrieno, eicosatrieno) || other.eicosatrieno == eicosatrieno) &&
            (identical(other.omega_6_20_3, omega_6_20_3) || other.omega_6_20_3 == omega_6_20_3) &&
            (identical(other.omega_6_docosatetraeno, omega_6_docosatetraeno) || other.omega_6_docosatetraeno == omega_6_docosatetraeno) &&
            (identical(other.lycopene, lycopene) || other.lycopene == lycopene) &&
            (identical(other.tocopherol_delta, tocopherol_delta) || other.tocopherol_delta == tocopherol_delta) &&
            (identical(other.polyun_trans_fats, polyun_trans_fats) || other.polyun_trans_fats == polyun_trans_fats) &&
            (identical(other.tridecane_13_0, tridecane_13_0) || other.tridecane_13_0 == tridecane_13_0) &&
            (identical(other.omega_3, omega_3) || other.omega_3 == omega_3) &&
            (identical(other.pentadecene, pentadecene) || other.pentadecene == pentadecene) &&
            (identical(other.caffeine, caffeine) || other.caffeine == caffeine) &&
            (identical(other.theobromine, theobromine) || other.theobromine == theobromine) &&
            (identical(other.trans_trans, trans_trans) || other.trans_trans == trans_trans) &&
            (identical(other.menaquinone_4, menaquinone_4) || other.menaquinone_4 == menaquinone_4) &&
            (identical(other.campesterol, campesterol) || other.campesterol == campesterol) &&
            (identical(other.stigmasterol, stigmasterol) || other.stigmasterol == stigmasterol) &&
            (identical(other.e_vitamin_added, e_vitamin_added) || other.e_vitamin_added == e_vitamin_added) &&
            (identical(other.b12_vitamin_added, b12_vitamin_added) || other.b12_vitamin_added == b12_vitamin_added) &&
            (identical(other.trance_22_1, trance_22_1) || other.trance_22_1 == trance_22_1) &&
            (identical(other.dihydrophylloquinone, dihydrophylloquinone) || other.dihydrophylloquinone == dihydrophylloquinone) &&
            (identical(other.d2_vitamin_ergocalciferol, d2_vitamin_ergocalciferol) || other.d2_vitamin_ergocalciferol == d2_vitamin_ergocalciferol) &&
            (identical(other.omega_6_20_4, omega_6_20_4) || other.omega_6_20_4 == omega_6_20_4) &&
            (identical(other.omega_3_geneico, omega_3_geneico) || other.omega_3_geneico == omega_3_geneico) &&
            (identical(other.phosphorus_protein_ratio, phosphorus_protein_ratio) || other.phosphorus_protein_ratio == phosphorus_protein_ratio) &&
            (identical(other.kilojoule, kilojoule) || other.kilojoule == kilojoule));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        id_product,
        id_category,
        id_source,
        water,
        k_potassium,
        na_sodium,
        p_phosphorus,
        ca_calcium,
        proteins,
        calorie,
        carbohydrates,
        fats,
        feed_ash,
        a_vitamin,
        retinol,
        beta_carotene,
        b1_vitamin_thiamine,
        b2_vitamin_riboflavin,
        b5_vitamin,
        b6_vitamin_pyridoxine,
        b9_vitamin_folates,
        b12_vitamin_cobalamin,
        c_vitamin,
        e_vitamin,
        rr_vitamin,
        niacin,
        mg_magnesium,
        s_sulfur,
        cl_chlorine,
        fe_iron,
        i_iodine,
        co_cobalt,
        mn_manganese,
        cu_copper,
        mo_molybdenum,
        ni_nickel,
        se_selenium,
        f_fluorine,
        cr_chrome,
        zh_zinc,
        cholesterol,
        saturated_fatty_acids,
        myristina,
        palmitic,
        stearic,
        arachinova,
        mono_fatty_acids,
        palmitoleic,
        heptadecene,
        omega_9_oleic,
        omega_9_gadolein,
        poly_fatty_acids,
        linoleic,
        linolenic,
        arachidonic,
        omega_3_epk,
        omega_3_fatty_acids,
        omega_3_dpc,
        omega_6_fatty_acids,
        dietary_fiber,
        mono_di_saccharides,
        organic_acids,
        b4_vitamin,
        d_Vitamin_calciferol,
        h_vitamin_biotin,
        k_vitamin_phylloquinone,
        al_aluminium,
        sn_tin,
        sr_strontium,
        galactose,
        glucose_dextrose,
        lactose,
        essential_amino_acids,
        arginine,
        valin,
        histidine,
        isoleucine,
        leucine,
        lysine,
        methionine,
        methionine_cysteine,
        threonine,
        tryptophan,
        phenylalanine,
        phenylalanine_tyrosine,
        substitutable_amino_acids,
        alanine,
        aspartica_acid,
        glycine,
        glutamic_acid,
        proline,
        serin,
        tyrosine,
        cysteine,
        oil_4_0,
        capron,
        caprylic,
        caprine,
        laurin,
        pentadecane,
        margarine,
        myristolein,
        sucrose,
        trans_fats,
        starch_dextrins,
        ethyl_alcohol,
        si_silicon,
        b_bohr,
        v_vanadium,
        li_lithium,
        rb_rubidium,
        zr_zirconium,
        omega_9_eruca,
        omega_3_stioride,
        omega_3_Docosahexaeno,
        beta_sitosterol,
        begenova,
        fructose,
        maltose,
        phytosterols,
        ti_titan,
        hydroxyproline,
        lignoceric,
        betaine,
        monoun_trans_fats,
        cis_16_1,
        cis_18_1,
        trance_18_1,
        mixed_isomers,
        omega_6_cis,
        conjugated_linoleic_acid,
        omega_3_alpha_linolenic,
        d3_vitamin_cholecalciferol,
        alpha_carotene,
        cryptoxanthin_beta,
        lutein_zeaxanthin,
        beta_tocopherol,
        gamma_tocopherol,
        trance_16_1,
        cis_22_1,
        omega_9_nervone,
        trans_isomer_undefined,
        omega_6_gamma_linolenic,
        trance_18_3,
        omega_6_eicosadieno,
        eicosatrieno,
        omega_6_20_3,
        omega_6_docosatetraeno,
        lycopene,
        tocopherol_delta,
        polyun_trans_fats,
        tridecane_13_0,
        omega_3,
        pentadecene,
        caffeine,
        theobromine,
        trans_trans,
        menaquinone_4,
        campesterol,
        stigmasterol,
        e_vitamin_added,
        b12_vitamin_added,
        trance_22_1,
        dihydrophylloquinone,
        d2_vitamin_ergocalciferol,
        omega_6_20_4,
        omega_3_geneico,
        phosphorus_protein_ratio,
        kilojoule,
      ]);
}
