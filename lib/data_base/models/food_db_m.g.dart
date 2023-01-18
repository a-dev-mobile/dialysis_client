// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_db_m.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FoodDbModel _$$_FoodDbModelFromJson(Map<String, dynamic> json) =>
    _$_FoodDbModel(
      id: json['id'] as int,
      id_product: json['id_product'] as int,
      id_category: json['id_category'] as int,
      id_source: json['id_source'] as int,
      water: (json['water'] as num?)?.toDouble(),
      k_potassium: (json['k_potassium'] as num?)?.toDouble(),
      na_sodium: (json['na_sodium'] as num?)?.toDouble(),
      p_phosphorus: (json['p_phosphorus'] as num?)?.toDouble(),
      ca_calcium: (json['ca_calcium'] as num?)?.toDouble(),
      proteins: (json['proteins'] as num?)?.toDouble(),
      calorie: (json['calorie'] as num?)?.toDouble(),
      carbohydrates: (json['carbohydrates'] as num?)?.toDouble(),
      fats: (json['fats'] as num?)?.toDouble(),
      feed_ash: (json['feed_ash'] as num?)?.toDouble(),
      a_vitamin: (json['a_vitamin'] as num?)?.toDouble(),
      retinol: (json['retinol'] as num?)?.toDouble(),
      beta_carotene: (json['beta_carotene'] as num?)?.toDouble(),
      b1_vitamin_thiamine: (json['b1_vitamin_thiamine'] as num?)?.toDouble(),
      b2_vitamin_riboflavin:
          (json['b2_vitamin_riboflavin'] as num?)?.toDouble(),
      b5_vitamin: (json['b5_vitamin'] as num?)?.toDouble(),
      b6_vitamin_pyridoxine:
          (json['b6_vitamin_pyridoxine'] as num?)?.toDouble(),
      b9_vitamin_folates: (json['b9_vitamin_folates'] as num?)?.toDouble(),
      b12_vitamin_cobalamin:
          (json['b12_vitamin_cobalamin'] as num?)?.toDouble(),
      c_vitamin: (json['c_vitamin'] as num?)?.toDouble(),
      e_vitamin: (json['e_vitamin'] as num?)?.toDouble(),
      rr_vitamin: (json['rr_vitamin'] as num?)?.toDouble(),
      niacin: (json['niacin'] as num?)?.toDouble(),
      mg_magnesium: (json['mg_magnesium'] as num?)?.toDouble(),
      s_sulfur: (json['s_sulfur'] as num?)?.toDouble(),
      cl_chlorine: (json['cl_chlorine'] as num?)?.toDouble(),
      fe_iron: (json['fe_iron'] as num?)?.toDouble(),
      i_iodine: (json['i_iodine'] as num?)?.toDouble(),
      co_cobalt: (json['co_cobalt'] as num?)?.toDouble(),
      mn_manganese: (json['mn_manganese'] as num?)?.toDouble(),
      cu_copper: (json['cu_copper'] as num?)?.toDouble(),
      mo_molybdenum: (json['mo_molybdenum'] as num?)?.toDouble(),
      ni_nickel: (json['ni_nickel'] as num?)?.toDouble(),
      se_selenium: (json['se_selenium'] as num?)?.toDouble(),
      f_fluorine: (json['f_fluorine'] as num?)?.toDouble(),
      cr_chrome: (json['cr_chrome'] as num?)?.toDouble(),
      zh_zinc: (json['zh_zinc'] as num?)?.toDouble(),
      cholesterol: (json['cholesterol'] as num?)?.toDouble(),
      saturated_fatty_acids:
          (json['saturated_fatty_acids'] as num?)?.toDouble(),
      myristina: (json['myristina'] as num?)?.toDouble(),
      palmitic: (json['palmitic'] as num?)?.toDouble(),
      stearic: (json['stearic'] as num?)?.toDouble(),
      arachinova: (json['arachinova'] as num?)?.toDouble(),
      mono_fatty_acids: (json['mono_fatty_acids'] as num?)?.toDouble(),
      palmitoleic: (json['palmitoleic'] as num?)?.toDouble(),
      heptadecene: (json['heptadecene'] as num?)?.toDouble(),
      omega_9_oleic: (json['omega_9_oleic'] as num?)?.toDouble(),
      omega_9_gadolein: (json['omega_9_gadolein'] as num?)?.toDouble(),
      poly_fatty_acids: (json['poly_fatty_acids'] as num?)?.toDouble(),
      linoleic: (json['linoleic'] as num?)?.toDouble(),
      linolenic: (json['linolenic'] as num?)?.toDouble(),
      arachidonic: (json['arachidonic'] as num?)?.toDouble(),
      omega_3_epk: (json['omega_3_epk'] as num?)?.toDouble(),
      omega_3_fatty_acids: (json['omega_3_fatty_acids'] as num?)?.toDouble(),
      omega_3_dpc: (json['omega_3_dpc'] as num?)?.toDouble(),
      omega_6_fatty_acids: (json['omega_6_fatty_acids'] as num?)?.toDouble(),
      dietary_fiber: (json['dietary_fiber'] as num?)?.toDouble(),
      mono_di_saccharides: (json['mono_di_saccharides'] as num?)?.toDouble(),
      organic_acids: (json['organic_acids'] as num?)?.toDouble(),
      b4_vitamin: (json['b4_vitamin'] as num?)?.toDouble(),
      d_Vitamin_calciferol: (json['d_Vitamin_calciferol'] as num?)?.toDouble(),
      h_vitamin_biotin: (json['h_vitamin_biotin'] as num?)?.toDouble(),
      k_vitamin_phylloquinone:
          (json['k_vitamin_phylloquinone'] as num?)?.toDouble(),
      al_aluminium: (json['al_aluminium'] as num?)?.toDouble(),
      sn_tin: (json['sn_tin'] as num?)?.toDouble(),
      sr_strontium: (json['sr_strontium'] as num?)?.toDouble(),
      galactose: (json['galactose'] as num?)?.toDouble(),
      glucose_dextrose: (json['glucose_dextrose'] as num?)?.toDouble(),
      lactose: (json['lactose'] as num?)?.toDouble(),
      essential_amino_acids:
          (json['essential_amino_acids'] as num?)?.toDouble(),
      arginine: (json['arginine'] as num?)?.toDouble(),
      valin: (json['valin'] as num?)?.toDouble(),
      histidine: (json['histidine'] as num?)?.toDouble(),
      isoleucine: (json['isoleucine'] as num?)?.toDouble(),
      leucine: (json['leucine'] as num?)?.toDouble(),
      lysine: (json['lysine'] as num?)?.toDouble(),
      methionine: (json['methionine'] as num?)?.toDouble(),
      methionine_cysteine: (json['methionine_cysteine'] as num?)?.toDouble(),
      threonine: (json['threonine'] as num?)?.toDouble(),
      tryptophan: (json['tryptophan'] as num?)?.toDouble(),
      phenylalanine: (json['phenylalanine'] as num?)?.toDouble(),
      phenylalanine_tyrosine:
          (json['phenylalanine_tyrosine'] as num?)?.toDouble(),
      substitutable_amino_acids:
          (json['substitutable_amino_acids'] as num?)?.toDouble(),
      alanine: (json['alanine'] as num?)?.toDouble(),
      aspartica_acid: (json['aspartica_acid'] as num?)?.toDouble(),
      glycine: (json['glycine'] as num?)?.toDouble(),
      glutamic_acid: (json['glutamic_acid'] as num?)?.toDouble(),
      proline: (json['proline'] as num?)?.toDouble(),
      serin: (json['serin'] as num?)?.toDouble(),
      tyrosine: (json['tyrosine'] as num?)?.toDouble(),
      cysteine: (json['cysteine'] as num?)?.toDouble(),
      oil_4_0: (json['oil_4_0'] as num?)?.toDouble(),
      capron: (json['capron'] as num?)?.toDouble(),
      caprylic: (json['caprylic'] as num?)?.toDouble(),
      caprine: (json['caprine'] as num?)?.toDouble(),
      laurin: (json['laurin'] as num?)?.toDouble(),
      pentadecane: (json['pentadecane'] as num?)?.toDouble(),
      margarine: (json['margarine'] as num?)?.toDouble(),
      myristolein: (json['myristolein'] as num?)?.toDouble(),
      sucrose: (json['sucrose'] as num?)?.toDouble(),
      trans_fats: (json['trans_fats'] as num?)?.toDouble(),
      starch_dextrins: (json['starch_dextrins'] as num?)?.toDouble(),
      ethyl_alcohol: (json['ethyl_alcohol'] as num?)?.toDouble(),
      si_silicon: (json['si_silicon'] as num?)?.toDouble(),
      b_bohr: (json['b_bohr'] as num?)?.toDouble(),
      v_vanadium: (json['v_vanadium'] as num?)?.toDouble(),
      li_lithium: (json['li_lithium'] as num?)?.toDouble(),
      rb_rubidium: (json['rb_rubidium'] as num?)?.toDouble(),
      zr_zirconium: (json['zr_zirconium'] as num?)?.toDouble(),
      omega_9_eruca: (json['omega_9_eruca'] as num?)?.toDouble(),
      omega_3_stioride: (json['omega_3_stioride'] as num?)?.toDouble(),
      omega_3_Docosahexaeno:
          (json['omega_3_Docosahexaeno'] as num?)?.toDouble(),
      beta_sitosterol: (json['beta_sitosterol'] as num?)?.toDouble(),
      begenova: (json['begenova'] as num?)?.toDouble(),
      fructose: (json['fructose'] as num?)?.toDouble(),
      maltose: (json['maltose'] as num?)?.toDouble(),
      phytosterols: (json['phytosterols'] as num?)?.toDouble(),
      ti_titan: (json['ti_titan'] as num?)?.toDouble(),
      hydroxyproline: (json['hydroxyproline'] as num?)?.toDouble(),
      lignoceric: (json['lignoceric'] as num?)?.toDouble(),
      betaine: (json['betaine'] as num?)?.toDouble(),
      monoun_trans_fats: (json['monoun_trans_fats'] as num?)?.toDouble(),
      cis_16_1: (json['cis_16_1'] as num?)?.toDouble(),
      cis_18_1: (json['cis_18_1'] as num?)?.toDouble(),
      trance_18_1: (json['trance_18_1'] as num?)?.toDouble(),
      mixed_isomers: (json['mixed_isomers'] as num?)?.toDouble(),
      omega_6_cis: (json['omega_6_cis'] as num?)?.toDouble(),
      conjugated_linoleic_acid:
          (json['conjugated_linoleic_acid'] as num?)?.toDouble(),
      omega_3_alpha_linolenic:
          (json['omega_3_alpha_linolenic'] as num?)?.toDouble(),
      d3_vitamin_cholecalciferol:
          (json['d3_vitamin_cholecalciferol'] as num?)?.toDouble(),
      alpha_carotene: (json['alpha_carotene'] as num?)?.toDouble(),
      cryptoxanthin_beta: (json['cryptoxanthin_beta'] as num?)?.toDouble(),
      lutein_zeaxanthin: (json['lutein_zeaxanthin'] as num?)?.toDouble(),
      beta_tocopherol: (json['beta_tocopherol'] as num?)?.toDouble(),
      gamma_tocopherol: (json['gamma_tocopherol'] as num?)?.toDouble(),
      trance_16_1: (json['trance_16_1'] as num?)?.toDouble(),
      cis_22_1: (json['cis_22_1'] as num?)?.toDouble(),
      omega_9_nervone: (json['omega_9_nervone'] as num?)?.toDouble(),
      trans_isomer_undefined:
          (json['trans_isomer_undefined'] as num?)?.toDouble(),
      omega_6_gamma_linolenic:
          (json['omega_6_gamma_linolenic'] as num?)?.toDouble(),
      trance_18_3: (json['trance_18_3'] as num?)?.toDouble(),
      omega_6_eicosadieno: (json['omega_6_eicosadieno'] as num?)?.toDouble(),
      eicosatrieno: (json['eicosatrieno'] as num?)?.toDouble(),
      omega_6_20_3: (json['omega_6_20_3'] as num?)?.toDouble(),
      omega_6_docosatetraeno:
          (json['omega_6_docosatetraeno'] as num?)?.toDouble(),
      lycopene: (json['lycopene'] as num?)?.toDouble(),
      tocopherol_delta: (json['tocopherol_delta'] as num?)?.toDouble(),
      polyun_trans_fats: (json['polyun_trans_fats'] as num?)?.toDouble(),
      tridecane_13_0: (json['tridecane_13_0'] as num?)?.toDouble(),
      omega_3: (json['omega_3'] as num?)?.toDouble(),
      pentadecene: (json['pentadecene'] as num?)?.toDouble(),
      caffeine: (json['caffeine'] as num?)?.toDouble(),
      theobromine: (json['theobromine'] as num?)?.toDouble(),
      trans_trans: (json['trans_trans'] as num?)?.toDouble(),
      menaquinone_4: (json['menaquinone_4'] as num?)?.toDouble(),
      campesterol: (json['campesterol'] as num?)?.toDouble(),
      stigmasterol: (json['stigmasterol'] as num?)?.toDouble(),
      e_vitamin_added: (json['e_vitamin_added'] as num?)?.toDouble(),
      b12_vitamin_added: (json['b12_vitamin_added'] as num?)?.toDouble(),
      trance_22_1: (json['trance_22_1'] as num?)?.toDouble(),
      dihydrophylloquinone: (json['dihydrophylloquinone'] as num?)?.toDouble(),
      d2_vitamin_ergocalciferol:
          (json['d2_vitamin_ergocalciferol'] as num?)?.toDouble(),
      omega_6_20_4: (json['omega_6_20_4'] as num?)?.toDouble(),
      omega_3_geneico: (json['omega_3_geneico'] as num?)?.toDouble(),
      phosphorus_protein_ratio:
          (json['phosphorus_protein_ratio'] as num?)?.toDouble(),
      kilojoule: (json['kilojoule'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_FoodDbModelToJson(_$_FoodDbModel instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'id_product': instance.id_product,
    'id_category': instance.id_category,
    'id_source': instance.id_source,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('water', instance.water);
  writeNotNull('k_potassium', instance.k_potassium);
  writeNotNull('na_sodium', instance.na_sodium);
  writeNotNull('p_phosphorus', instance.p_phosphorus);
  writeNotNull('ca_calcium', instance.ca_calcium);
  writeNotNull('proteins', instance.proteins);
  writeNotNull('calorie', instance.calorie);
  writeNotNull('carbohydrates', instance.carbohydrates);
  writeNotNull('fats', instance.fats);
  writeNotNull('feed_ash', instance.feed_ash);
  writeNotNull('a_vitamin', instance.a_vitamin);
  writeNotNull('retinol', instance.retinol);
  writeNotNull('beta_carotene', instance.beta_carotene);
  writeNotNull('b1_vitamin_thiamine', instance.b1_vitamin_thiamine);
  writeNotNull('b2_vitamin_riboflavin', instance.b2_vitamin_riboflavin);
  writeNotNull('b5_vitamin', instance.b5_vitamin);
  writeNotNull('b6_vitamin_pyridoxine', instance.b6_vitamin_pyridoxine);
  writeNotNull('b9_vitamin_folates', instance.b9_vitamin_folates);
  writeNotNull('b12_vitamin_cobalamin', instance.b12_vitamin_cobalamin);
  writeNotNull('c_vitamin', instance.c_vitamin);
  writeNotNull('e_vitamin', instance.e_vitamin);
  writeNotNull('rr_vitamin', instance.rr_vitamin);
  writeNotNull('niacin', instance.niacin);
  writeNotNull('mg_magnesium', instance.mg_magnesium);
  writeNotNull('s_sulfur', instance.s_sulfur);
  writeNotNull('cl_chlorine', instance.cl_chlorine);
  writeNotNull('fe_iron', instance.fe_iron);
  writeNotNull('i_iodine', instance.i_iodine);
  writeNotNull('co_cobalt', instance.co_cobalt);
  writeNotNull('mn_manganese', instance.mn_manganese);
  writeNotNull('cu_copper', instance.cu_copper);
  writeNotNull('mo_molybdenum', instance.mo_molybdenum);
  writeNotNull('ni_nickel', instance.ni_nickel);
  writeNotNull('se_selenium', instance.se_selenium);
  writeNotNull('f_fluorine', instance.f_fluorine);
  writeNotNull('cr_chrome', instance.cr_chrome);
  writeNotNull('zh_zinc', instance.zh_zinc);
  writeNotNull('cholesterol', instance.cholesterol);
  writeNotNull('saturated_fatty_acids', instance.saturated_fatty_acids);
  writeNotNull('myristina', instance.myristina);
  writeNotNull('palmitic', instance.palmitic);
  writeNotNull('stearic', instance.stearic);
  writeNotNull('arachinova', instance.arachinova);
  writeNotNull('mono_fatty_acids', instance.mono_fatty_acids);
  writeNotNull('palmitoleic', instance.palmitoleic);
  writeNotNull('heptadecene', instance.heptadecene);
  writeNotNull('omega_9_oleic', instance.omega_9_oleic);
  writeNotNull('omega_9_gadolein', instance.omega_9_gadolein);
  writeNotNull('poly_fatty_acids', instance.poly_fatty_acids);
  writeNotNull('linoleic', instance.linoleic);
  writeNotNull('linolenic', instance.linolenic);
  writeNotNull('arachidonic', instance.arachidonic);
  writeNotNull('omega_3_epk', instance.omega_3_epk);
  writeNotNull('omega_3_fatty_acids', instance.omega_3_fatty_acids);
  writeNotNull('omega_3_dpc', instance.omega_3_dpc);
  writeNotNull('omega_6_fatty_acids', instance.omega_6_fatty_acids);
  writeNotNull('dietary_fiber', instance.dietary_fiber);
  writeNotNull('mono_di_saccharides', instance.mono_di_saccharides);
  writeNotNull('organic_acids', instance.organic_acids);
  writeNotNull('b4_vitamin', instance.b4_vitamin);
  writeNotNull('d_Vitamin_calciferol', instance.d_Vitamin_calciferol);
  writeNotNull('h_vitamin_biotin', instance.h_vitamin_biotin);
  writeNotNull('k_vitamin_phylloquinone', instance.k_vitamin_phylloquinone);
  writeNotNull('al_aluminium', instance.al_aluminium);
  writeNotNull('sn_tin', instance.sn_tin);
  writeNotNull('sr_strontium', instance.sr_strontium);
  writeNotNull('galactose', instance.galactose);
  writeNotNull('glucose_dextrose', instance.glucose_dextrose);
  writeNotNull('lactose', instance.lactose);
  writeNotNull('essential_amino_acids', instance.essential_amino_acids);
  writeNotNull('arginine', instance.arginine);
  writeNotNull('valin', instance.valin);
  writeNotNull('histidine', instance.histidine);
  writeNotNull('isoleucine', instance.isoleucine);
  writeNotNull('leucine', instance.leucine);
  writeNotNull('lysine', instance.lysine);
  writeNotNull('methionine', instance.methionine);
  writeNotNull('methionine_cysteine', instance.methionine_cysteine);
  writeNotNull('threonine', instance.threonine);
  writeNotNull('tryptophan', instance.tryptophan);
  writeNotNull('phenylalanine', instance.phenylalanine);
  writeNotNull('phenylalanine_tyrosine', instance.phenylalanine_tyrosine);
  writeNotNull('substitutable_amino_acids', instance.substitutable_amino_acids);
  writeNotNull('alanine', instance.alanine);
  writeNotNull('aspartica_acid', instance.aspartica_acid);
  writeNotNull('glycine', instance.glycine);
  writeNotNull('glutamic_acid', instance.glutamic_acid);
  writeNotNull('proline', instance.proline);
  writeNotNull('serin', instance.serin);
  writeNotNull('tyrosine', instance.tyrosine);
  writeNotNull('cysteine', instance.cysteine);
  writeNotNull('oil_4_0', instance.oil_4_0);
  writeNotNull('capron', instance.capron);
  writeNotNull('caprylic', instance.caprylic);
  writeNotNull('caprine', instance.caprine);
  writeNotNull('laurin', instance.laurin);
  writeNotNull('pentadecane', instance.pentadecane);
  writeNotNull('margarine', instance.margarine);
  writeNotNull('myristolein', instance.myristolein);
  writeNotNull('sucrose', instance.sucrose);
  writeNotNull('trans_fats', instance.trans_fats);
  writeNotNull('starch_dextrins', instance.starch_dextrins);
  writeNotNull('ethyl_alcohol', instance.ethyl_alcohol);
  writeNotNull('si_silicon', instance.si_silicon);
  writeNotNull('b_bohr', instance.b_bohr);
  writeNotNull('v_vanadium', instance.v_vanadium);
  writeNotNull('li_lithium', instance.li_lithium);
  writeNotNull('rb_rubidium', instance.rb_rubidium);
  writeNotNull('zr_zirconium', instance.zr_zirconium);
  writeNotNull('omega_9_eruca', instance.omega_9_eruca);
  writeNotNull('omega_3_stioride', instance.omega_3_stioride);
  writeNotNull('omega_3_Docosahexaeno', instance.omega_3_Docosahexaeno);
  writeNotNull('beta_sitosterol', instance.beta_sitosterol);
  writeNotNull('begenova', instance.begenova);
  writeNotNull('fructose', instance.fructose);
  writeNotNull('maltose', instance.maltose);
  writeNotNull('phytosterols', instance.phytosterols);
  writeNotNull('ti_titan', instance.ti_titan);
  writeNotNull('hydroxyproline', instance.hydroxyproline);
  writeNotNull('lignoceric', instance.lignoceric);
  writeNotNull('betaine', instance.betaine);
  writeNotNull('monoun_trans_fats', instance.monoun_trans_fats);
  writeNotNull('cis_16_1', instance.cis_16_1);
  writeNotNull('cis_18_1', instance.cis_18_1);
  writeNotNull('trance_18_1', instance.trance_18_1);
  writeNotNull('mixed_isomers', instance.mixed_isomers);
  writeNotNull('omega_6_cis', instance.omega_6_cis);
  writeNotNull('conjugated_linoleic_acid', instance.conjugated_linoleic_acid);
  writeNotNull('omega_3_alpha_linolenic', instance.omega_3_alpha_linolenic);
  writeNotNull(
      'd3_vitamin_cholecalciferol', instance.d3_vitamin_cholecalciferol);
  writeNotNull('alpha_carotene', instance.alpha_carotene);
  writeNotNull('cryptoxanthin_beta', instance.cryptoxanthin_beta);
  writeNotNull('lutein_zeaxanthin', instance.lutein_zeaxanthin);
  writeNotNull('beta_tocopherol', instance.beta_tocopherol);
  writeNotNull('gamma_tocopherol', instance.gamma_tocopherol);
  writeNotNull('trance_16_1', instance.trance_16_1);
  writeNotNull('cis_22_1', instance.cis_22_1);
  writeNotNull('omega_9_nervone', instance.omega_9_nervone);
  writeNotNull('trans_isomer_undefined', instance.trans_isomer_undefined);
  writeNotNull('omega_6_gamma_linolenic', instance.omega_6_gamma_linolenic);
  writeNotNull('trance_18_3', instance.trance_18_3);
  writeNotNull('omega_6_eicosadieno', instance.omega_6_eicosadieno);
  writeNotNull('eicosatrieno', instance.eicosatrieno);
  writeNotNull('omega_6_20_3', instance.omega_6_20_3);
  writeNotNull('omega_6_docosatetraeno', instance.omega_6_docosatetraeno);
  writeNotNull('lycopene', instance.lycopene);
  writeNotNull('tocopherol_delta', instance.tocopherol_delta);
  writeNotNull('polyun_trans_fats', instance.polyun_trans_fats);
  writeNotNull('tridecane_13_0', instance.tridecane_13_0);
  writeNotNull('omega_3', instance.omega_3);
  writeNotNull('pentadecene', instance.pentadecene);
  writeNotNull('caffeine', instance.caffeine);
  writeNotNull('theobromine', instance.theobromine);
  writeNotNull('trans_trans', instance.trans_trans);
  writeNotNull('menaquinone_4', instance.menaquinone_4);
  writeNotNull('campesterol', instance.campesterol);
  writeNotNull('stigmasterol', instance.stigmasterol);
  writeNotNull('e_vitamin_added', instance.e_vitamin_added);
  writeNotNull('b12_vitamin_added', instance.b12_vitamin_added);
  writeNotNull('trance_22_1', instance.trance_22_1);
  writeNotNull('dihydrophylloquinone', instance.dihydrophylloquinone);
  writeNotNull('d2_vitamin_ergocalciferol', instance.d2_vitamin_ergocalciferol);
  writeNotNull('omega_6_20_4', instance.omega_6_20_4);
  writeNotNull('omega_3_geneico', instance.omega_3_geneico);
  writeNotNull('phosphorus_protein_ratio', instance.phosphorus_protein_ratio);
  writeNotNull('kilojoule', instance.kilojoule);
  return val;
}
