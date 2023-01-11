/// {@template columnenum}
/// ColumnEnum enumeration
/// {@endtemplate}

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

enum NutrientColumnEnum with Comparable<NutrientColumnEnum> { 
  water('water'),
  k_potassium('k_potassium'),
  na_sodium('na_sodium'),
  p_phosphorus('p_phosphorus'),
  ca_calcium('ca_calcium'),
  proteins('proteins'),
  calorie('calorie'),
  carbohydrates('carbohydrates'),
  fats('fats'),
  feed_ash('feed_ash'),
  a_vitamin('a_vitamin'),
  retinol('retinol'),
  beta_carotene('beta_carotene'),
  b1_vitamin_thiamine('b1_vitamin_thiamine'),
  b2_vitamin_riboflavin('b2_vitamin_riboflavin'),
  b5_vitamin('b5_vitamin'),
  b6_vitamin_pyridoxine('b6_vitamin_pyridoxine'),
  b9_vitamin_folates('b9_vitamin_folates'),
  b12_vitamin_cobalamin('b12_vitamin_cobalamin'),
  c_vitamin('c_vitamin'),
  e_vitamin('e_vitamin'),
  rr_vitamin('rr_vitamin'),
  niacin('niacin'),
  mg_magnesium('mg_magnesium'),
  s_sulfur('s_sulfur'),
  cl_chlorine('cl_chlorine'),
  fe_iron('fe_iron'),
  i_iodine('i_iodine'),
  co_cobalt('co_cobalt'),
  mn_manganese('mn_manganese'),
  cu_copper('cu_copper'),
  mo_molybdenum('mo_molybdenum'),
  ni_nickel('ni_nickel'),
  se_selenium('se_selenium'),
  f_fluorine('f_fluorine'),
  cr_chrome('cr_chrome'),
  zh_zinc('zh_zinc'),
  cholesterol('cholesterol'),
  saturated_fatty_acids('saturated_fatty_acids'),
  myristina('myristina'),
  palmitic('palmitic'),
  stearic('stearic'),
  arachinova('arachinova'),
  mono_fatty_acids('mono_fatty_acids'),
  palmitoleic('palmitoleic'),
  heptadecene('heptadecene'),
  omega_9_oleic('omega_9_oleic'),
  omega_9_gadolein('omega_9_gadolein'),
  poly_fatty_acids('poly_fatty_acids'),
  linoleic('linoleic'),
  linolenic('linolenic'),
  arachidonic('arachidonic'),
  omega_3_epk('omega_3_epk'),
  omega_3_fatty_acids('omega_3_fatty_acids'),
  omega_3_dpc('omega_3_dpc'),
  omega_6_fatty_acids('omega_6_fatty_acids'),
  dietary_fiber('dietary_fiber'),
  mono_di_saccharides('mono_di_saccharides'),
  organic_acids('organic_acids'),
  b4_vitamin('b4_vitamin'),
  d_Vitamin_calciferol('d_Vitamin_calciferol'),
  h_vitamin_biotin('h_vitamin_biotin'),
  k_vitamin_phylloquinone('k_vitamin_phylloquinone'),
  al_aluminium('al_aluminium'),
  sn_tin('sn_tin'),
  sr_strontium('sr_strontium'),
  galactose('galactose'),
  glucose_dextrose('glucose_dextrose'),
  lactose('lactose'),
  essential_amino_acids('essential_amino_acids'),
  arginine('arginine'),
  valin('valin'),
  histidine('histidine'),
  isoleucine('isoleucine'),
  leucine('leucine'),
  lysine('lysine'),
  methionine('methionine'),
  methionine_cysteine('methionine_cysteine'),
  threonine('threonine'),
  tryptophan('tryptophan'),
  phenylalanine('phenylalanine'),
  phenylalanine_tyrosine('phenylalanine_tyrosine'),
  substitutable_amino_acids('substitutable_amino_acids'),
  alanine('alanine'),
  aspartica_acid('aspartica_acid'),
  glycine('glycine'),
  glutamic_acid('glutamic_acid'),
  proline('proline'),
  serin('serin'),
  tyrosine('tyrosine'),
  cysteine('cysteine'),
  oil_4_0('oil_4_0'),
  capron('capron'),
  caprylic('caprylic'),
  caprine('caprine'),
  laurin('laurin'),
  pentadecane('pentadecane'),
  margarine('margarine'),
  myristolein('myristolein'),
  sucrose('sucrose'),
  trans_fats('trans_fats'),
  starch_dextrins('starch_dextrins'),
  ethyl_alcohol('ethyl_alcohol'),
  si_silicon('si_silicon'),
  b_bohr('b_bohr'),
  v_vanadium('v_vanadium'),
  li_lithium('li_lithium'),
  rb_rubidium('rb_rubidium'),
  zr_zirconium('zr_zirconium'),
  omega_9_eruca('omega_9_eruca'),
  omega_3_stioride('omega_3_stioride'),
  omega_3_Docosahexaeno('omega_3_Docosahexaeno'),
  beta_sitosterol('beta_sitosterol'),
  begenova('begenova'),
  fructose('fructose'),
  maltose('maltose'),
  phytosterols('phytosterols'),
  ti_titan('ti_titan'),
  hydroxyproline('hydroxyproline'),
  lignoceric('lignoceric'),
  betaine('betaine'),
  monoun_trans_fats('monoun_trans_fats'),
  cis_16_1('cis_16_1'),
  cis_18_1('cis_18_1'),
  trance_18_1('trance_18_1'),
  mixed_isomers('mixed_isomers'),
  omega_6_cis('omega_6_cis'),
  conjugated_linoleic_acid('conjugated_linoleic_acid'),
  omega_3_alpha_linolenic('omega_3_alpha_linolenic'),
  d3_vitamin_cholecalciferol('d3_vitamin_cholecalciferol'),
  alpha_carotene('alpha_carotene'),
  cryptoxanthin_beta('cryptoxanthin_beta'),
  lutein_zeaxanthin('lutein_zeaxanthin'),
  beta_tocopherol('beta_tocopherol'),
  gamma_tocopherol('gamma_tocopherol'),
  trance_16_1('trance_16_1'),
  cis_22_1('cis_22_1'),
  omega_9_nervone('omega_9_nervone'),
  trans_isomer_undefined('trans_isomer_undefined'),
  omega_6_gamma_linolenic('omega_6_gamma_linolenic'),
  trance_18_3('trance_18_3'),
  omega_6_eicosadieno('omega_6_eicosadieno'),
  eicosatrieno('eicosatrieno'),
  omega_6_20_3('omega_6_20_3'),
  omega_6_docosatetraeno('omega_6_docosatetraeno'),
  lycopene('lycopene'),
  tocopherol_delta('tocopherol_delta'),
  polyun_trans_fats('polyun_trans_fats'),
  tridecane_13_0('tridecane_13_0'),
  omega_3('omega_3'),
  pentadecene('pentadecene'),
  caffeine('caffeine'),
  theobromine('theobromine'),
  trans_trans('trans_trans'),
  menaquinone_4('menaquinone_4'),
  campesterol('campesterol'),
  stigmasterol('stigmasterol'),
  e_vitamin_added('e_vitamin_added'),
  b12_vitamin_added('b12_vitamin_added'),
  trance_22_1('trance_22_1'),
  dihydrophylloquinone('dihydrophylloquinone'),
  d2_vitamin_ergocalciferol('d2_vitamin_ergocalciferol'),
  omega_6_20_4('omega_6_20_4'),
  omega_3_geneico('omega_3_geneico');

  const NutrientColumnEnum(this.value);

  final String value;

