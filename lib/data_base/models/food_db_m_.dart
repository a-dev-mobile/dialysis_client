// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names, lines_longer_than_80_chars
import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:dialysis/data_base/data_base.dart';

@immutable
class FoodDbModel {
  final int id_product;
  final int id_category;
  final int id_source;

  final NutrientDbModel? water;
  final NutrientDbModel? k_potassium;
  final NutrientDbModel? na_sodium;
  final NutrientDbModel? p_phosphorus;
  final NutrientDbModel? ca_calcium;
  final NutrientDbModel? proteins;
  final NutrientDbModel? calorie;
  final NutrientDbModel? carbohydrates;
  final NutrientDbModel? fats;
  final NutrientDbModel? feed_ash;
  final NutrientDbModel? a_vitamin;
  final NutrientDbModel? retinol;
  final NutrientDbModel? beta_carotene;
  final NutrientDbModel? b1_vitamin_thiamine;
  final NutrientDbModel? b2_vitamin_riboflavin;
  final NutrientDbModel? b5_vitamin;
  final NutrientDbModel? b6_vitamin_pyridoxine;
  final NutrientDbModel? b9_vitamin_folates;
  final NutrientDbModel? b12_vitamin_cobalamin;
  final NutrientDbModel? c_vitamin;
  final NutrientDbModel? e_vitamin;
  final NutrientDbModel? rr_vitamin;
  final NutrientDbModel? niacin;
  final NutrientDbModel? mg_magnesium;
  final NutrientDbModel? s_sulfur;
  final NutrientDbModel? cl_chlorine;
  final NutrientDbModel? fe_iron;
  final NutrientDbModel? i_iodine;
  final NutrientDbModel? co_cobalt;
  final NutrientDbModel? mn_manganese;
  final NutrientDbModel? cu_copper;
  final NutrientDbModel? mo_molybdenum;
  final NutrientDbModel? ni_nickel;
  final NutrientDbModel? se_selenium;
  final NutrientDbModel? f_fluorine;
  final NutrientDbModel? cr_chrome;
  final NutrientDbModel? zh_zinc;
  final NutrientDbModel? cholesterol;
  final NutrientDbModel? saturated_fatty_acids;
  final NutrientDbModel? myristina;
  final NutrientDbModel? palmitic;
  final NutrientDbModel? stearic;
  final NutrientDbModel? arachinova;
  final NutrientDbModel? mono_fatty_acids;
  final NutrientDbModel? palmitoleic;
  final NutrientDbModel? heptadecene;
  final NutrientDbModel? omega_9_oleic;
  final NutrientDbModel? omega_9_gadolein;
  final NutrientDbModel? poly_fatty_acids;
  final NutrientDbModel? linoleic;
  final NutrientDbModel? linolenic;
  final NutrientDbModel? arachidonic;
  final NutrientDbModel? omega_3_epk;
  final NutrientDbModel? omega_3_fatty_acids;
  final NutrientDbModel? omega_3_dpc;
  final NutrientDbModel? omega_6_fatty_acids;
  final NutrientDbModel? dietary_fiber;
  final NutrientDbModel? mono_di_saccharides;
  final NutrientDbModel? organic_acids;
  final NutrientDbModel? b4_vitamin;
  final NutrientDbModel? d_Vitamin_calciferol;
  final NutrientDbModel? h_vitamin_biotin;
  final NutrientDbModel? k_vitamin_phylloquinone;
  final NutrientDbModel? al_aluminium;
  final NutrientDbModel? sn_tin;
  final NutrientDbModel? sr_strontium;
  final NutrientDbModel? galactose;
  final NutrientDbModel? glucose_dextrose;
  final NutrientDbModel? lactose;
  final NutrientDbModel? essential_amino_acids;
  final NutrientDbModel? arginine;
  final NutrientDbModel? valin;
  final NutrientDbModel? histidine;
  final NutrientDbModel? isoleucine;
  final NutrientDbModel? leucine;
  final NutrientDbModel? lysine;
  final NutrientDbModel? methionine;
  final NutrientDbModel? methionine_cysteine;
  final NutrientDbModel? threonine;
  final NutrientDbModel? tryptophan;
  final NutrientDbModel? phenylalanine;
  final NutrientDbModel? phenylalanine_tyrosine;
  final NutrientDbModel? substitutable_amino_acids;
  final NutrientDbModel? alanine;
  final NutrientDbModel? aspartica_acid;
  final NutrientDbModel? glycine;
  final NutrientDbModel? glutamic_acid;
  final NutrientDbModel? proline;
  final NutrientDbModel? serin;
  final NutrientDbModel? tyrosine;
  final NutrientDbModel? cysteine;
  final NutrientDbModel? oil_4_0;
  final NutrientDbModel? capron;
  final NutrientDbModel? caprylic;
  final NutrientDbModel? caprine;
  final NutrientDbModel? laurin;
  final NutrientDbModel? pentadecane;
  final NutrientDbModel? margarine;
  final NutrientDbModel? myristolein;
  final NutrientDbModel? sucrose;
  final NutrientDbModel? trans_fats;
  final NutrientDbModel? starch_dextrins;
  final NutrientDbModel? ethyl_alcohol;
  final NutrientDbModel? si_silicon;
  final NutrientDbModel? b_bohr;
  final NutrientDbModel? v_vanadium;
  final NutrientDbModel? li_lithium;
  final NutrientDbModel? rb_rubidium;
  final NutrientDbModel? zr_zirconium;
  final NutrientDbModel? omega_9_eruca;
  final NutrientDbModel? omega_3_stioride;
  final NutrientDbModel? omega_3_Docosahexaeno;
  final NutrientDbModel? beta_sitosterol;
  final NutrientDbModel? begenova;
  final NutrientDbModel? fructose;
  final NutrientDbModel? maltose;
  final NutrientDbModel? phytosterols;
  final NutrientDbModel? ti_titan;
  final NutrientDbModel? hydroxyproline;
  final NutrientDbModel? lignoceric;
  final NutrientDbModel? betaine;
  final NutrientDbModel? monoun_trans_fats;
  final NutrientDbModel? cis_16_1;
  final NutrientDbModel? cis_18_1;
  final NutrientDbModel? trance_18_1;
  final NutrientDbModel? mixed_isomers;
  final NutrientDbModel? omega_6_cis;
  final NutrientDbModel? conjugated_linoleic_acid;
  final NutrientDbModel? omega_3_alpha_linolenic;
  final NutrientDbModel? d3_vitamin_cholecalciferol;
  final NutrientDbModel? alpha_carotene;
  final NutrientDbModel? cryptoxanthin_beta;
  final NutrientDbModel? lutein_zeaxanthin;
  final NutrientDbModel? beta_tocopherol;
  final NutrientDbModel? gamma_tocopherol;
  final NutrientDbModel? trance_16_1;
  final NutrientDbModel? cis_22_1;
  final NutrientDbModel? omega_9_nervone;
  final NutrientDbModel? trans_isomer_undefined;
  final NutrientDbModel? omega_6_gamma_linolenic;
  final NutrientDbModel? trance_18_3;
  final NutrientDbModel? omega_6_eicosadieno;
  final NutrientDbModel? eicosatrieno;
  final NutrientDbModel? omega_6_20_3;
  final NutrientDbModel? omega_6_docosatetraeno;
  final NutrientDbModel? lycopene;
  final NutrientDbModel? tocopherol_delta;
  final NutrientDbModel? polyun_trans_fats;
  final NutrientDbModel? tridecane_13_0;
  final NutrientDbModel? omega_3;
  final NutrientDbModel? pentadecene;
  final NutrientDbModel? caffeine;
  final NutrientDbModel? theobromine;
  final NutrientDbModel? trans_trans;
  final NutrientDbModel? menaquinone_4;
  final NutrientDbModel? campesterol;
  final NutrientDbModel? stigmasterol;
  final NutrientDbModel? e_vitamin_added;
  final NutrientDbModel? b12_vitamin_added;
  final NutrientDbModel? trance_22_1;
  final NutrientDbModel? dihydrophylloquinone;
  final NutrientDbModel? d2_vitamin_ergocalciferol;
  final NutrientDbModel? omega_6_20_4;
  final NutrientDbModel? omega_3_geneico;
  final NutrientDbModel? phosphorus_protein_ratio;
  FoodDbModel({
    this.id_product = 0,
    this.id_category = 0,
    this.id_source = 0,
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
  });

  FoodDbModel copyWith({
    int? id_product,
    int? id_category,
    int? id_source,
    NutrientDbModel? water,
    NutrientDbModel? k_potassium,
    NutrientDbModel? na_sodium,
    NutrientDbModel? p_phosphorus,
    NutrientDbModel? ca_calcium,
    NutrientDbModel? proteins,
    NutrientDbModel? calorie,
    NutrientDbModel? carbohydrates,
    NutrientDbModel? fats,
    NutrientDbModel? feed_ash,
    NutrientDbModel? a_vitamin,
    NutrientDbModel? retinol,
    NutrientDbModel? beta_carotene,
    NutrientDbModel? b1_vitamin_thiamine,
    NutrientDbModel? b2_vitamin_riboflavin,
    NutrientDbModel? b5_vitamin,
    NutrientDbModel? b6_vitamin_pyridoxine,
    NutrientDbModel? b9_vitamin_folates,
    NutrientDbModel? b12_vitamin_cobalamin,
    NutrientDbModel? c_vitamin,
    NutrientDbModel? e_vitamin,
    NutrientDbModel? rr_vitamin,
    NutrientDbModel? niacin,
    NutrientDbModel? mg_magnesium,
    NutrientDbModel? s_sulfur,
    NutrientDbModel? cl_chlorine,
    NutrientDbModel? fe_iron,
    NutrientDbModel? i_iodine,
    NutrientDbModel? co_cobalt,
    NutrientDbModel? mn_manganese,
    NutrientDbModel? cu_copper,
    NutrientDbModel? mo_molybdenum,
    NutrientDbModel? ni_nickel,
    NutrientDbModel? se_selenium,
    NutrientDbModel? f_fluorine,
    NutrientDbModel? cr_chrome,
    NutrientDbModel? zh_zinc,
    NutrientDbModel? cholesterol,
    NutrientDbModel? saturated_fatty_acids,
    NutrientDbModel? myristina,
    NutrientDbModel? palmitic,
    NutrientDbModel? stearic,
    NutrientDbModel? arachinova,
    NutrientDbModel? mono_fatty_acids,
    NutrientDbModel? palmitoleic,
    NutrientDbModel? heptadecene,
    NutrientDbModel? omega_9_oleic,
    NutrientDbModel? omega_9_gadolein,
    NutrientDbModel? poly_fatty_acids,
    NutrientDbModel? linoleic,
    NutrientDbModel? linolenic,
    NutrientDbModel? arachidonic,
    NutrientDbModel? omega_3_epk,
    NutrientDbModel? omega_3_fatty_acids,
    NutrientDbModel? omega_3_dpc,
    NutrientDbModel? omega_6_fatty_acids,
    NutrientDbModel? dietary_fiber,
    NutrientDbModel? mono_di_saccharides,
    NutrientDbModel? organic_acids,
    NutrientDbModel? b4_vitamin,
    NutrientDbModel? d_Vitamin_calciferol,
    NutrientDbModel? h_vitamin_biotin,
    NutrientDbModel? k_vitamin_phylloquinone,
    NutrientDbModel? al_aluminium,
    NutrientDbModel? sn_tin,
    NutrientDbModel? sr_strontium,
    NutrientDbModel? galactose,
    NutrientDbModel? glucose_dextrose,
    NutrientDbModel? lactose,
    NutrientDbModel? essential_amino_acids,
    NutrientDbModel? arginine,
    NutrientDbModel? valin,
    NutrientDbModel? histidine,
    NutrientDbModel? isoleucine,
    NutrientDbModel? leucine,
    NutrientDbModel? lysine,
    NutrientDbModel? methionine,
    NutrientDbModel? methionine_cysteine,
    NutrientDbModel? threonine,
    NutrientDbModel? tryptophan,
    NutrientDbModel? phenylalanine,
    NutrientDbModel? phenylalanine_tyrosine,
    NutrientDbModel? substitutable_amino_acids,
    NutrientDbModel? alanine,
    NutrientDbModel? aspartica_acid,
    NutrientDbModel? glycine,
    NutrientDbModel? glutamic_acid,
    NutrientDbModel? proline,
    NutrientDbModel? serin,
    NutrientDbModel? tyrosine,
    NutrientDbModel? cysteine,
    NutrientDbModel? oil_4_0,
    NutrientDbModel? capron,
    NutrientDbModel? caprylic,
    NutrientDbModel? caprine,
    NutrientDbModel? laurin,
    NutrientDbModel? pentadecane,
    NutrientDbModel? margarine,
    NutrientDbModel? myristolein,
    NutrientDbModel? sucrose,
    NutrientDbModel? trans_fats,
    NutrientDbModel? starch_dextrins,
    NutrientDbModel? ethyl_alcohol,
    NutrientDbModel? si_silicon,
    NutrientDbModel? b_bohr,
    NutrientDbModel? v_vanadium,
    NutrientDbModel? li_lithium,
    NutrientDbModel? rb_rubidium,
    NutrientDbModel? zr_zirconium,
    NutrientDbModel? omega_9_eruca,
    NutrientDbModel? omega_3_stioride,
    NutrientDbModel? omega_3_Docosahexaeno,
    NutrientDbModel? beta_sitosterol,
    NutrientDbModel? begenova,
    NutrientDbModel? fructose,
    NutrientDbModel? maltose,
    NutrientDbModel? phytosterols,
    NutrientDbModel? ti_titan,
    NutrientDbModel? hydroxyproline,
    NutrientDbModel? lignoceric,
    NutrientDbModel? betaine,
    NutrientDbModel? monoun_trans_fats,
    NutrientDbModel? cis_16_1,
    NutrientDbModel? cis_18_1,
    NutrientDbModel? trance_18_1,
    NutrientDbModel? mixed_isomers,
    NutrientDbModel? omega_6_cis,
    NutrientDbModel? conjugated_linoleic_acid,
    NutrientDbModel? omega_3_alpha_linolenic,
    NutrientDbModel? d3_vitamin_cholecalciferol,
    NutrientDbModel? alpha_carotene,
    NutrientDbModel? cryptoxanthin_beta,
    NutrientDbModel? lutein_zeaxanthin,
    NutrientDbModel? beta_tocopherol,
    NutrientDbModel? gamma_tocopherol,
    NutrientDbModel? trance_16_1,
    NutrientDbModel? cis_22_1,
    NutrientDbModel? omega_9_nervone,
    NutrientDbModel? trans_isomer_undefined,
    NutrientDbModel? omega_6_gamma_linolenic,
    NutrientDbModel? trance_18_3,
    NutrientDbModel? omega_6_eicosadieno,
    NutrientDbModel? eicosatrieno,
    NutrientDbModel? omega_6_20_3,
    NutrientDbModel? omega_6_docosatetraeno,
    NutrientDbModel? lycopene,
    NutrientDbModel? tocopherol_delta,
    NutrientDbModel? polyun_trans_fats,
    NutrientDbModel? tridecane_13_0,
    NutrientDbModel? omega_3,
    NutrientDbModel? pentadecene,
    NutrientDbModel? caffeine,
    NutrientDbModel? theobromine,
    NutrientDbModel? trans_trans,
    NutrientDbModel? menaquinone_4,
    NutrientDbModel? campesterol,
    NutrientDbModel? stigmasterol,
    NutrientDbModel? e_vitamin_added,
    NutrientDbModel? b12_vitamin_added,
    NutrientDbModel? trance_22_1,
    NutrientDbModel? dihydrophylloquinone,
    NutrientDbModel? d2_vitamin_ergocalciferol,
    NutrientDbModel? omega_6_20_4,
    NutrientDbModel? omega_3_geneico,
    NutrientDbModel? phosphorus_protein_ratio,
  }) {
    return FoodDbModel(
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
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id_product': id_product,
      'id_category': id_category,
      'id_source': id_source,
      'water': water?.toMap(),
      'k_potassium': k_potassium?.toMap(),
      'na_sodium': na_sodium?.toMap(),
      'p_phosphorus': p_phosphorus?.toMap(),
      'ca_calcium': ca_calcium?.toMap(),
      'proteins': proteins?.toMap(),
      'calorie': calorie?.toMap(),
      'carbohydrates': carbohydrates?.toMap(),
      'fats': fats?.toMap(),
      'feed_ash': feed_ash?.toMap(),
      'a_vitamin': a_vitamin?.toMap(),
      'retinol': retinol?.toMap(),
      'beta_carotene': beta_carotene?.toMap(),
      'b1_vitamin_thiamine': b1_vitamin_thiamine?.toMap(),
      'b2_vitamin_riboflavin': b2_vitamin_riboflavin?.toMap(),
      'b5_vitamin': b5_vitamin?.toMap(),
      'b6_vitamin_pyridoxine': b6_vitamin_pyridoxine?.toMap(),
      'b9_vitamin_folates': b9_vitamin_folates?.toMap(),
      'b12_vitamin_cobalamin': b12_vitamin_cobalamin?.toMap(),
      'c_vitamin': c_vitamin?.toMap(),
      'e_vitamin': e_vitamin?.toMap(),
      'rr_vitamin': rr_vitamin?.toMap(),
      'niacin': niacin?.toMap(),
      'mg_magnesium': mg_magnesium?.toMap(),
      's_sulfur': s_sulfur?.toMap(),
      'cl_chlorine': cl_chlorine?.toMap(),
      'fe_iron': fe_iron?.toMap(),
      'i_iodine': i_iodine?.toMap(),
      'co_cobalt': co_cobalt?.toMap(),
      'mn_manganese': mn_manganese?.toMap(),
      'cu_copper': cu_copper?.toMap(),
      'mo_molybdenum': mo_molybdenum?.toMap(),
      'ni_nickel': ni_nickel?.toMap(),
      'se_selenium': se_selenium?.toMap(),
      'f_fluorine': f_fluorine?.toMap(),
      'cr_chrome': cr_chrome?.toMap(),
      'zh_zinc': zh_zinc?.toMap(),
      'cholesterol': cholesterol?.toMap(),
      'saturated_fatty_acids': saturated_fatty_acids?.toMap(),
      'myristina': myristina?.toMap(),
      'palmitic': palmitic?.toMap(),
      'stearic': stearic?.toMap(),
      'arachinova': arachinova?.toMap(),
      'mono_fatty_acids': mono_fatty_acids?.toMap(),
      'palmitoleic': palmitoleic?.toMap(),
      'heptadecene': heptadecene?.toMap(),
      'omega_9_oleic': omega_9_oleic?.toMap(),
      'omega_9_gadolein': omega_9_gadolein?.toMap(),
      'poly_fatty_acids': poly_fatty_acids?.toMap(),
      'linoleic': linoleic?.toMap(),
      'linolenic': linolenic?.toMap(),
      'arachidonic': arachidonic?.toMap(),
      'omega_3_epk': omega_3_epk?.toMap(),
      'omega_3_fatty_acids': omega_3_fatty_acids?.toMap(),
      'omega_3_dpc': omega_3_dpc?.toMap(),
      'omega_6_fatty_acids': omega_6_fatty_acids?.toMap(),
      'dietary_fiber': dietary_fiber?.toMap(),
      'mono_di_saccharides': mono_di_saccharides?.toMap(),
      'organic_acids': organic_acids?.toMap(),
      'b4_vitamin': b4_vitamin?.toMap(),
      'd_Vitamin_calciferol': d_Vitamin_calciferol?.toMap(),
      'h_vitamin_biotin': h_vitamin_biotin?.toMap(),
      'k_vitamin_phylloquinone': k_vitamin_phylloquinone?.toMap(),
      'al_aluminium': al_aluminium?.toMap(),
      'sn_tin': sn_tin?.toMap(),
      'sr_strontium': sr_strontium?.toMap(),
      'galactose': galactose?.toMap(),
      'glucose_dextrose': glucose_dextrose?.toMap(),
      'lactose': lactose?.toMap(),
      'essential_amino_acids': essential_amino_acids?.toMap(),
      'arginine': arginine?.toMap(),
      'valin': valin?.toMap(),
      'histidine': histidine?.toMap(),
      'isoleucine': isoleucine?.toMap(),
      'leucine': leucine?.toMap(),
      'lysine': lysine?.toMap(),
      'methionine': methionine?.toMap(),
      'methionine_cysteine': methionine_cysteine?.toMap(),
      'threonine': threonine?.toMap(),
      'tryptophan': tryptophan?.toMap(),
      'phenylalanine': phenylalanine?.toMap(),
      'phenylalanine_tyrosine': phenylalanine_tyrosine?.toMap(),
      'substitutable_amino_acids': substitutable_amino_acids?.toMap(),
      'alanine': alanine?.toMap(),
      'aspartica_acid': aspartica_acid?.toMap(),
      'glycine': glycine?.toMap(),
      'glutamic_acid': glutamic_acid?.toMap(),
      'proline': proline?.toMap(),
      'serin': serin?.toMap(),
      'tyrosine': tyrosine?.toMap(),
      'cysteine': cysteine?.toMap(),
      'oil_4_0': oil_4_0?.toMap(),
      'capron': capron?.toMap(),
      'caprylic': caprylic?.toMap(),
      'caprine': caprine?.toMap(),
      'laurin': laurin?.toMap(),
      'pentadecane': pentadecane?.toMap(),
      'margarine': margarine?.toMap(),
      'myristolein': myristolein?.toMap(),
      'sucrose': sucrose?.toMap(),
      'trans_fats': trans_fats?.toMap(),
      'starch_dextrins': starch_dextrins?.toMap(),
      'ethyl_alcohol': ethyl_alcohol?.toMap(),
      'si_silicon': si_silicon?.toMap(),
      'b_bohr': b_bohr?.toMap(),
      'v_vanadium': v_vanadium?.toMap(),
      'li_lithium': li_lithium?.toMap(),
      'rb_rubidium': rb_rubidium?.toMap(),
      'zr_zirconium': zr_zirconium?.toMap(),
      'omega_9_eruca': omega_9_eruca?.toMap(),
      'omega_3_stioride': omega_3_stioride?.toMap(),
      'omega_3_Docosahexaeno': omega_3_Docosahexaeno?.toMap(),
      'beta_sitosterol': beta_sitosterol?.toMap(),
      'begenova': begenova?.toMap(),
      'fructose': fructose?.toMap(),
      'maltose': maltose?.toMap(),
      'phytosterols': phytosterols?.toMap(),
      'ti_titan': ti_titan?.toMap(),
      'hydroxyproline': hydroxyproline?.toMap(),
      'lignoceric': lignoceric?.toMap(),
      'betaine': betaine?.toMap(),
      'monoun_trans_fats': monoun_trans_fats?.toMap(),
      'cis_16_1': cis_16_1?.toMap(),
      'cis_18_1': cis_18_1?.toMap(),
      'trance_18_1': trance_18_1?.toMap(),
      'mixed_isomers': mixed_isomers?.toMap(),
      'omega_6_cis': omega_6_cis?.toMap(),
      'conjugated_linoleic_acid': conjugated_linoleic_acid?.toMap(),
      'omega_3_alpha_linolenic': omega_3_alpha_linolenic?.toMap(),
      'd3_vitamin_cholecalciferol': d3_vitamin_cholecalciferol?.toMap(),
      'alpha_carotene': alpha_carotene?.toMap(),
      'cryptoxanthin_beta': cryptoxanthin_beta?.toMap(),
      'lutein_zeaxanthin': lutein_zeaxanthin?.toMap(),
      'beta_tocopherol': beta_tocopherol?.toMap(),
      'gamma_tocopherol': gamma_tocopherol?.toMap(),
      'trance_16_1': trance_16_1?.toMap(),
      'cis_22_1': cis_22_1?.toMap(),
      'omega_9_nervone': omega_9_nervone?.toMap(),
      'trans_isomer_undefined': trans_isomer_undefined?.toMap(),
      'omega_6_gamma_linolenic': omega_6_gamma_linolenic?.toMap(),
      'trance_18_3': trance_18_3?.toMap(),
      'omega_6_eicosadieno': omega_6_eicosadieno?.toMap(),
      'eicosatrieno': eicosatrieno?.toMap(),
      'omega_6_20_3': omega_6_20_3?.toMap(),
      'omega_6_docosatetraeno': omega_6_docosatetraeno?.toMap(),
      'lycopene': lycopene?.toMap(),
      'tocopherol_delta': tocopherol_delta?.toMap(),
      'polyun_trans_fats': polyun_trans_fats?.toMap(),
      'tridecane_13_0': tridecane_13_0?.toMap(),
      'omega_3': omega_3?.toMap(),
      'pentadecene': pentadecene?.toMap(),
      'caffeine': caffeine?.toMap(),
      'theobromine': theobromine?.toMap(),
      'trans_trans': trans_trans?.toMap(),
      'menaquinone_4': menaquinone_4?.toMap(),
      'campesterol': campesterol?.toMap(),
      'stigmasterol': stigmasterol?.toMap(),
      'e_vitamin_added': e_vitamin_added?.toMap(),
      'b12_vitamin_added': b12_vitamin_added?.toMap(),
      'trance_22_1': trance_22_1?.toMap(),
      'dihydrophylloquinone': dihydrophylloquinone?.toMap(),
      'd2_vitamin_ergocalciferol': d2_vitamin_ergocalciferol?.toMap(),
      'omega_6_20_4': omega_6_20_4?.toMap(),
      'omega_3_geneico': omega_3_geneico?.toMap(),
      'phosphorus_protein_ratio': phosphorus_protein_ratio?.toMap(),
    };
  }