  static NutrientColumnEnum fromValue(String? value, {NutrientColumnEnum? fallback}) {
    switch (value) {
      case 'water':
        return water;
      case 'k_potassium':
        return k_potassium;
      case 'na_sodium':
        return na_sodium;
      case 'p_phosphorus':
        return p_phosphorus;
      case 'ca_calcium':
        return ca_calcium;
      case 'proteins':
        return proteins;
      case 'calorie':
        return calorie;
      case 'carbohydrates':
        return carbohydrates;
      case 'fats':
        return fats;
      case 'feed_ash':
        return feed_ash;
      case 'a_vitamin':
        return a_vitamin;
      case 'retinol':
        return retinol;
      case 'beta_carotene':
        return beta_carotene;
      case 'b1_vitamin_thiamine':
        return b1_vitamin_thiamine;
      case 'b2_vitamin_riboflavin':
        return b2_vitamin_riboflavin;
      case 'b5_vitamin':
        return b5_vitamin;
      case 'b6_vitamin_pyridoxine':
        return b6_vitamin_pyridoxine;
      case 'b9_vitamin_folates':
        return b9_vitamin_folates;
      case 'b12_vitamin_cobalamin':
        return b12_vitamin_cobalamin;
      case 'c_vitamin':
        return c_vitamin;
      case 'e_vitamin':
        return e_vitamin;
      case 'rr_vitamin':
        return rr_vitamin;
      case 'niacin':
        return niacin;
      case 'mg_magnesium':
        return mg_magnesium;
      case 's_sulfur':
        return s_sulfur;
      case 'cl_chlorine':
        return cl_chlorine;
      case 'fe_iron':
        return fe_iron;
      case 'i_iodine':
        return i_iodine;
      case 'co_cobalt':
        return co_cobalt;
      case 'mn_manganese':
        return mn_manganese;
      case 'cu_copper':
        return cu_copper;
      case 'mo_molybdenum':
        return mo_molybdenum;
      case 'ni_nickel':
        return ni_nickel;
      case 'se_selenium':
        return se_selenium;
      case 'f_fluorine':
        return f_fluorine;
      case 'cr_chrome':
        return cr_chrome;
      case 'zh_zinc':
        return zh_zinc;
      case 'cholesterol':
        return cholesterol;
      case 'saturated_fatty_acids':
        return saturated_fatty_acids;
      case 'myristina':
        return myristina;
      case 'palmitic':
        return palmitic;
      case 'stearic':
        return stearic;
      case 'arachinova':
        return arachinova;
      case 'mono_fatty_acids':
        return mono_fatty_acids;
      case 'palmitoleic':
        return palmitoleic;
      case 'heptadecene':
        return heptadecene;
      case 'omega_9_oleic':
        return omega_9_oleic;
      case 'omega_9_gadolein':
        return omega_9_gadolein;
      case 'poly_fatty_acids':
        return poly_fatty_acids;
      case 'linoleic':
        return linoleic;
      case 'linolenic':
        return linolenic;
      case 'arachidonic':
        return arachidonic;
      case 'omega_3_epk':
        return omega_3_epk;
      case 'omega_3_fatty_acids':
        return omega_3_fatty_acids;
      case 'omega_3_dpc':
        return omega_3_dpc;
      case 'omega_6_fatty_acids':
        return omega_6_fatty_acids;
      case 'dietary_fiber':
        return dietary_fiber;
      case 'mono_di_saccharides':
        return mono_di_saccharides;
      case 'organic_acids':
        return organic_acids;
      case 'b4_vitamin':
        return b4_vitamin;
      case 'd_Vitamin_calciferol':
        return d_Vitamin_calciferol;
      case 'h_vitamin_biotin':
        return h_vitamin_biotin;
      case 'k_vitamin_phylloquinone':
        return k_vitamin_phylloquinone;
      case 'al_aluminium':
        return al_aluminium;
      case 'sn_tin':
        return sn_tin;
      case 'sr_strontium':
        return sr_strontium;
      case 'galactose':
        return galactose;
      case 'glucose_dextrose':
        return glucose_dextrose;
      case 'lactose':
        return lactose;
      case 'essential_amino_acids':
        return essential_amino_acids;
      case 'arginine':
        return arginine;
      case 'valin':
        return valin;
      case 'histidine':
        return histidine;
      case 'isoleucine':
        return isoleucine;
      case 'leucine':
        return leucine;
      case 'lysine':
        return lysine;
      case 'methionine':
        return methionine;
      case 'methionine_cysteine':
        return methionine_cysteine;
      case 'threonine':
        return threonine;
      case 'tryptophan':
        return tryptophan;
      case 'phenylalanine':
        return phenylalanine;
      case 'phenylalanine_tyrosine':
        return phenylalanine_tyrosine;
      case 'substitutable_amino_acids':
        return substitutable_amino_acids;
      case 'alanine':
        return alanine;
      case 'aspartica_acid':
        return aspartica_acid;
      case 'glycine':
        return glycine;
      case 'glutamic_acid':
        return glutamic_acid;
      case 'proline':
        return proline;
      case 'serin':
        return serin;
      case 'tyrosine':
        return tyrosine;
      case 'cysteine':
        return cysteine;
      case 'oil_4_0':
        return oil_4_0;
      case 'capron':
        return capron;
      case 'caprylic':
        return caprylic;
      case 'caprine':
        return caprine;
      case 'laurin':
        return laurin;
      case 'pentadecane':
        return pentadecane;
      case 'margarine':
        return margarine;
      case 'myristolein':
        return myristolein;
      case 'sucrose':
        return sucrose;
      case 'trans_fats':
        return trans_fats;
      case 'starch_dextrins':
        return starch_dextrins;
      case 'ethyl_alcohol':
        return ethyl_alcohol;
      case 'si_silicon':
        return si_silicon;
      case 'b_bohr':
        return b_bohr;
      case 'v_vanadium':
        return v_vanadium;
      case 'li_lithium':
        return li_lithium;
      case 'rb_rubidium':
        return rb_rubidium;
      case 'zr_zirconium':
        return zr_zirconium;
      case 'omega_9_eruca':
        return omega_9_eruca;
      case 'omega_3_stioride':
        return omega_3_stioride;
      case 'omega_3_Docosahexaeno':
        return omega_3_Docosahexaeno;
      case 'beta_sitosterol':
        return beta_sitosterol;
      case 'begenova':
        return begenova;
      case 'fructose':
        return fructose;
      case 'maltose':
        return maltose;
      case 'phytosterols':
        return phytosterols;
      case 'ti_titan':
        return ti_titan;
      case 'hydroxyproline':
        return hydroxyproline;
      case 'lignoceric':
        return lignoceric;
      case 'betaine':
        return betaine;
      case 'monoun_trans_fats':
        return monoun_trans_fats;
      case 'cis_16_1':
        return cis_16_1;
      case 'cis_18_1':
        return cis_18_1;
      case 'trance_18_1':
        return trance_18_1;
      case 'mixed_isomers':
        return mixed_isomers;
      case 'omega_6_cis':
        return omega_6_cis;
      case 'conjugated_linoleic_acid':
        return conjugated_linoleic_acid;
      case 'omega_3_alpha_linolenic':
        return omega_3_alpha_linolenic;
      case 'd3_vitamin_cholecalciferol':
        return d3_vitamin_cholecalciferol;
      case 'alpha_carotene':
        return alpha_carotene;
      case 'cryptoxanthin_beta':
        return cryptoxanthin_beta;
      case 'lutein_zeaxanthin':
        return lutein_zeaxanthin;
      case 'beta_tocopherol':
        return beta_tocopherol;
      case 'gamma_tocopherol':
        return gamma_tocopherol;
      case 'trance_16_1':
        return trance_16_1;
      case 'cis_22_1':
        return cis_22_1;
      case 'omega_9_nervone':
        return omega_9_nervone;
      case 'trans_isomer_undefined':
        return trans_isomer_undefined;
      case 'omega_6_gamma_linolenic':
        return omega_6_gamma_linolenic;
      case 'trance_18_3':
        return trance_18_3;
      case 'omega_6_eicosadieno':
        return omega_6_eicosadieno;
      case 'eicosatrieno':
        return eicosatrieno;
      case 'omega_6_20_3':
        return omega_6_20_3;
      case 'omega_6_docosatetraeno':
        return omega_6_docosatetraeno;
      case 'lycopene':
        return lycopene;
      case 'tocopherol_delta':
        return tocopherol_delta;
      case 'polyun_trans_fats':
        return polyun_trans_fats;
      case 'tridecane_13_0':
        return tridecane_13_0;
      case 'omega_3':
        return omega_3;
      case 'pentadecene':
        return pentadecene;
      case 'caffeine':
        return caffeine;
      case 'theobromine':
        return theobromine;
      case 'trans_trans':
        return trans_trans;
      case 'menaquinone_4':
        return menaquinone_4;
      case 'campesterol':
        return campesterol;
      case 'stigmasterol':
        return stigmasterol;
      case 'e_vitamin_added':
        return e_vitamin_added;
      case 'b12_vitamin_added':
        return b12_vitamin_added;
      case 'trance_22_1':
        return trance_22_1;
      case 'dihydrophylloquinone':
        return dihydrophylloquinone;
      case 'd2_vitamin_ergocalciferol':
        return d2_vitamin_ergocalciferol;
      case 'omega_6_20_4':
        return omega_6_20_4;
      case 'omega_3_geneico':
        return omega_3_geneico;

      default:
        return fallback ?? (throw ArgumentError.value(value));
    }
  }