  factory FoodDbModel.fromMap(Map<String, dynamic> map) {
    return FoodDbModel(
      id_product: map['id_product'] as int,
      id_category: map['id_category'] as int,
      id_source: map['id_source'] as int,
      water: map['water'] != null
          ? NutrientDbModel.fromMap(map['water'] as Map<String, dynamic>)
          : null,
      k_potassium: map['k_potassium'] != null
          ? NutrientDbModel.fromMap(map['k_potassium'] as Map<String, dynamic>)
          : null,
      na_sodium: map['na_sodium'] != null
          ? NutrientDbModel.fromMap(map['na_sodium'] as Map<String, dynamic>)
          : null,
      p_phosphorus: map['p_phosphorus'] != null
          ? NutrientDbModel.fromMap(map['p_phosphorus'] as Map<String, dynamic>)
          : null,
      ca_calcium: map['ca_calcium'] != null
          ? NutrientDbModel.fromMap(map['ca_calcium'] as Map<String, dynamic>)
          : null,
      proteins: map['proteins'] != null
          ? NutrientDbModel.fromMap(map['proteins'] as Map<String, dynamic>)
          : null,
      calorie: map['calorie'] != null
          ? NutrientDbModel.fromMap(map['calorie'] as Map<String, dynamic>)
          : null,
      carbohydrates: map['carbohydrates'] != null
          ? NutrientDbModel.fromMap(
              map['carbohydrates'] as Map<String, dynamic>)
          : null,
      fats: map['fats'] != null
          ? NutrientDbModel.fromMap(map['fats'] as Map<String, dynamic>)
          : null,
      feed_ash: map['feed_ash'] != null
          ? NutrientDbModel.fromMap(map['feed_ash'] as Map<String, dynamic>)
          : null,
      a_vitamin: map['a_vitamin'] != null
          ? NutrientDbModel.fromMap(map['a_vitamin'] as Map<String, dynamic>)
          : null,
      retinol: map['retinol'] != null
          ? NutrientDbModel.fromMap(map['retinol'] as Map<String, dynamic>)
          : null,
      beta_carotene: map['beta_carotene'] != null
          ? NutrientDbModel.fromMap(
              map['beta_carotene'] as Map<String, dynamic>)
          : null,
      b1_vitamin_thiamine: map['b1_vitamin_thiamine'] != null
          ? NutrientDbModel.fromMap(
              map['b1_vitamin_thiamine'] as Map<String, dynamic>)
          : null,
      b2_vitamin_riboflavin: map['b2_vitamin_riboflavin'] != null
          ? NutrientDbModel.fromMap(
              map['b2_vitamin_riboflavin'] as Map<String, dynamic>)
          : null,
      b5_vitamin: map['b5_vitamin'] != null
          ? NutrientDbModel.fromMap(map['b5_vitamin'] as Map<String, dynamic>)
          : null,
      b6_vitamin_pyridoxine: map['b6_vitamin_pyridoxine'] != null
          ? NutrientDbModel.fromMap(
              map['b6_vitamin_pyridoxine'] as Map<String, dynamic>)
          : null,
      b9_vitamin_folates: map['b9_vitamin_folates'] != null
          ? NutrientDbModel.fromMap(
              map['b9_vitamin_folates'] as Map<String, dynamic>)
          : null,
      b12_vitamin_cobalamin: map['b12_vitamin_cobalamin'] != null
          ? NutrientDbModel.fromMap(
              map['b12_vitamin_cobalamin'] as Map<String, dynamic>)
          : null,
      c_vitamin: map['c_vitamin'] != null
          ? NutrientDbModel.fromMap(map['c_vitamin'] as Map<String, dynamic>)
          : null,
      e_vitamin: map['e_vitamin'] != null
          ? NutrientDbModel.fromMap(map['e_vitamin'] as Map<String, dynamic>)
          : null,
      rr_vitamin: map['rr_vitamin'] != null
          ? NutrientDbModel.fromMap(map['rr_vitamin'] as Map<String, dynamic>)
          : null,
      niacin: map['niacin'] != null
          ? NutrientDbModel.fromMap(map['niacin'] as Map<String, dynamic>)
          : null,
      mg_magnesium: map['mg_magnesium'] != null
          ? NutrientDbModel.fromMap(map['mg_magnesium'] as Map<String, dynamic>)
          : null,
      s_sulfur: map['s_sulfur'] != null
          ? NutrientDbModel.fromMap(map['s_sulfur'] as Map<String, dynamic>)
          : null,
      cl_chlorine: map['cl_chlorine'] != null
          ? NutrientDbModel.fromMap(map['cl_chlorine'] as Map<String, dynamic>)
          : null,
      fe_iron: map['fe_iron'] != null
          ? NutrientDbModel.fromMap(map['fe_iron'] as Map<String, dynamic>)
          : null,
      i_iodine: map['i_iodine'] != null
          ? NutrientDbModel.fromMap(map['i_iodine'] as Map<String, dynamic>)
          : null,
      co_cobalt: map['co_cobalt'] != null
          ? NutrientDbModel.fromMap(map['co_cobalt'] as Map<String, dynamic>)
          : null,
      mn_manganese: map['mn_manganese'] != null
          ? NutrientDbModel.fromMap(map['mn_manganese'] as Map<String, dynamic>)
          : null,
      cu_copper: map['cu_copper'] != null
          ? NutrientDbModel.fromMap(map['cu_copper'] as Map<String, dynamic>)
          : null,
      mo_molybdenum: map['mo_molybdenum'] != null
          ? NutrientDbModel.fromMap(
              map['mo_molybdenum'] as Map<String, dynamic>)
          : null,
      ni_nickel: map['ni_nickel'] != null
          ? NutrientDbModel.fromMap(map['ni_nickel'] as Map<String, dynamic>)
          : null,
      se_selenium: map['se_selenium'] != null
          ? NutrientDbModel.fromMap(map['se_selenium'] as Map<String, dynamic>)
          : null,
      f_fluorine: map['f_fluorine'] != null
          ? NutrientDbModel.fromMap(map['f_fluorine'] as Map<String, dynamic>)
          : null,
      cr_chrome: map['cr_chrome'] != null
          ? NutrientDbModel.fromMap(map['cr_chrome'] as Map<String, dynamic>)
          : null,
      zh_zinc: map['zh_zinc'] != null
          ? NutrientDbModel.fromMap(map['zh_zinc'] as Map<String, dynamic>)
          : null,
      cholesterol: map['cholesterol'] != null
          ? NutrientDbModel.fromMap(map['cholesterol'] as Map<String, dynamic>)
          : null,
      saturated_fatty_acids: map['saturated_fatty_acids'] != null
          ? NutrientDbModel.fromMap(
              map['saturated_fatty_acids'] as Map<String, dynamic>)
          : null,
      myristina: map['myristina'] != null
          ? NutrientDbModel.fromMap(map['myristina'] as Map<String, dynamic>)
          : null,
      palmitic: map['palmitic'] != null
          ? NutrientDbModel.fromMap(map['palmitic'] as Map<String, dynamic>)
          : null,
      stearic: map['stearic'] != null
          ? NutrientDbModel.fromMap(map['stearic'] as Map<String, dynamic>)
          : null,
      arachinova: map['arachinova'] != null
          ? NutrientDbModel.fromMap(map['arachinova'] as Map<String, dynamic>)
          : null,
      mono_fatty_acids: map['mono_fatty_acids'] != null
          ? NutrientDbModel.fromMap(
              map['mono_fatty_acids'] as Map<String, dynamic>)
          : null,
      palmitoleic: map['palmitoleic'] != null
          ? NutrientDbModel.fromMap(map['palmitoleic'] as Map<String, dynamic>)
          : null,
      heptadecene: map['heptadecene'] != null
          ? NutrientDbModel.fromMap(map['heptadecene'] as Map<String, dynamic>)
          : null,
      omega_9_oleic: map['omega_9_oleic'] != null
          ? NutrientDbModel.fromMap(
              map['omega_9_oleic'] as Map<String, dynamic>)
          : null,
      omega_9_gadolein: map['omega_9_gadolein'] != null
          ? NutrientDbModel.fromMap(
              map['omega_9_gadolein'] as Map<String, dynamic>)
          : null,
      poly_fatty_acids: map['poly_fatty_acids'] != null
          ? NutrientDbModel.fromMap(
              map['poly_fatty_acids'] as Map<String, dynamic>)
          : null,
      linoleic: map['linoleic'] != null
          ? NutrientDbModel.fromMap(map['linoleic'] as Map<String, dynamic>)
          : null,
      linolenic: map['linolenic'] != null
          ? NutrientDbModel.fromMap(map['linolenic'] as Map<String, dynamic>)
          : null,
      arachidonic: map['arachidonic'] != null
          ? NutrientDbModel.fromMap(map['arachidonic'] as Map<String, dynamic>)
          : null,
      omega_3_epk: map['omega_3_epk'] != null
          ? NutrientDbModel.fromMap(map['omega_3_epk'] as Map<String, dynamic>)
          : null,
      omega_3_fatty_acids: map['omega_3_fatty_acids'] != null
          ? NutrientDbModel.fromMap(
              map['omega_3_fatty_acids'] as Map<String, dynamic>)
          : null,
      omega_3_dpc: map['omega_3_dpc'] != null
          ? NutrientDbModel.fromMap(map['omega_3_dpc'] as Map<String, dynamic>)
          : null,
      omega_6_fatty_acids: map['omega_6_fatty_acids'] != null
          ? NutrientDbModel.fromMap(
              map['omega_6_fatty_acids'] as Map<String, dynamic>)
          : null,
      dietary_fiber: map['dietary_fiber'] != null
          ? NutrientDbModel.fromMap(
              map['dietary_fiber'] as Map<String, dynamic>)
          : null,
      mono_di_saccharides: map['mono_di_saccharides'] != null
          ? NutrientDbModel.fromMap(
              map['mono_di_saccharides'] as Map<String, dynamic>)
          : null,
      organic_acids: map['organic_acids'] != null
          ? NutrientDbModel.fromMap(
              map['organic_acids'] as Map<String, dynamic>)
          : null,
      b4_vitamin: map['b4_vitamin'] != null
          ? NutrientDbModel.fromMap(map['b4_vitamin'] as Map<String, dynamic>)
          : null,
      d_Vitamin_calciferol: map['d_Vitamin_calciferol'] != null
          ? NutrientDbModel.fromMap(
              map['d_Vitamin_calciferol'] as Map<String, dynamic>)
          : null,
      h_vitamin_biotin: map['h_vitamin_biotin'] != null
          ? NutrientDbModel.fromMap(
              map['h_vitamin_biotin'] as Map<String, dynamic>)
          : null,
      k_vitamin_phylloquinone: map['k_vitamin_phylloquinone'] != null
          ? NutrientDbModel.fromMap(
              map['k_vitamin_phylloquinone'] as Map<String, dynamic>)
          : null,
      al_aluminium: map['al_aluminium'] != null
          ? NutrientDbModel.fromMap(map['al_aluminium'] as Map<String, dynamic>)
          : null,
      sn_tin: map['sn_tin'] != null
          ? NutrientDbModel.fromMap(map['sn_tin'] as Map<String, dynamic>)
          : null,
      sr_strontium: map['sr_strontium'] != null
          ? NutrientDbModel.fromMap(map['sr_strontium'] as Map<String, dynamic>)
          : null,
      galactose: map['galactose'] != null
          ? NutrientDbModel.fromMap(map['galactose'] as Map<String, dynamic>)
          : null,
      glucose_dextrose: map['glucose_dextrose'] != null
          ? NutrientDbModel.fromMap(
              map['glucose_dextrose'] as Map<String, dynamic>)
          : null,
      lactose: map['lactose'] != null
          ? NutrientDbModel.fromMap(map['lactose'] as Map<String, dynamic>)
          : null,
      essential_amino_acids: map['essential_amino_acids'] != null
          ? NutrientDbModel.fromMap(
              map['essential_amino_acids'] as Map<String, dynamic>)
          : null,
      arginine: map['arginine'] != null
          ? NutrientDbModel.fromMap(map['arginine'] as Map<String, dynamic>)
          : null,
      valin: map['valin'] != null
          ? NutrientDbModel.fromMap(map['valin'] as Map<String, dynamic>)
          : null,
      histidine: map['histidine'] != null
          ? NutrientDbModel.fromMap(map['histidine'] as Map<String, dynamic>)
          : null,
      isoleucine: map['isoleucine'] != null
          ? NutrientDbModel.fromMap(map['isoleucine'] as Map<String, dynamic>)
          : null,
      leucine: map['leucine'] != null
          ? NutrientDbModel.fromMap(map['leucine'] as Map<String, dynamic>)
          : null,
      lysine: map['lysine'] != null
          ? NutrientDbModel.fromMap(map['lysine'] as Map<String, dynamic>)
          : null,
      methionine: map['methionine'] != null
          ? NutrientDbModel.fromMap(map['methionine'] as Map<String, dynamic>)
          : null,
      methionine_cysteine: map['methionine_cysteine'] != null
          ? NutrientDbModel.fromMap(
              map['methionine_cysteine'] as Map<String, dynamic>)
          : null,
      threonine: map['threonine'] != null
          ? NutrientDbModel.fromMap(map['threonine'] as Map<String, dynamic>)
          : null,
      tryptophan: map['tryptophan'] != null
          ? NutrientDbModel.fromMap(map['tryptophan'] as Map<String, dynamic>)
          : null,
      phenylalanine: map['phenylalanine'] != null
          ? NutrientDbModel.fromMap(
              map['phenylalanine'] as Map<String, dynamic>)
          : null,
      phenylalanine_tyrosine: map['phenylalanine_tyrosine'] != null
          ? NutrientDbModel.fromMap(
              map['phenylalanine_tyrosine'] as Map<String, dynamic>)
          : null,
      substitutable_amino_acids: map['substitutable_amino_acids'] != null
          ? NutrientDbModel.fromMap(
              map['substitutable_amino_acids'] as Map<String, dynamic>)
          : null,
      alanine: map['alanine'] != null
          ? NutrientDbModel.fromMap(map['alanine'] as Map<String, dynamic>)
          : null,
      aspartica_acid: map['aspartica_acid'] != null
          ? NutrientDbModel.fromMap(
              map['aspartica_acid'] as Map<String, dynamic>)
          : null,
      glycine: map['glycine'] != null
          ? NutrientDbModel.fromMap(map['glycine'] as Map<String, dynamic>)
          : null,
      glutamic_acid: map['glutamic_acid'] != null
          ? NutrientDbModel.fromMap(
              map['glutamic_acid'] as Map<String, dynamic>)
          : null,
      proline: map['proline'] != null
          ? NutrientDbModel.fromMap(map['proline'] as Map<String, dynamic>)
          : null,
      serin: map['serin'] != null
          ? NutrientDbModel.fromMap(map['serin'] as Map<String, dynamic>)
          : null,
      tyrosine: map['tyrosine'] != null
          ? NutrientDbModel.fromMap(map['tyrosine'] as Map<String, dynamic>)
          : null,
      cysteine: map['cysteine'] != null
          ? NutrientDbModel.fromMap(map['cysteine'] as Map<String, dynamic>)
          : null,
      oil_4_0: map['oil_4_0'] != null
          ? NutrientDbModel.fromMap(map['oil_4_0'] as Map<String, dynamic>)
          : null,
      capron: map['capron'] != null
          ? NutrientDbModel.fromMap(map['capron'] as Map<String, dynamic>)
          : null,
      caprylic: map['caprylic'] != null
          ? NutrientDbModel.fromMap(map['caprylic'] as Map<String, dynamic>)
          : null,
      caprine: map['caprine'] != null
          ? NutrientDbModel.fromMap(map['caprine'] as Map<String, dynamic>)
          : null,
      laurin: map['laurin'] != null
          ? NutrientDbModel.fromMap(map['laurin'] as Map<String, dynamic>)
          : null,
      pentadecane: map['pentadecane'] != null
          ? NutrientDbModel.fromMap(map['pentadecane'] as Map<String, dynamic>)
          : null,
      margarine: map['margarine'] != null
          ? NutrientDbModel.fromMap(map['margarine'] as Map<String, dynamic>)
          : null,
      myristolein: map['myristolein'] != null
          ? NutrientDbModel.fromMap(map['myristolein'] as Map<String, dynamic>)
          : null,
      sucrose: map['sucrose'] != null
          ? NutrientDbModel.fromMap(map['sucrose'] as Map<String, dynamic>)
          : null,
      trans_fats: map['trans_fats'] != null
          ? NutrientDbModel.fromMap(map['trans_fats'] as Map<String, dynamic>)
          : null,
      starch_dextrins: map['starch_dextrins'] != null
          ? NutrientDbModel.fromMap(
              map['starch_dextrins'] as Map<String, dynamic>)
          : null,
      ethyl_alcohol: map['ethyl_alcohol'] != null
          ? NutrientDbModel.fromMap(
              map['ethyl_alcohol'] as Map<String, dynamic>)
          : null,
      si_silicon: map['si_silicon'] != null
          ? NutrientDbModel.fromMap(map['si_silicon'] as Map<String, dynamic>)
          : null,
      b_bohr: map['b_bohr'] != null
          ? NutrientDbModel.fromMap(map['b_bohr'] as Map<String, dynamic>)
          : null,
      v_vanadium: map['v_vanadium'] != null
          ? NutrientDbModel.fromMap(map['v_vanadium'] as Map<String, dynamic>)
          : null,
      li_lithium: map['li_lithium'] != null
          ? NutrientDbModel.fromMap(map['li_lithium'] as Map<String, dynamic>)
          : null,
      rb_rubidium: map['rb_rubidium'] != null
          ? NutrientDbModel.fromMap(map['rb_rubidium'] as Map<String, dynamic>)
          : null,
      zr_zirconium: map['zr_zirconium'] != null
          ? NutrientDbModel.fromMap(map['zr_zirconium'] as Map<String, dynamic>)
          : null,
      omega_9_eruca: map['omega_9_eruca'] != null
          ? NutrientDbModel.fromMap(
              map['omega_9_eruca'] as Map<String, dynamic>)
          : null,
      omega_3_stioride: map['omega_3_stioride'] != null
          ? NutrientDbModel.fromMap(
              map['omega_3_stioride'] as Map<String, dynamic>)
          : null,
      omega_3_Docosahexaeno: map['omega_3_Docosahexaeno'] != null
          ? NutrientDbModel.fromMap(
              map['omega_3_Docosahexaeno'] as Map<String, dynamic>)
          : null,
      beta_sitosterol: map['beta_sitosterol'] != null
          ? NutrientDbModel.fromMap(
              map['beta_sitosterol'] as Map<String, dynamic>)
          : null,
      begenova: map['begenova'] != null
          ? NutrientDbModel.fromMap(map['begenova'] as Map<String, dynamic>)
          : null,
      fructose: map['fructose'] != null
          ? NutrientDbModel.fromMap(map['fructose'] as Map<String, dynamic>)
          : null,
      maltose: map['maltose'] != null
          ? NutrientDbModel.fromMap(map['maltose'] as Map<String, dynamic>)
          : null,
      phytosterols: map['phytosterols'] != null
          ? NutrientDbModel.fromMap(map['phytosterols'] as Map<String, dynamic>)
          : null,
      ti_titan: map['ti_titan'] != null
          ? NutrientDbModel.fromMap(map['ti_titan'] as Map<String, dynamic>)
          : null,
      hydroxyproline: map['hydroxyproline'] != null
          ? NutrientDbModel.fromMap(
              map['hydroxyproline'] as Map<String, dynamic>)
          : null,
      lignoceric: map['lignoceric'] != null
          ? NutrientDbModel.fromMap(map['lignoceric'] as Map<String, dynamic>)
          : null,
      betaine: map['betaine'] != null
          ? NutrientDbModel.fromMap(map['betaine'] as Map<String, dynamic>)
          : null,
      monoun_trans_fats: map['monoun_trans_fats'] != null
          ? NutrientDbModel.fromMap(
              map['monoun_trans_fats'] as Map<String, dynamic>)
          : null,
      cis_16_1: map['cis_16_1'] != null
          ? NutrientDbModel.fromMap(map['cis_16_1'] as Map<String, dynamic>)
          : null,
      cis_18_1: map['cis_18_1'] != null
          ? NutrientDbModel.fromMap(map['cis_18_1'] as Map<String, dynamic>)
          : null,
      trance_18_1: map['trance_18_1'] != null
          ? NutrientDbModel.fromMap(map['trance_18_1'] as Map<String, dynamic>)
          : null,
      mixed_isomers: map['mixed_isomers'] != null
          ? NutrientDbModel.fromMap(
              map['mixed_isomers'] as Map<String, dynamic>)
          : null,
      omega_6_cis: map['omega_6_cis'] != null
          ? NutrientDbModel.fromMap(map['omega_6_cis'] as Map<String, dynamic>)
          : null,
      conjugated_linoleic_acid: map['conjugated_linoleic_acid'] != null
          ? NutrientDbModel.fromMap(
              map['conjugated_linoleic_acid'] as Map<String, dynamic>)
          : null,
      omega_3_alpha_linolenic: map['omega_3_alpha_linolenic'] != null
          ? NutrientDbModel.fromMap(
              map['omega_3_alpha_linolenic'] as Map<String, dynamic>)
          : null,
      d3_vitamin_cholecalciferol: map['d3_vitamin_cholecalciferol'] != null
          ? NutrientDbModel.fromMap(
              map['d3_vitamin_cholecalciferol'] as Map<String, dynamic>)
          : null,
      alpha_carotene: map['alpha_carotene'] != null
          ? NutrientDbModel.fromMap(
              map['alpha_carotene'] as Map<String, dynamic>)
          : null,
      cryptoxanthin_beta: map['cryptoxanthin_beta'] != null
          ? NutrientDbModel.fromMap(
              map['cryptoxanthin_beta'] as Map<String, dynamic>)
          : null,
      lutein_zeaxanthin: map['lutein_zeaxanthin'] != null
          ? NutrientDbModel.fromMap(
              map['lutein_zeaxanthin'] as Map<String, dynamic>)
          : null,
      beta_tocopherol: map['beta_tocopherol'] != null
          ? NutrientDbModel.fromMap(
              map['beta_tocopherol'] as Map<String, dynamic>)
          : null,
      gamma_tocopherol: map['gamma_tocopherol'] != null
          ? NutrientDbModel.fromMap(
              map['gamma_tocopherol'] as Map<String, dynamic>)
          : null,
      trance_16_1: map['trance_16_1'] != null
          ? NutrientDbModel.fromMap(map['trance_16_1'] as Map<String, dynamic>)
          : null,
      cis_22_1: map['cis_22_1'] != null
          ? NutrientDbModel.fromMap(map['cis_22_1'] as Map<String, dynamic>)
          : null,
      omega_9_nervone: map['omega_9_nervone'] != null
          ? NutrientDbModel.fromMap(
              map['omega_9_nervone'] as Map<String, dynamic>)
          : null,
      trans_isomer_undefined: map['trans_isomer_undefined'] != null
          ? NutrientDbModel.fromMap(
              map['trans_isomer_undefined'] as Map<String, dynamic>)
          : null,
      omega_6_gamma_linolenic: map['omega_6_gamma_linolenic'] != null
          ? NutrientDbModel.fromMap(
              map['omega_6_gamma_linolenic'] as Map<String, dynamic>)
          : null,
      trance_18_3: map['trance_18_3'] != null
          ? NutrientDbModel.fromMap(map['trance_18_3'] as Map<String, dynamic>)
          : null,
      omega_6_eicosadieno: map['omega_6_eicosadieno'] != null
          ? NutrientDbModel.fromMap(
              map['omega_6_eicosadieno'] as Map<String, dynamic>)
          : null,
      eicosatrieno: map['eicosatrieno'] != null
          ? NutrientDbModel.fromMap(map['eicosatrieno'] as Map<String, dynamic>)
          : null,
      omega_6_20_3: map['omega_6_20_3'] != null
          ? NutrientDbModel.fromMap(map['omega_6_20_3'] as Map<String, dynamic>)
          : null,
      omega_6_docosatetraeno: map['omega_6_docosatetraeno'] != null
          ? NutrientDbModel.fromMap(
              map['omega_6_docosatetraeno'] as Map<String, dynamic>)
          : null,
      lycopene: map['lycopene'] != null
          ? NutrientDbModel.fromMap(map['lycopene'] as Map<String, dynamic>)
          : null,
      tocopherol_delta: map['tocopherol_delta'] != null
          ? NutrientDbModel.fromMap(
              map['tocopherol_delta'] as Map<String, dynamic>)
          : null,
      polyun_trans_fats: map['polyun_trans_fats'] != null
          ? NutrientDbModel.fromMap(
              map['polyun_trans_fats'] as Map<String, dynamic>)
          : null,
      tridecane_13_0: map['tridecane_13_0'] != null
          ? NutrientDbModel.fromMap(
              map['tridecane_13_0'] as Map<String, dynamic>)
          : null,
      omega_3: map['omega_3'] != null
          ? NutrientDbModel.fromMap(map['omega_3'] as Map<String, dynamic>)
          : null,
      pentadecene: map['pentadecene'] != null
          ? NutrientDbModel.fromMap(map['pentadecene'] as Map<String, dynamic>)
          : null,
      caffeine: map['caffeine'] != null
          ? NutrientDbModel.fromMap(map['caffeine'] as Map<String, dynamic>)
          : null,
      theobromine: map['theobromine'] != null
          ? NutrientDbModel.fromMap(map['theobromine'] as Map<String, dynamic>)
          : null,
      trans_trans: map['trans_trans'] != null
          ? NutrientDbModel.fromMap(map['trans_trans'] as Map<String, dynamic>)
          : null,
      menaquinone_4: map['menaquinone_4'] != null
          ? NutrientDbModel.fromMap(
              map['menaquinone_4'] as Map<String, dynamic>)
          : null,
      campesterol: map['campesterol'] != null
          ? NutrientDbModel.fromMap(map['campesterol'] as Map<String, dynamic>)
          : null,
      stigmasterol: map['stigmasterol'] != null
          ? NutrientDbModel.fromMap(map['stigmasterol'] as Map<String, dynamic>)
          : null,
      e_vitamin_added: map['e_vitamin_added'] != null
          ? NutrientDbModel.fromMap(
              map['e_vitamin_added'] as Map<String, dynamic>)
          : null,
      b12_vitamin_added: map['b12_vitamin_added'] != null
          ? NutrientDbModel.fromMap(
              map['b12_vitamin_added'] as Map<String, dynamic>)
          : null,
      trance_22_1: map['trance_22_1'] != null
          ? NutrientDbModel.fromMap(map['trance_22_1'] as Map<String, dynamic>)
          : null,
      dihydrophylloquinone: map['dihydrophylloquinone'] != null
          ? NutrientDbModel.fromMap(
              map['dihydrophylloquinone'] as Map<String, dynamic>)
          : null,
      d2_vitamin_ergocalciferol: map['d2_vitamin_ergocalciferol'] != null
          ? NutrientDbModel.fromMap(
              map['d2_vitamin_ergocalciferol'] as Map<String, dynamic>)
          : null,
      omega_6_20_4: map['omega_6_20_4'] != null
          ? NutrientDbModel.fromMap(map['omega_6_20_4'] as Map<String, dynamic>)
          : null,
      omega_3_geneico: map['omega_3_geneico'] != null
          ? NutrientDbModel.fromMap(
              map['omega_3_geneico'] as Map<String, dynamic>)
          : null,
      phosphorus_protein_ratio: map['phosphorus_protein_ratio'] != null
          ? NutrientDbModel.fromMap(
              map['phosphorus_protein_ratio'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory FoodDbModel.fromJson(String source) =>
      FoodDbModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'FoodDbModel(id_product: $id_product, id_category: $id_category, id_source: $id_source, water: $water, k_potassium: $k_potassium, na_sodium: $na_sodium, p_phosphorus: $p_phosphorus, ca_calcium: $ca_calcium, proteins: $proteins, calorie: $calorie, carbohydrates: $carbohydrates, fats: $fats, feed_ash: $feed_ash, a_vitamin: $a_vitamin, retinol: $retinol, beta_carotene: $beta_carotene, b1_vitamin_thiamine: $b1_vitamin_thiamine, b2_vitamin_riboflavin: $b2_vitamin_riboflavin, b5_vitamin: $b5_vitamin, b6_vitamin_pyridoxine: $b6_vitamin_pyridoxine, b9_vitamin_folates: $b9_vitamin_folates, b12_vitamin_cobalamin: $b12_vitamin_cobalamin, c_vitamin: $c_vitamin, e_vitamin: $e_vitamin, rr_vitamin: $rr_vitamin, niacin: $niacin, mg_magnesium: $mg_magnesium, s_sulfur: $s_sulfur, cl_chlorine: $cl_chlorine, fe_iron: $fe_iron, i_iodine: $i_iodine, co_cobalt: $co_cobalt, mn_manganese: $mn_manganese, cu_copper: $cu_copper, mo_molybdenum: $mo_molybdenum, ni_nickel: $ni_nickel, se_selenium: $se_selenium, f_fluorine: $f_fluorine, cr_chrome: $cr_chrome, zh_zinc: $zh_zinc, cholesterol: $cholesterol, saturated_fatty_acids: $saturated_fatty_acids, myristina: $myristina, palmitic: $palmitic, stearic: $stearic, arachinova: $arachinova, mono_fatty_acids: $mono_fatty_acids, palmitoleic: $palmitoleic, heptadecene: $heptadecene, omega_9_oleic: $omega_9_oleic, omega_9_gadolein: $omega_9_gadolein, poly_fatty_acids: $poly_fatty_acids, linoleic: $linoleic, linolenic: $linolenic, arachidonic: $arachidonic, omega_3_epk: $omega_3_epk, omega_3_fatty_acids: $omega_3_fatty_acids, omega_3_dpc: $omega_3_dpc, omega_6_fatty_acids: $omega_6_fatty_acids, dietary_fiber: $dietary_fiber, mono_di_saccharides: $mono_di_saccharides, organic_acids: $organic_acids, b4_vitamin: $b4_vitamin, d_Vitamin_calciferol: $d_Vitamin_calciferol, h_vitamin_biotin: $h_vitamin_biotin, k_vitamin_phylloquinone: $k_vitamin_phylloquinone, al_aluminium: $al_aluminium, sn_tin: $sn_tin, sr_strontium: $sr_strontium, galactose: $galactose, glucose_dextrose: $glucose_dextrose, lactose: $lactose, essential_amino_acids: $essential_amino_acids, arginine: $arginine, valin: $valin, histidine: $histidine, isoleucine: $isoleucine, leucine: $leucine, lysine: $lysine, methionine: $methionine, methionine_cysteine: $methionine_cysteine, threonine: $threonine, tryptophan: $tryptophan, phenylalanine: $phenylalanine, phenylalanine_tyrosine: $phenylalanine_tyrosine, substitutable_amino_acids: $substitutable_amino_acids, alanine: $alanine, aspartica_acid: $aspartica_acid, glycine: $glycine, glutamic_acid: $glutamic_acid, proline: $proline, serin: $serin, tyrosine: $tyrosine, cysteine: $cysteine, oil_4_0: $oil_4_0, capron: $capron, caprylic: $caprylic, caprine: $caprine, laurin: $laurin, pentadecane: $pentadecane, margarine: $margarine, myristolein: $myristolein, sucrose: $sucrose, trans_fats: $trans_fats, starch_dextrins: $starch_dextrins, ethyl_alcohol: $ethyl_alcohol, si_silicon: $si_silicon, b_bohr: $b_bohr, v_vanadium: $v_vanadium, li_lithium: $li_lithium, rb_rubidium: $rb_rubidium, zr_zirconium: $zr_zirconium, omega_9_eruca: $omega_9_eruca, omega_3_stioride: $omega_3_stioride, omega_3_Docosahexaeno: $omega_3_Docosahexaeno, beta_sitosterol: $beta_sitosterol, begenova: $begenova, fructose: $fructose, maltose: $maltose, phytosterols: $phytosterols, ti_titan: $ti_titan, hydroxyproline: $hydroxyproline, lignoceric: $lignoceric, betaine: $betaine, monoun_trans_fats: $monoun_trans_fats, cis_16_1: $cis_16_1, cis_18_1: $cis_18_1, trance_18_1: $trance_18_1, mixed_isomers: $mixed_isomers, omega_6_cis: $omega_6_cis, conjugated_linoleic_acid: $conjugated_linoleic_acid, omega_3_alpha_linolenic: $omega_3_alpha_linolenic, d3_vitamin_cholecalciferol: $d3_vitamin_cholecalciferol, alpha_carotene: $alpha_carotene, cryptoxanthin_beta: $cryptoxanthin_beta, lutein_zeaxanthin: $lutein_zeaxanthin, beta_tocopherol: $beta_tocopherol, gamma_tocopherol: $gamma_tocopherol, trance_16_1: $trance_16_1, cis_22_1: $cis_22_1, omega_9_nervone: $omega_9_nervone, trans_isomer_undefined: $trans_isomer_undefined, omega_6_gamma_linolenic: $omega_6_gamma_linolenic, trance_18_3: $trance_18_3, omega_6_eicosadieno: $omega_6_eicosadieno, eicosatrieno: $eicosatrieno, omega_6_20_3: $omega_6_20_3, omega_6_docosatetraeno: $omega_6_docosatetraeno, lycopene: $lycopene, tocopherol_delta: $tocopherol_delta, polyun_trans_fats: $polyun_trans_fats, tridecane_13_0: $tridecane_13_0, omega_3: $omega_3, pentadecene: $pentadecene, caffeine: $caffeine, theobromine: $theobromine, trans_trans: $trans_trans, menaquinone_4: $menaquinone_4, campesterol: $campesterol, stigmasterol: $stigmasterol, e_vitamin_added: $e_vitamin_added, b12_vitamin_added: $b12_vitamin_added, trance_22_1: $trance_22_1, dihydrophylloquinone: $dihydrophylloquinone, d2_vitamin_ergocalciferol: $d2_vitamin_ergocalciferol, omega_6_20_4: $omega_6_20_4, omega_3_geneico: $omega_3_geneico, phosphorus_protein_ratio: $phosphorus_protein_ratio)';
  }

  @override
  bool operator ==(covariant FoodDbModel other) {
    if (identical(this, other)) return true;

    return other.id_product == id_product &&
        other.id_category == id_category &&
        other.id_source == id_source &&
        other.water == water &&
        other.k_potassium == k_potassium &&
        other.na_sodium == na_sodium &&
        other.p_phosphorus == p_phosphorus &&
        other.ca_calcium == ca_calcium &&
        other.proteins == proteins &&
        other.calorie == calorie &&
        other.carbohydrates == carbohydrates &&
        other.fats == fats &&
        other.feed_ash == feed_ash &&
        other.a_vitamin == a_vitamin &&
        other.retinol == retinol &&
        other.beta_carotene == beta_carotene &&
        other.b1_vitamin_thiamine == b1_vitamin_thiamine &&
        other.b2_vitamin_riboflavin == b2_vitamin_riboflavin &&
        other.b5_vitamin == b5_vitamin &&
        other.b6_vitamin_pyridoxine == b6_vitamin_pyridoxine &&
        other.b9_vitamin_folates == b9_vitamin_folates &&
        other.b12_vitamin_cobalamin == b12_vitamin_cobalamin &&
        other.c_vitamin == c_vitamin &&
        other.e_vitamin == e_vitamin &&
        other.rr_vitamin == rr_vitamin &&
        other.niacin == niacin &&
        other.mg_magnesium == mg_magnesium &&
        other.s_sulfur == s_sulfur &&
        other.cl_chlorine == cl_chlorine &&
        other.fe_iron == fe_iron &&
        other.i_iodine == i_iodine &&
        other.co_cobalt == co_cobalt &&
        other.mn_manganese == mn_manganese &&
        other.cu_copper == cu_copper &&
        other.mo_molybdenum == mo_molybdenum &&
        other.ni_nickel == ni_nickel &&
        other.se_selenium == se_selenium &&
        other.f_fluorine == f_fluorine &&
        other.cr_chrome == cr_chrome &&
        other.zh_zinc == zh_zinc &&
        other.cholesterol == cholesterol &&
        other.saturated_fatty_acids == saturated_fatty_acids &&
        other.myristina == myristina &&
        other.palmitic == palmitic &&
        other.stearic == stearic &&
        other.arachinova == arachinova &&
        other.mono_fatty_acids == mono_fatty_acids &&
        other.palmitoleic == palmitoleic &&
        other.heptadecene == heptadecene &&
        other.omega_9_oleic == omega_9_oleic &&
        other.omega_9_gadolein == omega_9_gadolein &&
        other.poly_fatty_acids == poly_fatty_acids &&
        other.linoleic == linoleic &&
        other.linolenic == linolenic &&
        other.arachidonic == arachidonic &&
        other.omega_3_epk == omega_3_epk &&
        other.omega_3_fatty_acids == omega_3_fatty_acids &&
        other.omega_3_dpc == omega_3_dpc &&
        other.omega_6_fatty_acids == omega_6_fatty_acids &&
        other.dietary_fiber == dietary_fiber &&
        other.mono_di_saccharides == mono_di_saccharides &&
        other.organic_acids == organic_acids &&
        other.b4_vitamin == b4_vitamin &&
        other.d_Vitamin_calciferol == d_Vitamin_calciferol &&
        other.h_vitamin_biotin == h_vitamin_biotin &&
        other.k_vitamin_phylloquinone == k_vitamin_phylloquinone &&
        other.al_aluminium == al_aluminium &&
        other.sn_tin == sn_tin &&
        other.sr_strontium == sr_strontium &&
        other.galactose == galactose &&
        other.glucose_dextrose == glucose_dextrose &&
        other.lactose == lactose &&
        other.essential_amino_acids == essential_amino_acids &&
        other.arginine == arginine &&
        other.valin == valin &&
        other.histidine == histidine &&
        other.isoleucine == isoleucine &&
        other.leucine == leucine &&
        other.lysine == lysine &&
        other.methionine == methionine &&
        other.methionine_cysteine == methionine_cysteine &&
        other.threonine == threonine &&
        other.tryptophan == tryptophan &&
        other.phenylalanine == phenylalanine &&
        other.phenylalanine_tyrosine == phenylalanine_tyrosine &&
        other.substitutable_amino_acids == substitutable_amino_acids &&
        other.alanine == alanine &&
        other.aspartica_acid == aspartica_acid &&
        other.glycine == glycine &&
        other.glutamic_acid == glutamic_acid &&
        other.proline == proline &&
        other.serin == serin &&
        other.tyrosine == tyrosine &&
        other.cysteine == cysteine &&
        other.oil_4_0 == oil_4_0 &&
        other.capron == capron &&
        other.caprylic == caprylic &&
        other.caprine == caprine &&
        other.laurin == laurin &&
        other.pentadecane == pentadecane &&
        other.margarine == margarine &&
        other.myristolein == myristolein &&
        other.sucrose == sucrose &&
        other.trans_fats == trans_fats &&
        other.starch_dextrins == starch_dextrins &&
        other.ethyl_alcohol == ethyl_alcohol &&
        other.si_silicon == si_silicon &&
        other.b_bohr == b_bohr &&
        other.v_vanadium == v_vanadium &&
        other.li_lithium == li_lithium &&
        other.rb_rubidium == rb_rubidium &&
        other.zr_zirconium == zr_zirconium &&
        other.omega_9_eruca == omega_9_eruca &&
        other.omega_3_stioride == omega_3_stioride &&
        other.omega_3_Docosahexaeno == omega_3_Docosahexaeno &&
        other.beta_sitosterol == beta_sitosterol &&
        other.begenova == begenova &&
        other.fructose == fructose &&
        other.maltose == maltose &&
        other.phytosterols == phytosterols &&
        other.ti_titan == ti_titan &&
        other.hydroxyproline == hydroxyproline &&
        other.lignoceric == lignoceric &&
        other.betaine == betaine &&
        other.monoun_trans_fats == monoun_trans_fats &&
        other.cis_16_1 == cis_16_1 &&
        other.cis_18_1 == cis_18_1 &&
        other.trance_18_1 == trance_18_1 &&
        other.mixed_isomers == mixed_isomers &&
        other.omega_6_cis == omega_6_cis &&
        other.conjugated_linoleic_acid == conjugated_linoleic_acid &&
        other.omega_3_alpha_linolenic == omega_3_alpha_linolenic &&
        other.d3_vitamin_cholecalciferol == d3_vitamin_cholecalciferol &&
        other.alpha_carotene == alpha_carotene &&
        other.cryptoxanthin_beta == cryptoxanthin_beta &&
        other.lutein_zeaxanthin == lutein_zeaxanthin &&
        other.beta_tocopherol == beta_tocopherol &&
        other.gamma_tocopherol == gamma_tocopherol &&
        other.trance_16_1 == trance_16_1 &&
        other.cis_22_1 == cis_22_1 &&
        other.omega_9_nervone == omega_9_nervone &&
        other.trans_isomer_undefined == trans_isomer_undefined &&
        other.omega_6_gamma_linolenic == omega_6_gamma_linolenic &&
        other.trance_18_3 == trance_18_3 &&
        other.omega_6_eicosadieno == omega_6_eicosadieno &&
        other.eicosatrieno == eicosatrieno &&
        other.omega_6_20_3 == omega_6_20_3 &&
        other.omega_6_docosatetraeno == omega_6_docosatetraeno &&
        other.lycopene == lycopene &&
        other.tocopherol_delta == tocopherol_delta &&
        other.polyun_trans_fats == polyun_trans_fats &&
        other.tridecane_13_0 == tridecane_13_0 &&
        other.omega_3 == omega_3 &&
        other.pentadecene == pentadecene &&
        other.caffeine == caffeine &&
        other.theobromine == theobromine &&
        other.trans_trans == trans_trans &&
        other.menaquinone_4 == menaquinone_4 &&
        other.campesterol == campesterol &&
        other.stigmasterol == stigmasterol &&
        other.e_vitamin_added == e_vitamin_added &&
        other.b12_vitamin_added == b12_vitamin_added &&
        other.trance_22_1 == trance_22_1 &&
        other.dihydrophylloquinone == dihydrophylloquinone &&
        other.d2_vitamin_ergocalciferol == d2_vitamin_ergocalciferol &&
        other.omega_6_20_4 == omega_6_20_4 &&
        other.omega_3_geneico == omega_3_geneico &&
        other.phosphorus_protein_ratio == phosphorus_protein_ratio;
  }

  @override
  int get hashCode {
    return id_product.hashCode ^
        id_category.hashCode ^
        id_source.hashCode ^
        water.hashCode ^
        k_potassium.hashCode ^
        na_sodium.hashCode ^
        p_phosphorus.hashCode ^
        ca_calcium.hashCode ^
        proteins.hashCode ^
        calorie.hashCode ^
        carbohydrates.hashCode ^
        fats.hashCode ^
        feed_ash.hashCode ^
        a_vitamin.hashCode ^
        retinol.hashCode ^
        beta_carotene.hashCode ^
        b1_vitamin_thiamine.hashCode ^
        b2_vitamin_riboflavin.hashCode ^
        b5_vitamin.hashCode ^
        b6_vitamin_pyridoxine.hashCode ^
        b9_vitamin_folates.hashCode ^
        b12_vitamin_cobalamin.hashCode ^
        c_vitamin.hashCode ^
        e_vitamin.hashCode ^
        rr_vitamin.hashCode ^
        niacin.hashCode ^
        mg_magnesium.hashCode ^
        s_sulfur.hashCode ^
        cl_chlorine.hashCode ^
        fe_iron.hashCode ^
        i_iodine.hashCode ^
        co_cobalt.hashCode ^
        mn_manganese.hashCode ^
        cu_copper.hashCode ^
        mo_molybdenum.hashCode ^
        ni_nickel.hashCode ^
        se_selenium.hashCode ^
        f_fluorine.hashCode ^
        cr_chrome.hashCode ^
        zh_zinc.hashCode ^
        cholesterol.hashCode ^
        saturated_fatty_acids.hashCode ^
        myristina.hashCode ^
        palmitic.hashCode ^
        stearic.hashCode ^
        arachinova.hashCode ^
        mono_fatty_acids.hashCode ^
        palmitoleic.hashCode ^
        heptadecene.hashCode ^
        omega_9_oleic.hashCode ^
        omega_9_gadolein.hashCode ^
        poly_fatty_acids.hashCode ^
        linoleic.hashCode ^
        linolenic.hashCode ^
        arachidonic.hashCode ^
        omega_3_epk.hashCode ^
        omega_3_fatty_acids.hashCode ^
        omega_3_dpc.hashCode ^
        omega_6_fatty_acids.hashCode ^
        dietary_fiber.hashCode ^
        mono_di_saccharides.hashCode ^
        organic_acids.hashCode ^
        b4_vitamin.hashCode ^
        d_Vitamin_calciferol.hashCode ^
        h_vitamin_biotin.hashCode ^
        k_vitamin_phylloquinone.hashCode ^
        al_aluminium.hashCode ^
        sn_tin.hashCode ^
        sr_strontium.hashCode ^
        galactose.hashCode ^
        glucose_dextrose.hashCode ^
        lactose.hashCode ^
        essential_amino_acids.hashCode ^
        arginine.hashCode ^
        valin.hashCode ^
        histidine.hashCode ^
        isoleucine.hashCode ^
        leucine.hashCode ^
        lysine.hashCode ^
        methionine.hashCode ^
        methionine_cysteine.hashCode ^
        threonine.hashCode ^
        tryptophan.hashCode ^
        phenylalanine.hashCode ^
        phenylalanine_tyrosine.hashCode ^
        substitutable_amino_acids.hashCode ^
        alanine.hashCode ^
        aspartica_acid.hashCode ^
        glycine.hashCode ^
        glutamic_acid.hashCode ^
        proline.hashCode ^
        serin.hashCode ^
        tyrosine.hashCode ^
        cysteine.hashCode ^
        oil_4_0.hashCode ^
        capron.hashCode ^
        caprylic.hashCode ^
        caprine.hashCode ^
        laurin.hashCode ^
        pentadecane.hashCode ^
        margarine.hashCode ^
        myristolein.hashCode ^
        sucrose.hashCode ^
        trans_fats.hashCode ^
        starch_dextrins.hashCode ^
        ethyl_alcohol.hashCode ^
        si_silicon.hashCode ^
        b_bohr.hashCode ^
        v_vanadium.hashCode ^
        li_lithium.hashCode ^
        rb_rubidium.hashCode ^
        zr_zirconium.hashCode ^
        omega_9_eruca.hashCode ^
        omega_3_stioride.hashCode ^
        omega_3_Docosahexaeno.hashCode ^
        beta_sitosterol.hashCode ^
        begenova.hashCode ^
        fructose.hashCode ^
        maltose.hashCode ^
        phytosterols.hashCode ^
        ti_titan.hashCode ^
        hydroxyproline.hashCode ^
        lignoceric.hashCode ^
        betaine.hashCode ^
        monoun_trans_fats.hashCode ^
        cis_16_1.hashCode ^
        cis_18_1.hashCode ^
        trance_18_1.hashCode ^
        mixed_isomers.hashCode ^
        omega_6_cis.hashCode ^
        conjugated_linoleic_acid.hashCode ^
        omega_3_alpha_linolenic.hashCode ^
        d3_vitamin_cholecalciferol.hashCode ^
        alpha_carotene.hashCode ^
        cryptoxanthin_beta.hashCode ^
        lutein_zeaxanthin.hashCode ^
        beta_tocopherol.hashCode ^
        gamma_tocopherol.hashCode ^
        trance_16_1.hashCode ^
        cis_22_1.hashCode ^
        omega_9_nervone.hashCode ^
        trans_isomer_undefined.hashCode ^
        omega_6_gamma_linolenic.hashCode ^
        trance_18_3.hashCode ^
        omega_6_eicosadieno.hashCode ^
        eicosatrieno.hashCode ^
        omega_6_20_3.hashCode ^
        omega_6_docosatetraeno.hashCode ^
        lycopene.hashCode ^
        tocopherol_delta.hashCode ^
        polyun_trans_fats.hashCode ^
        tridecane_13_0.hashCode ^
        omega_3.hashCode ^
        pentadecene.hashCode ^
        caffeine.hashCode ^
        theobromine.hashCode ^
        trans_trans.hashCode ^
        menaquinone_4.hashCode ^
        campesterol.hashCode ^
        stigmasterol.hashCode ^
        e_vitamin_added.hashCode ^
        b12_vitamin_added.hashCode ^
        trance_22_1.hashCode ^
        dihydrophylloquinone.hashCode ^
        d2_vitamin_ergocalciferol.hashCode ^
        omega_6_20_4.hashCode ^
        omega_3_geneico.hashCode ^
        phosphorus_protein_ratio.hashCode;
  }
}