  /// Pattern matching
  T map<T>({
    required T Function() water,
    required T Function() k_potassium,
    required T Function() na_sodium,
    required T Function() p_phosphorus,
    required T Function() ca_calcium,
    required T Function() proteins,
    required T Function() calorie,
    required T Function() carbohydrates,
    required T Function() fats,
    required T Function() feed_ash,
    required T Function() a_vitamin,
    required T Function() retinol,
    required T Function() beta_carotene,
    required T Function() b1_vitamin_thiamine,
    required T Function() b2_vitamin_riboflavin,
    required T Function() b5_vitamin,
    required T Function() b6_vitamin_pyridoxine,
    required T Function() b9_vitamin_folates,
    required T Function() b12_vitamin_cobalamin,
    required T Function() c_vitamin,
    required T Function() e_vitamin,
    required T Function() rr_vitamin,
    required T Function() niacin,
    required T Function() mg_magnesium,
    required T Function() s_sulfur,
    required T Function() cl_chlorine,
    required T Function() fe_iron,
    required T Function() i_iodine,
    required T Function() co_cobalt,
    required T Function() mn_manganese,
    required T Function() cu_copper,
    required T Function() mo_molybdenum,
    required T Function() ni_nickel,
    required T Function() se_selenium,
    required T Function() f_fluorine,
    required T Function() cr_chrome,
    required T Function() zh_zinc,
    required T Function() cholesterol,
    required T Function() saturated_fatty_acids,
    required T Function() myristina,
    required T Function() palmitic,
    required T Function() stearic,
    required T Function() arachinova,
    required T Function() mono_fatty_acids,
    required T Function() palmitoleic,
    required T Function() heptadecene,
    required T Function() omega_9_oleic,
    required T Function() omega_9_gadolein,
    required T Function() poly_fatty_acids,
    required T Function() linoleic,
    required T Function() linolenic,
    required T Function() arachidonic,
    required T Function() omega_3_epk,
    required T Function() omega_3_fatty_acids,
    required T Function() omega_3_dpc,
    required T Function() omega_6_fatty_acids,
    required T Function() dietary_fiber,
    required T Function() mono_di_saccharides,
    required T Function() organic_acids,
    required T Function() b4_vitamin,
    required T Function() d_Vitamin_calciferol,
    required T Function() h_vitamin_biotin,
    required T Function() k_vitamin_phylloquinone,
    required T Function() al_aluminium,
    required T Function() sn_tin,
    required T Function() sr_strontium,
    required T Function() galactose,
    required T Function() glucose_dextrose,
    required T Function() lactose,
    required T Function() essential_amino_acids,
    required T Function() arginine,
    required T Function() valin,
    required T Function() histidine,
    required T Function() isoleucine,
    required T Function() leucine,
    required T Function() lysine,
    required T Function() methionine,
    required T Function() methionine_cysteine,
    required T Function() threonine,
    required T Function() tryptophan,
    required T Function() phenylalanine,
    required T Function() phenylalanine_tyrosine,
    required T Function() substitutable_amino_acids,
    required T Function() alanine,
    required T Function() aspartica_acid,
    required T Function() glycine,
    required T Function() glutamic_acid,
    required T Function() proline,
    required T Function() serin,
    required T Function() tyrosine,
    required T Function() cysteine,
    required T Function() oil_4_0,
    required T Function() capron,
    required T Function() caprylic,
    required T Function() caprine,
    required T Function() laurin,
    required T Function() pentadecane,
    required T Function() margarine,
    required T Function() myristolein,
    required T Function() sucrose,
    required T Function() trans_fats,
    required T Function() starch_dextrins,
    required T Function() ethyl_alcohol,
    required T Function() si_silicon,
    required T Function() b_bohr,
    required T Function() v_vanadium,
    required T Function() li_lithium,
    required T Function() rb_rubidium,
    required T Function() zr_zirconium,
    required T Function() omega_9_eruca,
    required T Function() omega_3_stioride,
    required T Function() omega_3_Docosahexaeno,
    required T Function() beta_sitosterol,
    required T Function() begenova,
    required T Function() fructose,
    required T Function() maltose,
    required T Function() phytosterols,
    required T Function() ti_titan,
    required T Function() hydroxyproline,
    required T Function() lignoceric,
    required T Function() betaine,
    required T Function() monoun_trans_fats,
    required T Function() cis_16_1,
    required T Function() cis_18_1,
    required T Function() trance_18_1,
    required T Function() mixed_isomers,
    required T Function() omega_6_cis,
    required T Function() conjugated_linoleic_acid,
    required T Function() omega_3_alpha_linolenic,
    required T Function() d3_vitamin_cholecalciferol,
    required T Function() alpha_carotene,
    required T Function() cryptoxanthin_beta,
    required T Function() lutein_zeaxanthin,
    required T Function() beta_tocopherol,
    required T Function() gamma_tocopherol,
    required T Function() trance_16_1,
    required T Function() cis_22_1,
    required T Function() omega_9_nervone,
    required T Function() trans_isomer_undefined,
    required T Function() omega_6_gamma_linolenic,
    required T Function() trance_18_3,
    required T Function() omega_6_eicosadieno,
    required T Function() eicosatrieno,
    required T Function() omega_6_20_3,
    required T Function() omega_6_docosatetraeno,
    required T Function() lycopene,
    required T Function() tocopherol_delta,
    required T Function() polyun_trans_fats,
    required T Function() tridecane_13_0,
    required T Function() omega_3,
    required T Function() pentadecene,
    required T Function() caffeine,
    required T Function() theobromine,
    required T Function() trans_trans,
    required T Function() menaquinone_4,
    required T Function() campesterol,
    required T Function() stigmasterol,
    required T Function() e_vitamin_added,
    required T Function() b12_vitamin_added,
    required T Function() trance_22_1,
    required T Function() dihydrophylloquinone,
    required T Function() d2_vitamin_ergocalciferol,
    required T Function() omega_6_20_4,
    required T Function() omega_3_geneico,

  }) {
    switch (this) {
      case NutrientColumnEnum.water:
        return water();     
      case NutrientColumnEnum.k_potassium:
        return k_potassium();     
      case NutrientColumnEnum.na_sodium:
        return na_sodium();     
      case NutrientColumnEnum.p_phosphorus:
        return p_phosphorus();     
      case NutrientColumnEnum.ca_calcium:
        return ca_calcium();     
      case NutrientColumnEnum.proteins:
        return proteins();     
      case NutrientColumnEnum.calorie:
        return calorie();     
      case NutrientColumnEnum.carbohydrates:
        return carbohydrates();     
      case NutrientColumnEnum.fats:
        return fats();     
      case NutrientColumnEnum.feed_ash:
        return feed_ash();     
      case NutrientColumnEnum.a_vitamin:
        return a_vitamin();     
      case NutrientColumnEnum.retinol:
        return retinol();     
      case NutrientColumnEnum.beta_carotene:
        return beta_carotene();     
      case NutrientColumnEnum.b1_vitamin_thiamine:
        return b1_vitamin_thiamine();     
      case NutrientColumnEnum.b2_vitamin_riboflavin:
        return b2_vitamin_riboflavin();     
      case NutrientColumnEnum.b5_vitamin:
        return b5_vitamin();     
      case NutrientColumnEnum.b6_vitamin_pyridoxine:
        return b6_vitamin_pyridoxine();     
      case NutrientColumnEnum.b9_vitamin_folates:
        return b9_vitamin_folates();     
      case NutrientColumnEnum.b12_vitamin_cobalamin:
        return b12_vitamin_cobalamin();     
      case NutrientColumnEnum.c_vitamin:
        return c_vitamin();     
      case NutrientColumnEnum.e_vitamin:
        return e_vitamin();     
      case NutrientColumnEnum.rr_vitamin:
        return rr_vitamin();     
      case NutrientColumnEnum.niacin:
        return niacin();     
      case NutrientColumnEnum.mg_magnesium:
        return mg_magnesium();     
      case NutrientColumnEnum.s_sulfur:
        return s_sulfur();     
      case NutrientColumnEnum.cl_chlorine:
        return cl_chlorine();     
      case NutrientColumnEnum.fe_iron:
        return fe_iron();     
      case NutrientColumnEnum.i_iodine:
        return i_iodine();     
      case NutrientColumnEnum.co_cobalt:
        return co_cobalt();     
      case NutrientColumnEnum.mn_manganese:
        return mn_manganese();     
      case NutrientColumnEnum.cu_copper:
        return cu_copper();     
      case NutrientColumnEnum.mo_molybdenum:
        return mo_molybdenum();     
      case NutrientColumnEnum.ni_nickel:
        return ni_nickel();     
      case NutrientColumnEnum.se_selenium:
        return se_selenium();     
      case NutrientColumnEnum.f_fluorine:
        return f_fluorine();     
      case NutrientColumnEnum.cr_chrome:
        return cr_chrome();     
      case NutrientColumnEnum.zh_zinc:
        return zh_zinc();     
      case NutrientColumnEnum.cholesterol:
        return cholesterol();     
      case NutrientColumnEnum.saturated_fatty_acids:
        return saturated_fatty_acids();     
      case NutrientColumnEnum.myristina:
        return myristina();     
      case NutrientColumnEnum.palmitic:
        return palmitic();     
      case NutrientColumnEnum.stearic:
        return stearic();     
      case NutrientColumnEnum.arachinova:
        return arachinova();     
      case NutrientColumnEnum.mono_fatty_acids:
        return mono_fatty_acids();     
      case NutrientColumnEnum.palmitoleic:
        return palmitoleic();     
      case NutrientColumnEnum.heptadecene:
        return heptadecene();     
      case NutrientColumnEnum.omega_9_oleic:
        return omega_9_oleic();     
      case NutrientColumnEnum.omega_9_gadolein:
        return omega_9_gadolein();     
      case NutrientColumnEnum.poly_fatty_acids:
        return poly_fatty_acids();     
      case NutrientColumnEnum.linoleic:
        return linoleic();     
      case NutrientColumnEnum.linolenic:
        return linolenic();     
      case NutrientColumnEnum.arachidonic:
        return arachidonic();     
      case NutrientColumnEnum.omega_3_epk:
        return omega_3_epk();     
      case NutrientColumnEnum.omega_3_fatty_acids:
        return omega_3_fatty_acids();     
      case NutrientColumnEnum.omega_3_dpc:
        return omega_3_dpc();     
      case NutrientColumnEnum.omega_6_fatty_acids:
        return omega_6_fatty_acids();     
      case NutrientColumnEnum.dietary_fiber:
        return dietary_fiber();     
      case NutrientColumnEnum.mono_di_saccharides:
        return mono_di_saccharides();     
      case NutrientColumnEnum.organic_acids:
        return organic_acids();     
      case NutrientColumnEnum.b4_vitamin:
        return b4_vitamin();     
      case NutrientColumnEnum.d_Vitamin_calciferol:
        return d_Vitamin_calciferol();     
      case NutrientColumnEnum.h_vitamin_biotin:
        return h_vitamin_biotin();     
      case NutrientColumnEnum.k_vitamin_phylloquinone:
        return k_vitamin_phylloquinone();     
      case NutrientColumnEnum.al_aluminium:
        return al_aluminium();     
      case NutrientColumnEnum.sn_tin:
        return sn_tin();     
      case NutrientColumnEnum.sr_strontium:
        return sr_strontium();     
      case NutrientColumnEnum.galactose:
        return galactose();     
      case NutrientColumnEnum.glucose_dextrose:
        return glucose_dextrose();     
      case NutrientColumnEnum.lactose:
        return lactose();     
      case NutrientColumnEnum.essential_amino_acids:
        return essential_amino_acids();     
      case NutrientColumnEnum.arginine:
        return arginine();     
      case NutrientColumnEnum.valin:
        return valin();     
      case NutrientColumnEnum.histidine:
        return histidine();     
      case NutrientColumnEnum.isoleucine:
        return isoleucine();     
      case NutrientColumnEnum.leucine:
        return leucine();     
      case NutrientColumnEnum.lysine:
        return lysine();     
      case NutrientColumnEnum.methionine:
        return methionine();     
      case NutrientColumnEnum.methionine_cysteine:
        return methionine_cysteine();     
      case NutrientColumnEnum.threonine:
        return threonine();     
      case NutrientColumnEnum.tryptophan:
        return tryptophan();     
      case NutrientColumnEnum.phenylalanine:
        return phenylalanine();     
      case NutrientColumnEnum.phenylalanine_tyrosine:
        return phenylalanine_tyrosine();     
      case NutrientColumnEnum.substitutable_amino_acids:
        return substitutable_amino_acids();     
      case NutrientColumnEnum.alanine:
        return alanine();     
      case NutrientColumnEnum.aspartica_acid:
        return aspartica_acid();     
      case NutrientColumnEnum.glycine:
        return glycine();     
      case NutrientColumnEnum.glutamic_acid:
        return glutamic_acid();     
      case NutrientColumnEnum.proline:
        return proline();     
      case NutrientColumnEnum.serin:
        return serin();     
      case NutrientColumnEnum.tyrosine:
        return tyrosine();     
      case NutrientColumnEnum.cysteine:
        return cysteine();     
      case NutrientColumnEnum.oil_4_0:
        return oil_4_0();     
      case NutrientColumnEnum.capron:
        return capron();     
      case NutrientColumnEnum.caprylic:
        return caprylic();     
      case NutrientColumnEnum.caprine:
        return caprine();     
      case NutrientColumnEnum.laurin:
        return laurin();     
      case NutrientColumnEnum.pentadecane:
        return pentadecane();     
      case NutrientColumnEnum.margarine:
        return margarine();     
      case NutrientColumnEnum.myristolein:
        return myristolein();     
      case NutrientColumnEnum.sucrose:
        return sucrose();     
      case NutrientColumnEnum.trans_fats:
        return trans_fats();     
      case NutrientColumnEnum.starch_dextrins:
        return starch_dextrins();     
      case NutrientColumnEnum.ethyl_alcohol:
        return ethyl_alcohol();     
      case NutrientColumnEnum.si_silicon:
        return si_silicon();     
      case NutrientColumnEnum.b_bohr:
        return b_bohr();     
      case NutrientColumnEnum.v_vanadium:
        return v_vanadium();     
      case NutrientColumnEnum.li_lithium:
        return li_lithium();     
      case NutrientColumnEnum.rb_rubidium:
        return rb_rubidium();     
      case NutrientColumnEnum.zr_zirconium:
        return zr_zirconium();     
      case NutrientColumnEnum.omega_9_eruca:
        return omega_9_eruca();     
      case NutrientColumnEnum.omega_3_stioride:
        return omega_3_stioride();     
      case NutrientColumnEnum.omega_3_Docosahexaeno:
        return omega_3_Docosahexaeno();     
      case NutrientColumnEnum.beta_sitosterol:
        return beta_sitosterol();     
      case NutrientColumnEnum.begenova:
        return begenova();     
      case NutrientColumnEnum.fructose:
        return fructose();     
      case NutrientColumnEnum.maltose:
        return maltose();     
      case NutrientColumnEnum.phytosterols:
        return phytosterols();     
      case NutrientColumnEnum.ti_titan:
        return ti_titan();     
      case NutrientColumnEnum.hydroxyproline:
        return hydroxyproline();     
      case NutrientColumnEnum.lignoceric:
        return lignoceric();     
      case NutrientColumnEnum.betaine:
        return betaine();     
      case NutrientColumnEnum.monoun_trans_fats:
        return monoun_trans_fats();     
      case NutrientColumnEnum.cis_16_1:
        return cis_16_1();     
      case NutrientColumnEnum.cis_18_1:
        return cis_18_1();     
      case NutrientColumnEnum.trance_18_1:
        return trance_18_1();     
      case NutrientColumnEnum.mixed_isomers:
        return mixed_isomers();     
      case NutrientColumnEnum.omega_6_cis:
        return omega_6_cis();     
      case NutrientColumnEnum.conjugated_linoleic_acid:
        return conjugated_linoleic_acid();     
      case NutrientColumnEnum.omega_3_alpha_linolenic:
        return omega_3_alpha_linolenic();     
      case NutrientColumnEnum.d3_vitamin_cholecalciferol:
        return d3_vitamin_cholecalciferol();     
      case NutrientColumnEnum.alpha_carotene:
        return alpha_carotene();     
      case NutrientColumnEnum.cryptoxanthin_beta:
        return cryptoxanthin_beta();     
      case NutrientColumnEnum.lutein_zeaxanthin:
        return lutein_zeaxanthin();     
      case NutrientColumnEnum.beta_tocopherol:
        return beta_tocopherol();     
      case NutrientColumnEnum.gamma_tocopherol:
        return gamma_tocopherol();     
      case NutrientColumnEnum.trance_16_1:
        return trance_16_1();     
      case NutrientColumnEnum.cis_22_1:
        return cis_22_1();     
      case NutrientColumnEnum.omega_9_nervone:
        return omega_9_nervone();     
      case NutrientColumnEnum.trans_isomer_undefined:
        return trans_isomer_undefined();     
      case NutrientColumnEnum.omega_6_gamma_linolenic:
        return omega_6_gamma_linolenic();     
      case NutrientColumnEnum.trance_18_3:
        return trance_18_3();     
      case NutrientColumnEnum.omega_6_eicosadieno:
        return omega_6_eicosadieno();     
      case NutrientColumnEnum.eicosatrieno:
        return eicosatrieno();     
      case NutrientColumnEnum.omega_6_20_3:
        return omega_6_20_3();     
      case NutrientColumnEnum.omega_6_docosatetraeno:
        return omega_6_docosatetraeno();     
      case NutrientColumnEnum.lycopene:
        return lycopene();     
      case NutrientColumnEnum.tocopherol_delta:
        return tocopherol_delta();     
      case NutrientColumnEnum.polyun_trans_fats:
        return polyun_trans_fats();     
      case NutrientColumnEnum.tridecane_13_0:
        return tridecane_13_0();     
      case NutrientColumnEnum.omega_3:
        return omega_3();     
      case NutrientColumnEnum.pentadecene:
        return pentadecene();     
      case NutrientColumnEnum.caffeine:
        return caffeine();     
      case NutrientColumnEnum.theobromine:
        return theobromine();     
      case NutrientColumnEnum.trans_trans:
        return trans_trans();     
      case NutrientColumnEnum.menaquinone_4:
        return menaquinone_4();     
      case NutrientColumnEnum.campesterol:
        return campesterol();     
      case NutrientColumnEnum.stigmasterol:
        return stigmasterol();     
      case NutrientColumnEnum.e_vitamin_added:
        return e_vitamin_added();     
      case NutrientColumnEnum.b12_vitamin_added:
        return b12_vitamin_added();     
      case NutrientColumnEnum.trance_22_1:
        return trance_22_1();     
      case NutrientColumnEnum.dihydrophylloquinone:
        return dihydrophylloquinone();     
      case NutrientColumnEnum.d2_vitamin_ergocalciferol:
        return d2_vitamin_ergocalciferol();     
      case NutrientColumnEnum.omega_6_20_4:
        return omega_6_20_4();     
      case NutrientColumnEnum.omega_3_geneico:
        return omega_3_geneico();     

    }
  }
  
  /// Pattern matching
  T maybeMap<T>({
    required T Function() orElse,
    T Function()? water,
    T Function()? k_potassium,
    T Function()? na_sodium,
    T Function()? p_phosphorus,
    T Function()? ca_calcium,
    T Function()? proteins,
    T Function()? calorie,
    T Function()? carbohydrates,
    T Function()? fats,
    T Function()? feed_ash,
    T Function()? a_vitamin,
    T Function()? retinol,
    T Function()? beta_carotene,
    T Function()? b1_vitamin_thiamine,
    T Function()? b2_vitamin_riboflavin,
    T Function()? b5_vitamin,
    T Function()? b6_vitamin_pyridoxine,
    T Function()? b9_vitamin_folates,
    T Function()? b12_vitamin_cobalamin,
    T Function()? c_vitamin,
    T Function()? e_vitamin,
    T Function()? rr_vitamin,
    T Function()? niacin,
    T Function()? mg_magnesium,
    T Function()? s_sulfur,
    T Function()? cl_chlorine,
    T Function()? fe_iron,
    T Function()? i_iodine,
    T Function()? co_cobalt,
    T Function()? mn_manganese,
    T Function()? cu_copper,
    T Function()? mo_molybdenum,
    T Function()? ni_nickel,
    T Function()? se_selenium,
    T Function()? f_fluorine,
    T Function()? cr_chrome,
    T Function()? zh_zinc,
    T Function()? cholesterol,
    T Function()? saturated_fatty_acids,
    T Function()? myristina,
    T Function()? palmitic,
    T Function()? stearic,
    T Function()? arachinova,
    T Function()? mono_fatty_acids,
    T Function()? palmitoleic,
    T Function()? heptadecene,
    T Function()? omega_9_oleic,
    T Function()? omega_9_gadolein,
    T Function()? poly_fatty_acids,
    T Function()? linoleic,
    T Function()? linolenic,
    T Function()? arachidonic,
    T Function()? omega_3_epk,
    T Function()? omega_3_fatty_acids,
    T Function()? omega_3_dpc,
    T Function()? omega_6_fatty_acids,
    T Function()? dietary_fiber,
    T Function()? mono_di_saccharides,
    T Function()? organic_acids,
    T Function()? b4_vitamin,
    T Function()? d_Vitamin_calciferol,
    T Function()? h_vitamin_biotin,
    T Function()? k_vitamin_phylloquinone,
    T Function()? al_aluminium,
    T Function()? sn_tin,
    T Function()? sr_strontium,
    T Function()? galactose,
    T Function()? glucose_dextrose,
    T Function()? lactose,
    T Function()? essential_amino_acids,
    T Function()? arginine,
    T Function()? valin,
    T Function()? histidine,
    T Function()? isoleucine,
    T Function()? leucine,
    T Function()? lysine,
    T Function()? methionine,
    T Function()? methionine_cysteine,
    T Function()? threonine,
    T Function()? tryptophan,
    T Function()? phenylalanine,
    T Function()? phenylalanine_tyrosine,
    T Function()? substitutable_amino_acids,
    T Function()? alanine,
    T Function()? aspartica_acid,
    T Function()? glycine,
    T Function()? glutamic_acid,
    T Function()? proline,
    T Function()? serin,
    T Function()? tyrosine,
    T Function()? cysteine,
    T Function()? oil_4_0,
    T Function()? capron,
    T Function()? caprylic,
    T Function()? caprine,
    T Function()? laurin,
    T Function()? pentadecane,
    T Function()? margarine,
    T Function()? myristolein,
    T Function()? sucrose,
    T Function()? trans_fats,
    T Function()? starch_dextrins,
    T Function()? ethyl_alcohol,
    T Function()? si_silicon,
    T Function()? b_bohr,
    T Function()? v_vanadium,
    T Function()? li_lithium,
    T Function()? rb_rubidium,
    T Function()? zr_zirconium,
    T Function()? omega_9_eruca,
    T Function()? omega_3_stioride,
    T Function()? omega_3_Docosahexaeno,
    T Function()? beta_sitosterol,
    T Function()? begenova,
    T Function()? fructose,
    T Function()? maltose,
    T Function()? phytosterols,
    T Function()? ti_titan,
    T Function()? hydroxyproline,
    T Function()? lignoceric,
    T Function()? betaine,
    T Function()? monoun_trans_fats,
    T Function()? cis_16_1,
    T Function()? cis_18_1,
    T Function()? trance_18_1,
    T Function()? mixed_isomers,
    T Function()? omega_6_cis,
    T Function()? conjugated_linoleic_acid,
    T Function()? omega_3_alpha_linolenic,
    T Function()? d3_vitamin_cholecalciferol,
    T Function()? alpha_carotene,
    T Function()? cryptoxanthin_beta,
    T Function()? lutein_zeaxanthin,
    T Function()? beta_tocopherol,
    T Function()? gamma_tocopherol,
    T Function()? trance_16_1,
    T Function()? cis_22_1,
    T Function()? omega_9_nervone,
    T Function()? trans_isomer_undefined,
    T Function()? omega_6_gamma_linolenic,
    T Function()? trance_18_3,
    T Function()? omega_6_eicosadieno,
    T Function()? eicosatrieno,
    T Function()? omega_6_20_3,
    T Function()? omega_6_docosatetraeno,
    T Function()? lycopene,
    T Function()? tocopherol_delta,
    T Function()? polyun_trans_fats,
    T Function()? tridecane_13_0,
    T Function()? omega_3,
    T Function()? pentadecene,
    T Function()? caffeine,
    T Function()? theobromine,
    T Function()? trans_trans,
    T Function()? menaquinone_4,
    T Function()? campesterol,
    T Function()? stigmasterol,
    T Function()? e_vitamin_added,
    T Function()? b12_vitamin_added,
    T Function()? trance_22_1,
    T Function()? dihydrophylloquinone,
    T Function()? d2_vitamin_ergocalciferol,
    T Function()? omega_6_20_4,
    T Function()? omega_3_geneico,

  }) =>
      map<T>(
      water: water ?? orElse,     
      k_potassium: k_potassium ?? orElse,     
      na_sodium: na_sodium ?? orElse,     
      p_phosphorus: p_phosphorus ?? orElse,     
      ca_calcium: ca_calcium ?? orElse,     
      proteins: proteins ?? orElse,     
      calorie: calorie ?? orElse,     
      carbohydrates: carbohydrates ?? orElse,     
      fats: fats ?? orElse,     
      feed_ash: feed_ash ?? orElse,     
      a_vitamin: a_vitamin ?? orElse,     
      retinol: retinol ?? orElse,     
      beta_carotene: beta_carotene ?? orElse,     
      b1_vitamin_thiamine: b1_vitamin_thiamine ?? orElse,     
      b2_vitamin_riboflavin: b2_vitamin_riboflavin ?? orElse,     
      b5_vitamin: b5_vitamin ?? orElse,     
      b6_vitamin_pyridoxine: b6_vitamin_pyridoxine ?? orElse,     
      b9_vitamin_folates: b9_vitamin_folates ?? orElse,     
      b12_vitamin_cobalamin: b12_vitamin_cobalamin ?? orElse,     
      c_vitamin: c_vitamin ?? orElse,     
      e_vitamin: e_vitamin ?? orElse,     
      rr_vitamin: rr_vitamin ?? orElse,     
      niacin: niacin ?? orElse,     
      mg_magnesium: mg_magnesium ?? orElse,     
      s_sulfur: s_sulfur ?? orElse,     
      cl_chlorine: cl_chlorine ?? orElse,     
      fe_iron: fe_iron ?? orElse,     
      i_iodine: i_iodine ?? orElse,     
      co_cobalt: co_cobalt ?? orElse,     
      mn_manganese: mn_manganese ?? orElse,     
      cu_copper: cu_copper ?? orElse,     
      mo_molybdenum: mo_molybdenum ?? orElse,     
      ni_nickel: ni_nickel ?? orElse,     
      se_selenium: se_selenium ?? orElse,     
      f_fluorine: f_fluorine ?? orElse,     
      cr_chrome: cr_chrome ?? orElse,     
      zh_zinc: zh_zinc ?? orElse,     
      cholesterol: cholesterol ?? orElse,     
      saturated_fatty_acids: saturated_fatty_acids ?? orElse,     
      myristina: myristina ?? orElse,     
      palmitic: palmitic ?? orElse,     
      stearic: stearic ?? orElse,     
      arachinova: arachinova ?? orElse,     
      mono_fatty_acids: mono_fatty_acids ?? orElse,     
      palmitoleic: palmitoleic ?? orElse,     
      heptadecene: heptadecene ?? orElse,     
      omega_9_oleic: omega_9_oleic ?? orElse,     
      omega_9_gadolein: omega_9_gadolein ?? orElse,     
      poly_fatty_acids: poly_fatty_acids ?? orElse,     
      linoleic: linoleic ?? orElse,     
      linolenic: linolenic ?? orElse,     
      arachidonic: arachidonic ?? orElse,     
      omega_3_epk: omega_3_epk ?? orElse,     
      omega_3_fatty_acids: omega_3_fatty_acids ?? orElse,     
      omega_3_dpc: omega_3_dpc ?? orElse,     
      omega_6_fatty_acids: omega_6_fatty_acids ?? orElse,     
      dietary_fiber: dietary_fiber ?? orElse,     
      mono_di_saccharides: mono_di_saccharides ?? orElse,     
      organic_acids: organic_acids ?? orElse,     
      b4_vitamin: b4_vitamin ?? orElse,     
      d_Vitamin_calciferol: d_Vitamin_calciferol ?? orElse,     
      h_vitamin_biotin: h_vitamin_biotin ?? orElse,     
      k_vitamin_phylloquinone: k_vitamin_phylloquinone ?? orElse,     
      al_aluminium: al_aluminium ?? orElse,     
      sn_tin: sn_tin ?? orElse,     
      sr_strontium: sr_strontium ?? orElse,     
      galactose: galactose ?? orElse,     
      glucose_dextrose: glucose_dextrose ?? orElse,     
      lactose: lactose ?? orElse,     
      essential_amino_acids: essential_amino_acids ?? orElse,     
      arginine: arginine ?? orElse,     
      valin: valin ?? orElse,     
      histidine: histidine ?? orElse,     
      isoleucine: isoleucine ?? orElse,     
      leucine: leucine ?? orElse,     
      lysine: lysine ?? orElse,     
      methionine: methionine ?? orElse,     
      methionine_cysteine: methionine_cysteine ?? orElse,     
      threonine: threonine ?? orElse,     
      tryptophan: tryptophan ?? orElse,     
      phenylalanine: phenylalanine ?? orElse,     
      phenylalanine_tyrosine: phenylalanine_tyrosine ?? orElse,     
      substitutable_amino_acids: substitutable_amino_acids ?? orElse,     
      alanine: alanine ?? orElse,     
      aspartica_acid: aspartica_acid ?? orElse,     
      glycine: glycine ?? orElse,     
      glutamic_acid: glutamic_acid ?? orElse,     
      proline: proline ?? orElse,     
      serin: serin ?? orElse,     
      tyrosine: tyrosine ?? orElse,     
      cysteine: cysteine ?? orElse,     
      oil_4_0: oil_4_0 ?? orElse,     
      capron: capron ?? orElse,     
      caprylic: caprylic ?? orElse,     
      caprine: caprine ?? orElse,     
      laurin: laurin ?? orElse,     
      pentadecane: pentadecane ?? orElse,     
      margarine: margarine ?? orElse,     
      myristolein: myristolein ?? orElse,     
      sucrose: sucrose ?? orElse,     
      trans_fats: trans_fats ?? orElse,     
      starch_dextrins: starch_dextrins ?? orElse,     
      ethyl_alcohol: ethyl_alcohol ?? orElse,     
      si_silicon: si_silicon ?? orElse,     
      b_bohr: b_bohr ?? orElse,     
      v_vanadium: v_vanadium ?? orElse,     
      li_lithium: li_lithium ?? orElse,     
      rb_rubidium: rb_rubidium ?? orElse,     
      zr_zirconium: zr_zirconium ?? orElse,     
      omega_9_eruca: omega_9_eruca ?? orElse,     
      omega_3_stioride: omega_3_stioride ?? orElse,     
      omega_3_Docosahexaeno: omega_3_Docosahexaeno ?? orElse,     
      beta_sitosterol: beta_sitosterol ?? orElse,     
      begenova: begenova ?? orElse,     
      fructose: fructose ?? orElse,     
      maltose: maltose ?? orElse,     
      phytosterols: phytosterols ?? orElse,     
      ti_titan: ti_titan ?? orElse,     
      hydroxyproline: hydroxyproline ?? orElse,     
      lignoceric: lignoceric ?? orElse,     
      betaine: betaine ?? orElse,     
      monoun_trans_fats: monoun_trans_fats ?? orElse,     
      cis_16_1: cis_16_1 ?? orElse,     
      cis_18_1: cis_18_1 ?? orElse,     
      trance_18_1: trance_18_1 ?? orElse,     
      mixed_isomers: mixed_isomers ?? orElse,     
      omega_6_cis: omega_6_cis ?? orElse,     
      conjugated_linoleic_acid: conjugated_linoleic_acid ?? orElse,     
      omega_3_alpha_linolenic: omega_3_alpha_linolenic ?? orElse,     
      d3_vitamin_cholecalciferol: d3_vitamin_cholecalciferol ?? orElse,     
      alpha_carotene: alpha_carotene ?? orElse,     
      cryptoxanthin_beta: cryptoxanthin_beta ?? orElse,     
      lutein_zeaxanthin: lutein_zeaxanthin ?? orElse,     
      beta_tocopherol: beta_tocopherol ?? orElse,     
      gamma_tocopherol: gamma_tocopherol ?? orElse,     
      trance_16_1: trance_16_1 ?? orElse,     
      cis_22_1: cis_22_1 ?? orElse,     
      omega_9_nervone: omega_9_nervone ?? orElse,     
      trans_isomer_undefined: trans_isomer_undefined ?? orElse,     
      omega_6_gamma_linolenic: omega_6_gamma_linolenic ?? orElse,     
      trance_18_3: trance_18_3 ?? orElse,     
      omega_6_eicosadieno: omega_6_eicosadieno ?? orElse,     
      eicosatrieno: eicosatrieno ?? orElse,     
      omega_6_20_3: omega_6_20_3 ?? orElse,     
      omega_6_docosatetraeno: omega_6_docosatetraeno ?? orElse,     
      lycopene: lycopene ?? orElse,     
      tocopherol_delta: tocopherol_delta ?? orElse,     
      polyun_trans_fats: polyun_trans_fats ?? orElse,     
      tridecane_13_0: tridecane_13_0 ?? orElse,     
      omega_3: omega_3 ?? orElse,     
      pentadecene: pentadecene ?? orElse,     
      caffeine: caffeine ?? orElse,     
      theobromine: theobromine ?? orElse,     
      trans_trans: trans_trans ?? orElse,     
      menaquinone_4: menaquinone_4 ?? orElse,     
      campesterol: campesterol ?? orElse,     
      stigmasterol: stigmasterol ?? orElse,     
      e_vitamin_added: e_vitamin_added ?? orElse,     
      b12_vitamin_added: b12_vitamin_added ?? orElse,     
      trance_22_1: trance_22_1 ?? orElse,     
      dihydrophylloquinone: dihydrophylloquinone ?? orElse,     
      d2_vitamin_ergocalciferol: d2_vitamin_ergocalciferol ?? orElse,     
      omega_6_20_4: omega_6_20_4 ?? orElse,     
      omega_3_geneico: omega_3_geneico ?? orElse,     

      );

  /// Pattern matching
  T? maybeMapOrNull<T>({
    T Function()? water,
    T Function()? k_potassium,
    T Function()? na_sodium,
    T Function()? p_phosphorus,
    T Function()? ca_calcium,
    T Function()? proteins,
    T Function()? calorie,
    T Function()? carbohydrates,
    T Function()? fats,
    T Function()? feed_ash,
    T Function()? a_vitamin,
    T Function()? retinol,
    T Function()? beta_carotene,
    T Function()? b1_vitamin_thiamine,
    T Function()? b2_vitamin_riboflavin,
    T Function()? b5_vitamin,
    T Function()? b6_vitamin_pyridoxine,
    T Function()? b9_vitamin_folates,
    T Function()? b12_vitamin_cobalamin,
    T Function()? c_vitamin,
    T Function()? e_vitamin,
    T Function()? rr_vitamin,
    T Function()? niacin,
    T Function()? mg_magnesium,
    T Function()? s_sulfur,
    T Function()? cl_chlorine,
    T Function()? fe_iron,
    T Function()? i_iodine,
    T Function()? co_cobalt,
    T Function()? mn_manganese,
    T Function()? cu_copper,
    T Function()? mo_molybdenum,
    T Function()? ni_nickel,
    T Function()? se_selenium,
    T Function()? f_fluorine,
    T Function()? cr_chrome,
    T Function()? zh_zinc,
    T Function()? cholesterol,
    T Function()? saturated_fatty_acids,
    T Function()? myristina,
    T Function()? palmitic,
    T Function()? stearic,
    T Function()? arachinova,
    T Function()? mono_fatty_acids,
    T Function()? palmitoleic,
    T Function()? heptadecene,
    T Function()? omega_9_oleic,
    T Function()? omega_9_gadolein,
    T Function()? poly_fatty_acids,
    T Function()? linoleic,
    T Function()? linolenic,
    T Function()? arachidonic,
    T Function()? omega_3_epk,
    T Function()? omega_3_fatty_acids,
    T Function()? omega_3_dpc,
    T Function()? omega_6_fatty_acids,
    T Function()? dietary_fiber,
    T Function()? mono_di_saccharides,
    T Function()? organic_acids,
    T Function()? b4_vitamin,
    T Function()? d_Vitamin_calciferol,
    T Function()? h_vitamin_biotin,
    T Function()? k_vitamin_phylloquinone,
    T Function()? al_aluminium,
    T Function()? sn_tin,
    T Function()? sr_strontium,
    T Function()? galactose,
    T Function()? glucose_dextrose,
    T Function()? lactose,
    T Function()? essential_amino_acids,
    T Function()? arginine,
    T Function()? valin,
    T Function()? histidine,
    T Function()? isoleucine,
    T Function()? leucine,
    T Function()? lysine,
    T Function()? methionine,
    T Function()? methionine_cysteine,
    T Function()? threonine,
    T Function()? tryptophan,
    T Function()? phenylalanine,
    T Function()? phenylalanine_tyrosine,
    T Function()? substitutable_amino_acids,
    T Function()? alanine,
    T Function()? aspartica_acid,
    T Function()? glycine,
    T Function()? glutamic_acid,
    T Function()? proline,
    T Function()? serin,
    T Function()? tyrosine,
    T Function()? cysteine,
    T Function()? oil_4_0,
    T Function()? capron,
    T Function()? caprylic,
    T Function()? caprine,
    T Function()? laurin,
    T Function()? pentadecane,
    T Function()? margarine,
    T Function()? myristolein,
    T Function()? sucrose,
    T Function()? trans_fats,
    T Function()? starch_dextrins,
    T Function()? ethyl_alcohol,
    T Function()? si_silicon,
    T Function()? b_bohr,
    T Function()? v_vanadium,
    T Function()? li_lithium,
    T Function()? rb_rubidium,
    T Function()? zr_zirconium,
    T Function()? omega_9_eruca,
    T Function()? omega_3_stioride,
    T Function()? omega_3_Docosahexaeno,
    T Function()? beta_sitosterol,
    T Function()? begenova,
    T Function()? fructose,
    T Function()? maltose,
    T Function()? phytosterols,
    T Function()? ti_titan,
    T Function()? hydroxyproline,
    T Function()? lignoceric,
    T Function()? betaine,
    T Function()? monoun_trans_fats,
    T Function()? cis_16_1,
    T Function()? cis_18_1,
    T Function()? trance_18_1,
    T Function()? mixed_isomers,
    T Function()? omega_6_cis,
    T Function()? conjugated_linoleic_acid,
    T Function()? omega_3_alpha_linolenic,
    T Function()? d3_vitamin_cholecalciferol,
    T Function()? alpha_carotene,
    T Function()? cryptoxanthin_beta,
    T Function()? lutein_zeaxanthin,
    T Function()? beta_tocopherol,
    T Function()? gamma_tocopherol,
    T Function()? trance_16_1,
    T Function()? cis_22_1,
    T Function()? omega_9_nervone,
    T Function()? trans_isomer_undefined,
    T Function()? omega_6_gamma_linolenic,
    T Function()? trance_18_3,
    T Function()? omega_6_eicosadieno,
    T Function()? eicosatrieno,
    T Function()? omega_6_20_3,
    T Function()? omega_6_docosatetraeno,
    T Function()? lycopene,
    T Function()? tocopherol_delta,
    T Function()? polyun_trans_fats,
    T Function()? tridecane_13_0,
    T Function()? omega_3,
    T Function()? pentadecene,
    T Function()? caffeine,
    T Function()? theobromine,
    T Function()? trans_trans,
    T Function()? menaquinone_4,
    T Function()? campesterol,
    T Function()? stigmasterol,
    T Function()? e_vitamin_added,
    T Function()? b12_vitamin_added,
    T Function()? trance_22_1,
    T Function()? dihydrophylloquinone,
    T Function()? d2_vitamin_ergocalciferol,
    T Function()? omega_6_20_4,
    T Function()? omega_3_geneico,

  }) =>
      maybeMap<T?>(
        orElse: () => null,
        water: water,  
        k_potassium: k_potassium,  
        na_sodium: na_sodium,  
        p_phosphorus: p_phosphorus,  
        ca_calcium: ca_calcium,  
        proteins: proteins,  
        calorie: calorie,  
        carbohydrates: carbohydrates,  
        fats: fats,  
        feed_ash: feed_ash,  
        a_vitamin: a_vitamin,  
        retinol: retinol,  
        beta_carotene: beta_carotene,  
        b1_vitamin_thiamine: b1_vitamin_thiamine,  
        b2_vitamin_riboflavin: b2_vitamin_riboflavin,  
        b5_vitamin: b5_vitamin,  
        b6_vitamin_pyridoxine: b6_vitamin_pyridoxine,  
        b9_vitamin_folates: b9_vitamin_folates,  
        b12_vitamin_cobalamin: b12_vitamin_cobalamin,  
        c_vitamin: c_vitamin,  
        e_vitamin: e_vitamin,  
        rr_vitamin: rr_vitamin,  
        niacin: niacin,  
        mg_magnesium: mg_magnesium,  
        s_sulfur: s_sulfur,  
        cl_chlorine: cl_chlorine,  
        fe_iron: fe_iron,  
        i_iodine: i_iodine,  
        co_cobalt: co_cobalt,  
        mn_manganese: mn_manganese,  
        cu_copper: cu_copper,  
        mo_molybdenum: mo_molybdenum,  
        ni_nickel: ni_nickel,  
        se_selenium: se_selenium,  
        f_fluorine: f_fluorine,  
        cr_chrome: cr_chrome,  
        zh_zinc: zh_zinc,  
        cholesterol: cholesterol,  
        saturated_fatty_acids: saturated_fatty_acids,  
        myristina: myristina,  
        palmitic: palmitic,  
        stearic: stearic,  
        arachinova: arachinova,  
        mono_fatty_acids: mono_fatty_acids,  
        palmitoleic: palmitoleic,  
        heptadecene: heptadecene,  
        omega_9_oleic: omega_9_oleic,  
        omega_9_gadolein: omega_9_gadolein,  
        poly_fatty_acids: poly_fatty_acids,  
        linoleic: linoleic,  
        linolenic: linolenic,  
        arachidonic: arachidonic,  
        omega_3_epk: omega_3_epk,  
        omega_3_fatty_acids: omega_3_fatty_acids,  
        omega_3_dpc: omega_3_dpc,  
        omega_6_fatty_acids: omega_6_fatty_acids,  
        dietary_fiber: dietary_fiber,  
        mono_di_saccharides: mono_di_saccharides,  
        organic_acids: organic_acids,  
        b4_vitamin: b4_vitamin,  
        d_Vitamin_calciferol: d_Vitamin_calciferol,  
        h_vitamin_biotin: h_vitamin_biotin,  
        k_vitamin_phylloquinone: k_vitamin_phylloquinone,  
        al_aluminium: al_aluminium,  
        sn_tin: sn_tin,  
        sr_strontium: sr_strontium,  
        galactose: galactose,  
        glucose_dextrose: glucose_dextrose,  
        lactose: lactose,  
        essential_amino_acids: essential_amino_acids,  
        arginine: arginine,  
        valin: valin,  
        histidine: histidine,  
        isoleucine: isoleucine,  
        leucine: leucine,  
        lysine: lysine,  
        methionine: methionine,  
        methionine_cysteine: methionine_cysteine,  
        threonine: threonine,  
        tryptophan: tryptophan,  
        phenylalanine: phenylalanine,  
        phenylalanine_tyrosine: phenylalanine_tyrosine,  
        substitutable_amino_acids: substitutable_amino_acids,  
        alanine: alanine,  
        aspartica_acid: aspartica_acid,  
        glycine: glycine,  
        glutamic_acid: glutamic_acid,  
        proline: proline,  
        serin: serin,  
        tyrosine: tyrosine,  
        cysteine: cysteine,  
        oil_4_0: oil_4_0,  
        capron: capron,  
        caprylic: caprylic,  
        caprine: caprine,  
        laurin: laurin,  
        pentadecane: pentadecane,  
        margarine: margarine,  
        myristolein: myristolein,  
        sucrose: sucrose,  
        trans_fats: trans_fats,  
        starch_dextrins: starch_dextrins,  
        ethyl_alcohol: ethyl_alcohol,  
        si_silicon: si_silicon,  
        b_bohr: b_bohr,  
        v_vanadium: v_vanadium,  
        li_lithium: li_lithium,  
        rb_rubidium: rb_rubidium,  
        zr_zirconium: zr_zirconium,  
        omega_9_eruca: omega_9_eruca,  
        omega_3_stioride: omega_3_stioride,  
        omega_3_Docosahexaeno: omega_3_Docosahexaeno,  
        beta_sitosterol: beta_sitosterol,  
        begenova: begenova,  
        fructose: fructose,  
        maltose: maltose,  
        phytosterols: phytosterols,  
        ti_titan: ti_titan,  
        hydroxyproline: hydroxyproline,  
        lignoceric: lignoceric,  
        betaine: betaine,  
        monoun_trans_fats: monoun_trans_fats,  
        cis_16_1: cis_16_1,  
        cis_18_1: cis_18_1,  
        trance_18_1: trance_18_1,  
        mixed_isomers: mixed_isomers,  
        omega_6_cis: omega_6_cis,  
        conjugated_linoleic_acid: conjugated_linoleic_acid,  
        omega_3_alpha_linolenic: omega_3_alpha_linolenic,  
        d3_vitamin_cholecalciferol: d3_vitamin_cholecalciferol,  
        alpha_carotene: alpha_carotene,  
        cryptoxanthin_beta: cryptoxanthin_beta,  
        lutein_zeaxanthin: lutein_zeaxanthin,  
        beta_tocopherol: beta_tocopherol,  
        gamma_tocopherol: gamma_tocopherol,  
        trance_16_1: trance_16_1,  
        cis_22_1: cis_22_1,  
        omega_9_nervone: omega_9_nervone,  
        trans_isomer_undefined: trans_isomer_undefined,  
        omega_6_gamma_linolenic: omega_6_gamma_linolenic,  
        trance_18_3: trance_18_3,  
        omega_6_eicosadieno: omega_6_eicosadieno,  
        eicosatrieno: eicosatrieno,  
        omega_6_20_3: omega_6_20_3,  
        omega_6_docosatetraeno: omega_6_docosatetraeno,  
        lycopene: lycopene,  
        tocopherol_delta: tocopherol_delta,  
        polyun_trans_fats: polyun_trans_fats,  
        tridecane_13_0: tridecane_13_0,  
        omega_3: omega_3,  
        pentadecene: pentadecene,  
        caffeine: caffeine,  
        theobromine: theobromine,  
        trans_trans: trans_trans,  
        menaquinone_4: menaquinone_4,  
        campesterol: campesterol,  
        stigmasterol: stigmasterol,  
        e_vitamin_added: e_vitamin_added,  
        b12_vitamin_added: b12_vitamin_added,  
        trance_22_1: trance_22_1,  
        dihydrophylloquinone: dihydrophylloquinone,  
        d2_vitamin_ergocalciferol: d2_vitamin_ergocalciferol,  
        omega_6_20_4: omega_6_20_4,  
        omega_3_geneico: omega_3_geneico,  
        
      );

  @override
  int compareTo(NutrientColumnEnum other) => index.compareTo(other.index);

  @override
  String toString() => value;
   }
  /*
  enum ColumnEnum {
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
  omega_3_geneico
}
  */
  
