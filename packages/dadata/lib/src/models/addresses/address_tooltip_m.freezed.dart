// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_tooltip_m.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressTooltip _$AddressTooltipFromJson(Map<String, dynamic> json) {
  return _AddressTooltip.fromJson(json);
}

/// @nodoc
mixin _$AddressTooltip {
  List<SuggestionsAddress> get suggestions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressTooltipCopyWith<AddressTooltip> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressTooltipCopyWith<$Res> {
  factory $AddressTooltipCopyWith(
          AddressTooltip value, $Res Function(AddressTooltip) then) =
      _$AddressTooltipCopyWithImpl<$Res, AddressTooltip>;
  @useResult
  $Res call({List<SuggestionsAddress> suggestions});
}

/// @nodoc
class _$AddressTooltipCopyWithImpl<$Res, $Val extends AddressTooltip>
    implements $AddressTooltipCopyWith<$Res> {
  _$AddressTooltipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestions = null,
  }) {
    return _then(_value.copyWith(
      suggestions: null == suggestions
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<SuggestionsAddress>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressTooltipCopyWith<$Res>
    implements $AddressTooltipCopyWith<$Res> {
  factory _$$_AddressTooltipCopyWith(
          _$_AddressTooltip value, $Res Function(_$_AddressTooltip) then) =
      __$$_AddressTooltipCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SuggestionsAddress> suggestions});
}

/// @nodoc
class __$$_AddressTooltipCopyWithImpl<$Res>
    extends _$AddressTooltipCopyWithImpl<$Res, _$_AddressTooltip>
    implements _$$_AddressTooltipCopyWith<$Res> {
  __$$_AddressTooltipCopyWithImpl(
      _$_AddressTooltip _value, $Res Function(_$_AddressTooltip) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestions = null,
  }) {
    return _then(_$_AddressTooltip(
      null == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<SuggestionsAddress>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressTooltip implements _AddressTooltip {
  const _$_AddressTooltip(final List<SuggestionsAddress> suggestions)
      : _suggestions = suggestions;

  factory _$_AddressTooltip.fromJson(Map<String, dynamic> json) =>
      _$$_AddressTooltipFromJson(json);

  final List<SuggestionsAddress> _suggestions;
  @override
  List<SuggestionsAddress> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  @override
  String toString() {
    return 'AddressTooltip(suggestions: $suggestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressTooltip &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_suggestions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressTooltipCopyWith<_$_AddressTooltip> get copyWith =>
      __$$_AddressTooltipCopyWithImpl<_$_AddressTooltip>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressTooltipToJson(
      this,
    );
  }
}

abstract class _AddressTooltip implements AddressTooltip {
  const factory _AddressTooltip(final List<SuggestionsAddress> suggestions) =
      _$_AddressTooltip;

  factory _AddressTooltip.fromJson(Map<String, dynamic> json) =
      _$_AddressTooltip.fromJson;

  @override
  List<SuggestionsAddress> get suggestions;
  @override
  @JsonKey(ignore: true)
  _$$_AddressTooltipCopyWith<_$_AddressTooltip> get copyWith =>
      throw _privateConstructorUsedError;
}

SuggestionsAddress _$SuggestionsAddressFromJson(Map<String, dynamic> json) {
  return _SuggestionsAddress.fromJson(json);
}

/// @nodoc
mixin _$SuggestionsAddress {
  String get value => throw _privateConstructorUsedError;
  String get unrestricted_value => throw _privateConstructorUsedError;
  DataAddress get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuggestionsAddressCopyWith<SuggestionsAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestionsAddressCopyWith<$Res> {
  factory $SuggestionsAddressCopyWith(
          SuggestionsAddress value, $Res Function(SuggestionsAddress) then) =
      _$SuggestionsAddressCopyWithImpl<$Res, SuggestionsAddress>;
  @useResult
  $Res call({String value, String unrestricted_value, DataAddress data});

  $DataAddressCopyWith<$Res> get data;
}

/// @nodoc
class _$SuggestionsAddressCopyWithImpl<$Res, $Val extends SuggestionsAddress>
    implements $SuggestionsAddressCopyWith<$Res> {
  _$SuggestionsAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? unrestricted_value = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      unrestricted_value: null == unrestricted_value
          ? _value.unrestricted_value
          : unrestricted_value // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataAddress,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataAddressCopyWith<$Res> get data {
    return $DataAddressCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SuggestionsAddressCopyWith<$Res>
    implements $SuggestionsAddressCopyWith<$Res> {
  factory _$$_SuggestionsAddressCopyWith(_$_SuggestionsAddress value,
          $Res Function(_$_SuggestionsAddress) then) =
      __$$_SuggestionsAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, String unrestricted_value, DataAddress data});

  @override
  $DataAddressCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SuggestionsAddressCopyWithImpl<$Res>
    extends _$SuggestionsAddressCopyWithImpl<$Res, _$_SuggestionsAddress>
    implements _$$_SuggestionsAddressCopyWith<$Res> {
  __$$_SuggestionsAddressCopyWithImpl(
      _$_SuggestionsAddress _value, $Res Function(_$_SuggestionsAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? unrestricted_value = null,
    Object? data = null,
  }) {
    return _then(_$_SuggestionsAddress(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      unrestricted_value: null == unrestricted_value
          ? _value.unrestricted_value
          : unrestricted_value // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataAddress,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SuggestionsAddress implements _SuggestionsAddress {
  const _$_SuggestionsAddress(
      {this.value = '',
      this.unrestricted_value = '',
      this.data = const DataAddress()});

  factory _$_SuggestionsAddress.fromJson(Map<String, dynamic> json) =>
      _$$_SuggestionsAddressFromJson(json);

  @override
  @JsonKey()
  final String value;
  @override
  @JsonKey()
  final String unrestricted_value;
  @override
  @JsonKey()
  final DataAddress data;

  @override
  String toString() {
    return 'SuggestionsAddress(value: $value, unrestricted_value: $unrestricted_value, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuggestionsAddress &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.unrestricted_value, unrestricted_value) ||
                other.unrestricted_value == unrestricted_value) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, unrestricted_value, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuggestionsAddressCopyWith<_$_SuggestionsAddress> get copyWith =>
      __$$_SuggestionsAddressCopyWithImpl<_$_SuggestionsAddress>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SuggestionsAddressToJson(
      this,
    );
  }
}

abstract class _SuggestionsAddress implements SuggestionsAddress {
  const factory _SuggestionsAddress(
      {final String value,
      final String unrestricted_value,
      final DataAddress data}) = _$_SuggestionsAddress;

  factory _SuggestionsAddress.fromJson(Map<String, dynamic> json) =
      _$_SuggestionsAddress.fromJson;

  @override
  String get value;
  @override
  String get unrestricted_value;
  @override
  DataAddress get data;
  @override
  @JsonKey(ignore: true)
  _$$_SuggestionsAddressCopyWith<_$_SuggestionsAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

DataAddress _$DataAddressFromJson(Map<String, dynamic> json) {
  return _DataAddress.fromJson(json);
}

/// @nodoc
mixin _$DataAddress {
  String get postal_code => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get country_iso_code => throw _privateConstructorUsedError;
  String get federal_district => throw _privateConstructorUsedError;
  String get region_fias_id => throw _privateConstructorUsedError;
  String get region_kladr_id => throw _privateConstructorUsedError;
  String get region_iso_code => throw _privateConstructorUsedError;
  String get region_with_type => throw _privateConstructorUsedError;
  String get region_type => throw _privateConstructorUsedError;
  String get region_type_full => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  String get area_fias_id => throw _privateConstructorUsedError;
  String get area_kladr_id => throw _privateConstructorUsedError;
  String get area_with_type => throw _privateConstructorUsedError;
  String get area_type => throw _privateConstructorUsedError;
  String get area_type_full => throw _privateConstructorUsedError;
  String get area => throw _privateConstructorUsedError;
  String get city_fias_id => throw _privateConstructorUsedError;
  String get city_kladr_id => throw _privateConstructorUsedError;
  String get city_with_type => throw _privateConstructorUsedError;
  String get city_type => throw _privateConstructorUsedError;
  String get city_type_full => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get city_area => throw _privateConstructorUsedError;
  String get city_district_fias_id => throw _privateConstructorUsedError;
  String get city_district_kladr_id => throw _privateConstructorUsedError;
  String get city_district_with_type => throw _privateConstructorUsedError;
  String get city_district_type => throw _privateConstructorUsedError;
  String get city_district_type_full => throw _privateConstructorUsedError;
  String get city_district => throw _privateConstructorUsedError;
  String get settlement_fias_id => throw _privateConstructorUsedError;
  String get settlement_kladr_id => throw _privateConstructorUsedError;
  String get settlement_with_type => throw _privateConstructorUsedError;
  String get settlement_type => throw _privateConstructorUsedError;
  String get settlement_type_full => throw _privateConstructorUsedError;
  String get settlement => throw _privateConstructorUsedError;
  String get street_fias_id => throw _privateConstructorUsedError;
  String get street_kladr_id => throw _privateConstructorUsedError;
  String get street_with_type => throw _privateConstructorUsedError;
  String get street_type => throw _privateConstructorUsedError;
  String get street_type_full => throw _privateConstructorUsedError;
  String get street => throw _privateConstructorUsedError;
  String get stead_fias_id => throw _privateConstructorUsedError;
  String get stead_cadnum => throw _privateConstructorUsedError;
  String get stead_type => throw _privateConstructorUsedError;
  String get stead_type_full => throw _privateConstructorUsedError;
  String get stead => throw _privateConstructorUsedError;
  String get house_fias_id => throw _privateConstructorUsedError;
  String get house_kladr_id => throw _privateConstructorUsedError;
  String get house_cadnum => throw _privateConstructorUsedError;
  String get house_type => throw _privateConstructorUsedError;
  String get house_type_full => throw _privateConstructorUsedError;
  String get house => throw _privateConstructorUsedError;
  String get block_type => throw _privateConstructorUsedError;
  String get block_type_full => throw _privateConstructorUsedError;
  String get block => throw _privateConstructorUsedError;
  String get entrance => throw _privateConstructorUsedError;
  String get floor => throw _privateConstructorUsedError;
  String get flat_fias_id => throw _privateConstructorUsedError;
  String get flat_cadnum => throw _privateConstructorUsedError;
  String get flat_type => throw _privateConstructorUsedError;
  String get flat_type_full => throw _privateConstructorUsedError;
  String get flat => throw _privateConstructorUsedError;
  String get flat_area => throw _privateConstructorUsedError;
  String get square_meter_price => throw _privateConstructorUsedError;
  String get flat_price => throw _privateConstructorUsedError;
  String get postal_box => throw _privateConstructorUsedError;
  String get fias_id => throw _privateConstructorUsedError;
  String get fias_code => throw _privateConstructorUsedError;
  String get fias_level => throw _privateConstructorUsedError;
  String get fias_actuality_state => throw _privateConstructorUsedError;
  String get kladr_id => throw _privateConstructorUsedError;
  String get geoname_id => throw _privateConstructorUsedError;
  String get capital_marker => throw _privateConstructorUsedError;
  String get okato => throw _privateConstructorUsedError;
  String get oktmo => throw _privateConstructorUsedError;
  String get tax_office => throw _privateConstructorUsedError;
  String get tax_office_legal => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  String get geo_lat => throw _privateConstructorUsedError;
  String get geo_lon => throw _privateConstructorUsedError;
  String get beltway_hit => throw _privateConstructorUsedError;
  String get beltway_distance => throw _privateConstructorUsedError;
  List<String> get metro => throw _privateConstructorUsedError;
  String get divisions => throw _privateConstructorUsedError;
  String get qc_geo => throw _privateConstructorUsedError;
  String get qc_complete => throw _privateConstructorUsedError;
  String get qc_house => throw _privateConstructorUsedError;
  List<String> get history_values => throw _privateConstructorUsedError;
  String get unparsed_parts => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  String get qc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataAddressCopyWith<DataAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataAddressCopyWith<$Res> {
  factory $DataAddressCopyWith(
          DataAddress value, $Res Function(DataAddress) then) =
      _$DataAddressCopyWithImpl<$Res, DataAddress>;
  @useResult
  $Res call(
      {String postal_code,
      String country,
      String country_iso_code,
      String federal_district,
      String region_fias_id,
      String region_kladr_id,
      String region_iso_code,
      String region_with_type,
      String region_type,
      String region_type_full,
      String region,
      String area_fias_id,
      String area_kladr_id,
      String area_with_type,
      String area_type,
      String area_type_full,
      String area,
      String city_fias_id,
      String city_kladr_id,
      String city_with_type,
      String city_type,
      String city_type_full,
      String city,
      String city_area,
      String city_district_fias_id,
      String city_district_kladr_id,
      String city_district_with_type,
      String city_district_type,
      String city_district_type_full,
      String city_district,
      String settlement_fias_id,
      String settlement_kladr_id,
      String settlement_with_type,
      String settlement_type,
      String settlement_type_full,
      String settlement,
      String street_fias_id,
      String street_kladr_id,
      String street_with_type,
      String street_type,
      String street_type_full,
      String street,
      String stead_fias_id,
      String stead_cadnum,
      String stead_type,
      String stead_type_full,
      String stead,
      String house_fias_id,
      String house_kladr_id,
      String house_cadnum,
      String house_type,
      String house_type_full,
      String house,
      String block_type,
      String block_type_full,
      String block,
      String entrance,
      String floor,
      String flat_fias_id,
      String flat_cadnum,
      String flat_type,
      String flat_type_full,
      String flat,
      String flat_area,
      String square_meter_price,
      String flat_price,
      String postal_box,
      String fias_id,
      String fias_code,
      String fias_level,
      String fias_actuality_state,
      String kladr_id,
      String geoname_id,
      String capital_marker,
      String okato,
      String oktmo,
      String tax_office,
      String tax_office_legal,
      String timezone,
      String geo_lat,
      String geo_lon,
      String beltway_hit,
      String beltway_distance,
      List<String> metro,
      String divisions,
      String qc_geo,
      String qc_complete,
      String qc_house,
      List<String> history_values,
      String unparsed_parts,
      String source,
      String qc});
}

/// @nodoc
class _$DataAddressCopyWithImpl<$Res, $Val extends DataAddress>
    implements $DataAddressCopyWith<$Res> {
  _$DataAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postal_code = null,
    Object? country = null,
    Object? country_iso_code = null,
    Object? federal_district = null,
    Object? region_fias_id = null,
    Object? region_kladr_id = null,
    Object? region_iso_code = null,
    Object? region_with_type = null,
    Object? region_type = null,
    Object? region_type_full = null,
    Object? region = null,
    Object? area_fias_id = null,
    Object? area_kladr_id = null,
    Object? area_with_type = null,
    Object? area_type = null,
    Object? area_type_full = null,
    Object? area = null,
    Object? city_fias_id = null,
    Object? city_kladr_id = null,
    Object? city_with_type = null,
    Object? city_type = null,
    Object? city_type_full = null,
    Object? city = null,
    Object? city_area = null,
    Object? city_district_fias_id = null,
    Object? city_district_kladr_id = null,
    Object? city_district_with_type = null,
    Object? city_district_type = null,
    Object? city_district_type_full = null,
    Object? city_district = null,
    Object? settlement_fias_id = null,
    Object? settlement_kladr_id = null,
    Object? settlement_with_type = null,
    Object? settlement_type = null,
    Object? settlement_type_full = null,
    Object? settlement = null,
    Object? street_fias_id = null,
    Object? street_kladr_id = null,
    Object? street_with_type = null,
    Object? street_type = null,
    Object? street_type_full = null,
    Object? street = null,
    Object? stead_fias_id = null,
    Object? stead_cadnum = null,
    Object? stead_type = null,
    Object? stead_type_full = null,
    Object? stead = null,
    Object? house_fias_id = null,
    Object? house_kladr_id = null,
    Object? house_cadnum = null,
    Object? house_type = null,
    Object? house_type_full = null,
    Object? house = null,
    Object? block_type = null,
    Object? block_type_full = null,
    Object? block = null,
    Object? entrance = null,
    Object? floor = null,
    Object? flat_fias_id = null,
    Object? flat_cadnum = null,
    Object? flat_type = null,
    Object? flat_type_full = null,
    Object? flat = null,
    Object? flat_area = null,
    Object? square_meter_price = null,
    Object? flat_price = null,
    Object? postal_box = null,
    Object? fias_id = null,
    Object? fias_code = null,
    Object? fias_level = null,
    Object? fias_actuality_state = null,
    Object? kladr_id = null,
    Object? geoname_id = null,
    Object? capital_marker = null,
    Object? okato = null,
    Object? oktmo = null,
    Object? tax_office = null,
    Object? tax_office_legal = null,
    Object? timezone = null,
    Object? geo_lat = null,
    Object? geo_lon = null,
    Object? beltway_hit = null,
    Object? beltway_distance = null,
    Object? metro = null,
    Object? divisions = null,
    Object? qc_geo = null,
    Object? qc_complete = null,
    Object? qc_house = null,
    Object? history_values = null,
    Object? unparsed_parts = null,
    Object? source = null,
    Object? qc = null,
  }) {
    return _then(_value.copyWith(
      postal_code: null == postal_code
          ? _value.postal_code
          : postal_code // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      country_iso_code: null == country_iso_code
          ? _value.country_iso_code
          : country_iso_code // ignore: cast_nullable_to_non_nullable
              as String,
      federal_district: null == federal_district
          ? _value.federal_district
          : federal_district // ignore: cast_nullable_to_non_nullable
              as String,
      region_fias_id: null == region_fias_id
          ? _value.region_fias_id
          : region_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      region_kladr_id: null == region_kladr_id
          ? _value.region_kladr_id
          : region_kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      region_iso_code: null == region_iso_code
          ? _value.region_iso_code
          : region_iso_code // ignore: cast_nullable_to_non_nullable
              as String,
      region_with_type: null == region_with_type
          ? _value.region_with_type
          : region_with_type // ignore: cast_nullable_to_non_nullable
              as String,
      region_type: null == region_type
          ? _value.region_type
          : region_type // ignore: cast_nullable_to_non_nullable
              as String,
      region_type_full: null == region_type_full
          ? _value.region_type_full
          : region_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      area_fias_id: null == area_fias_id
          ? _value.area_fias_id
          : area_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      area_kladr_id: null == area_kladr_id
          ? _value.area_kladr_id
          : area_kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      area_with_type: null == area_with_type
          ? _value.area_with_type
          : area_with_type // ignore: cast_nullable_to_non_nullable
              as String,
      area_type: null == area_type
          ? _value.area_type
          : area_type // ignore: cast_nullable_to_non_nullable
              as String,
      area_type_full: null == area_type_full
          ? _value.area_type_full
          : area_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      city_fias_id: null == city_fias_id
          ? _value.city_fias_id
          : city_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      city_kladr_id: null == city_kladr_id
          ? _value.city_kladr_id
          : city_kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      city_with_type: null == city_with_type
          ? _value.city_with_type
          : city_with_type // ignore: cast_nullable_to_non_nullable
              as String,
      city_type: null == city_type
          ? _value.city_type
          : city_type // ignore: cast_nullable_to_non_nullable
              as String,
      city_type_full: null == city_type_full
          ? _value.city_type_full
          : city_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      city_area: null == city_area
          ? _value.city_area
          : city_area // ignore: cast_nullable_to_non_nullable
              as String,
      city_district_fias_id: null == city_district_fias_id
          ? _value.city_district_fias_id
          : city_district_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      city_district_kladr_id: null == city_district_kladr_id
          ? _value.city_district_kladr_id
          : city_district_kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      city_district_with_type: null == city_district_with_type
          ? _value.city_district_with_type
          : city_district_with_type // ignore: cast_nullable_to_non_nullable
              as String,
      city_district_type: null == city_district_type
          ? _value.city_district_type
          : city_district_type // ignore: cast_nullable_to_non_nullable
              as String,
      city_district_type_full: null == city_district_type_full
          ? _value.city_district_type_full
          : city_district_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      city_district: null == city_district
          ? _value.city_district
          : city_district // ignore: cast_nullable_to_non_nullable
              as String,
      settlement_fias_id: null == settlement_fias_id
          ? _value.settlement_fias_id
          : settlement_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      settlement_kladr_id: null == settlement_kladr_id
          ? _value.settlement_kladr_id
          : settlement_kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      settlement_with_type: null == settlement_with_type
          ? _value.settlement_with_type
          : settlement_with_type // ignore: cast_nullable_to_non_nullable
              as String,
      settlement_type: null == settlement_type
          ? _value.settlement_type
          : settlement_type // ignore: cast_nullable_to_non_nullable
              as String,
      settlement_type_full: null == settlement_type_full
          ? _value.settlement_type_full
          : settlement_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      settlement: null == settlement
          ? _value.settlement
          : settlement // ignore: cast_nullable_to_non_nullable
              as String,
      street_fias_id: null == street_fias_id
          ? _value.street_fias_id
          : street_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      street_kladr_id: null == street_kladr_id
          ? _value.street_kladr_id
          : street_kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      street_with_type: null == street_with_type
          ? _value.street_with_type
          : street_with_type // ignore: cast_nullable_to_non_nullable
              as String,
      street_type: null == street_type
          ? _value.street_type
          : street_type // ignore: cast_nullable_to_non_nullable
              as String,
      street_type_full: null == street_type_full
          ? _value.street_type_full
          : street_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      stead_fias_id: null == stead_fias_id
          ? _value.stead_fias_id
          : stead_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      stead_cadnum: null == stead_cadnum
          ? _value.stead_cadnum
          : stead_cadnum // ignore: cast_nullable_to_non_nullable
              as String,
      stead_type: null == stead_type
          ? _value.stead_type
          : stead_type // ignore: cast_nullable_to_non_nullable
              as String,
      stead_type_full: null == stead_type_full
          ? _value.stead_type_full
          : stead_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      stead: null == stead
          ? _value.stead
          : stead // ignore: cast_nullable_to_non_nullable
              as String,
      house_fias_id: null == house_fias_id
          ? _value.house_fias_id
          : house_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      house_kladr_id: null == house_kladr_id
          ? _value.house_kladr_id
          : house_kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      house_cadnum: null == house_cadnum
          ? _value.house_cadnum
          : house_cadnum // ignore: cast_nullable_to_non_nullable
              as String,
      house_type: null == house_type
          ? _value.house_type
          : house_type // ignore: cast_nullable_to_non_nullable
              as String,
      house_type_full: null == house_type_full
          ? _value.house_type_full
          : house_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      house: null == house
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as String,
      block_type: null == block_type
          ? _value.block_type
          : block_type // ignore: cast_nullable_to_non_nullable
              as String,
      block_type_full: null == block_type_full
          ? _value.block_type_full
          : block_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      block: null == block
          ? _value.block
          : block // ignore: cast_nullable_to_non_nullable
              as String,
      entrance: null == entrance
          ? _value.entrance
          : entrance // ignore: cast_nullable_to_non_nullable
              as String,
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as String,
      flat_fias_id: null == flat_fias_id
          ? _value.flat_fias_id
          : flat_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      flat_cadnum: null == flat_cadnum
          ? _value.flat_cadnum
          : flat_cadnum // ignore: cast_nullable_to_non_nullable
              as String,
      flat_type: null == flat_type
          ? _value.flat_type
          : flat_type // ignore: cast_nullable_to_non_nullable
              as String,
      flat_type_full: null == flat_type_full
          ? _value.flat_type_full
          : flat_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      flat: null == flat
          ? _value.flat
          : flat // ignore: cast_nullable_to_non_nullable
              as String,
      flat_area: null == flat_area
          ? _value.flat_area
          : flat_area // ignore: cast_nullable_to_non_nullable
              as String,
      square_meter_price: null == square_meter_price
          ? _value.square_meter_price
          : square_meter_price // ignore: cast_nullable_to_non_nullable
              as String,
      flat_price: null == flat_price
          ? _value.flat_price
          : flat_price // ignore: cast_nullable_to_non_nullable
              as String,
      postal_box: null == postal_box
          ? _value.postal_box
          : postal_box // ignore: cast_nullable_to_non_nullable
              as String,
      fias_id: null == fias_id
          ? _value.fias_id
          : fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      fias_code: null == fias_code
          ? _value.fias_code
          : fias_code // ignore: cast_nullable_to_non_nullable
              as String,
      fias_level: null == fias_level
          ? _value.fias_level
          : fias_level // ignore: cast_nullable_to_non_nullable
              as String,
      fias_actuality_state: null == fias_actuality_state
          ? _value.fias_actuality_state
          : fias_actuality_state // ignore: cast_nullable_to_non_nullable
              as String,
      kladr_id: null == kladr_id
          ? _value.kladr_id
          : kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      geoname_id: null == geoname_id
          ? _value.geoname_id
          : geoname_id // ignore: cast_nullable_to_non_nullable
              as String,
      capital_marker: null == capital_marker
          ? _value.capital_marker
          : capital_marker // ignore: cast_nullable_to_non_nullable
              as String,
      okato: null == okato
          ? _value.okato
          : okato // ignore: cast_nullable_to_non_nullable
              as String,
      oktmo: null == oktmo
          ? _value.oktmo
          : oktmo // ignore: cast_nullable_to_non_nullable
              as String,
      tax_office: null == tax_office
          ? _value.tax_office
          : tax_office // ignore: cast_nullable_to_non_nullable
              as String,
      tax_office_legal: null == tax_office_legal
          ? _value.tax_office_legal
          : tax_office_legal // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      geo_lat: null == geo_lat
          ? _value.geo_lat
          : geo_lat // ignore: cast_nullable_to_non_nullable
              as String,
      geo_lon: null == geo_lon
          ? _value.geo_lon
          : geo_lon // ignore: cast_nullable_to_non_nullable
              as String,
      beltway_hit: null == beltway_hit
          ? _value.beltway_hit
          : beltway_hit // ignore: cast_nullable_to_non_nullable
              as String,
      beltway_distance: null == beltway_distance
          ? _value.beltway_distance
          : beltway_distance // ignore: cast_nullable_to_non_nullable
              as String,
      metro: null == metro
          ? _value.metro
          : metro // ignore: cast_nullable_to_non_nullable
              as List<String>,
      divisions: null == divisions
          ? _value.divisions
          : divisions // ignore: cast_nullable_to_non_nullable
              as String,
      qc_geo: null == qc_geo
          ? _value.qc_geo
          : qc_geo // ignore: cast_nullable_to_non_nullable
              as String,
      qc_complete: null == qc_complete
          ? _value.qc_complete
          : qc_complete // ignore: cast_nullable_to_non_nullable
              as String,
      qc_house: null == qc_house
          ? _value.qc_house
          : qc_house // ignore: cast_nullable_to_non_nullable
              as String,
      history_values: null == history_values
          ? _value.history_values
          : history_values // ignore: cast_nullable_to_non_nullable
              as List<String>,
      unparsed_parts: null == unparsed_parts
          ? _value.unparsed_parts
          : unparsed_parts // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      qc: null == qc
          ? _value.qc
          : qc // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataAddressCopyWith<$Res>
    implements $DataAddressCopyWith<$Res> {
  factory _$$_DataAddressCopyWith(
          _$_DataAddress value, $Res Function(_$_DataAddress) then) =
      __$$_DataAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String postal_code,
      String country,
      String country_iso_code,
      String federal_district,
      String region_fias_id,
      String region_kladr_id,
      String region_iso_code,
      String region_with_type,
      String region_type,
      String region_type_full,
      String region,
      String area_fias_id,
      String area_kladr_id,
      String area_with_type,
      String area_type,
      String area_type_full,
      String area,
      String city_fias_id,
      String city_kladr_id,
      String city_with_type,
      String city_type,
      String city_type_full,
      String city,
      String city_area,
      String city_district_fias_id,
      String city_district_kladr_id,
      String city_district_with_type,
      String city_district_type,
      String city_district_type_full,
      String city_district,
      String settlement_fias_id,
      String settlement_kladr_id,
      String settlement_with_type,
      String settlement_type,
      String settlement_type_full,
      String settlement,
      String street_fias_id,
      String street_kladr_id,
      String street_with_type,
      String street_type,
      String street_type_full,
      String street,
      String stead_fias_id,
      String stead_cadnum,
      String stead_type,
      String stead_type_full,
      String stead,
      String house_fias_id,
      String house_kladr_id,
      String house_cadnum,
      String house_type,
      String house_type_full,
      String house,
      String block_type,
      String block_type_full,
      String block,
      String entrance,
      String floor,
      String flat_fias_id,
      String flat_cadnum,
      String flat_type,
      String flat_type_full,
      String flat,
      String flat_area,
      String square_meter_price,
      String flat_price,
      String postal_box,
      String fias_id,
      String fias_code,
      String fias_level,
      String fias_actuality_state,
      String kladr_id,
      String geoname_id,
      String capital_marker,
      String okato,
      String oktmo,
      String tax_office,
      String tax_office_legal,
      String timezone,
      String geo_lat,
      String geo_lon,
      String beltway_hit,
      String beltway_distance,
      List<String> metro,
      String divisions,
      String qc_geo,
      String qc_complete,
      String qc_house,
      List<String> history_values,
      String unparsed_parts,
      String source,
      String qc});
}

/// @nodoc
class __$$_DataAddressCopyWithImpl<$Res>
    extends _$DataAddressCopyWithImpl<$Res, _$_DataAddress>
    implements _$$_DataAddressCopyWith<$Res> {
  __$$_DataAddressCopyWithImpl(
      _$_DataAddress _value, $Res Function(_$_DataAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postal_code = null,
    Object? country = null,
    Object? country_iso_code = null,
    Object? federal_district = null,
    Object? region_fias_id = null,
    Object? region_kladr_id = null,
    Object? region_iso_code = null,
    Object? region_with_type = null,
    Object? region_type = null,
    Object? region_type_full = null,
    Object? region = null,
    Object? area_fias_id = null,
    Object? area_kladr_id = null,
    Object? area_with_type = null,
    Object? area_type = null,
    Object? area_type_full = null,
    Object? area = null,
    Object? city_fias_id = null,
    Object? city_kladr_id = null,
    Object? city_with_type = null,
    Object? city_type = null,
    Object? city_type_full = null,
    Object? city = null,
    Object? city_area = null,
    Object? city_district_fias_id = null,
    Object? city_district_kladr_id = null,
    Object? city_district_with_type = null,
    Object? city_district_type = null,
    Object? city_district_type_full = null,
    Object? city_district = null,
    Object? settlement_fias_id = null,
    Object? settlement_kladr_id = null,
    Object? settlement_with_type = null,
    Object? settlement_type = null,
    Object? settlement_type_full = null,
    Object? settlement = null,
    Object? street_fias_id = null,
    Object? street_kladr_id = null,
    Object? street_with_type = null,
    Object? street_type = null,
    Object? street_type_full = null,
    Object? street = null,
    Object? stead_fias_id = null,
    Object? stead_cadnum = null,
    Object? stead_type = null,
    Object? stead_type_full = null,
    Object? stead = null,
    Object? house_fias_id = null,
    Object? house_kladr_id = null,
    Object? house_cadnum = null,
    Object? house_type = null,
    Object? house_type_full = null,
    Object? house = null,
    Object? block_type = null,
    Object? block_type_full = null,
    Object? block = null,
    Object? entrance = null,
    Object? floor = null,
    Object? flat_fias_id = null,
    Object? flat_cadnum = null,
    Object? flat_type = null,
    Object? flat_type_full = null,
    Object? flat = null,
    Object? flat_area = null,
    Object? square_meter_price = null,
    Object? flat_price = null,
    Object? postal_box = null,
    Object? fias_id = null,
    Object? fias_code = null,
    Object? fias_level = null,
    Object? fias_actuality_state = null,
    Object? kladr_id = null,
    Object? geoname_id = null,
    Object? capital_marker = null,
    Object? okato = null,
    Object? oktmo = null,
    Object? tax_office = null,
    Object? tax_office_legal = null,
    Object? timezone = null,
    Object? geo_lat = null,
    Object? geo_lon = null,
    Object? beltway_hit = null,
    Object? beltway_distance = null,
    Object? metro = null,
    Object? divisions = null,
    Object? qc_geo = null,
    Object? qc_complete = null,
    Object? qc_house = null,
    Object? history_values = null,
    Object? unparsed_parts = null,
    Object? source = null,
    Object? qc = null,
  }) {
    return _then(_$_DataAddress(
      postal_code: null == postal_code
          ? _value.postal_code
          : postal_code // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      country_iso_code: null == country_iso_code
          ? _value.country_iso_code
          : country_iso_code // ignore: cast_nullable_to_non_nullable
              as String,
      federal_district: null == federal_district
          ? _value.federal_district
          : federal_district // ignore: cast_nullable_to_non_nullable
              as String,
      region_fias_id: null == region_fias_id
          ? _value.region_fias_id
          : region_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      region_kladr_id: null == region_kladr_id
          ? _value.region_kladr_id
          : region_kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      region_iso_code: null == region_iso_code
          ? _value.region_iso_code
          : region_iso_code // ignore: cast_nullable_to_non_nullable
              as String,
      region_with_type: null == region_with_type
          ? _value.region_with_type
          : region_with_type // ignore: cast_nullable_to_non_nullable
              as String,
      region_type: null == region_type
          ? _value.region_type
          : region_type // ignore: cast_nullable_to_non_nullable
              as String,
      region_type_full: null == region_type_full
          ? _value.region_type_full
          : region_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      area_fias_id: null == area_fias_id
          ? _value.area_fias_id
          : area_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      area_kladr_id: null == area_kladr_id
          ? _value.area_kladr_id
          : area_kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      area_with_type: null == area_with_type
          ? _value.area_with_type
          : area_with_type // ignore: cast_nullable_to_non_nullable
              as String,
      area_type: null == area_type
          ? _value.area_type
          : area_type // ignore: cast_nullable_to_non_nullable
              as String,
      area_type_full: null == area_type_full
          ? _value.area_type_full
          : area_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      city_fias_id: null == city_fias_id
          ? _value.city_fias_id
          : city_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      city_kladr_id: null == city_kladr_id
          ? _value.city_kladr_id
          : city_kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      city_with_type: null == city_with_type
          ? _value.city_with_type
          : city_with_type // ignore: cast_nullable_to_non_nullable
              as String,
      city_type: null == city_type
          ? _value.city_type
          : city_type // ignore: cast_nullable_to_non_nullable
              as String,
      city_type_full: null == city_type_full
          ? _value.city_type_full
          : city_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      city_area: null == city_area
          ? _value.city_area
          : city_area // ignore: cast_nullable_to_non_nullable
              as String,
      city_district_fias_id: null == city_district_fias_id
          ? _value.city_district_fias_id
          : city_district_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      city_district_kladr_id: null == city_district_kladr_id
          ? _value.city_district_kladr_id
          : city_district_kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      city_district_with_type: null == city_district_with_type
          ? _value.city_district_with_type
          : city_district_with_type // ignore: cast_nullable_to_non_nullable
              as String,
      city_district_type: null == city_district_type
          ? _value.city_district_type
          : city_district_type // ignore: cast_nullable_to_non_nullable
              as String,
      city_district_type_full: null == city_district_type_full
          ? _value.city_district_type_full
          : city_district_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      city_district: null == city_district
          ? _value.city_district
          : city_district // ignore: cast_nullable_to_non_nullable
              as String,
      settlement_fias_id: null == settlement_fias_id
          ? _value.settlement_fias_id
          : settlement_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      settlement_kladr_id: null == settlement_kladr_id
          ? _value.settlement_kladr_id
          : settlement_kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      settlement_with_type: null == settlement_with_type
          ? _value.settlement_with_type
          : settlement_with_type // ignore: cast_nullable_to_non_nullable
              as String,
      settlement_type: null == settlement_type
          ? _value.settlement_type
          : settlement_type // ignore: cast_nullable_to_non_nullable
              as String,
      settlement_type_full: null == settlement_type_full
          ? _value.settlement_type_full
          : settlement_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      settlement: null == settlement
          ? _value.settlement
          : settlement // ignore: cast_nullable_to_non_nullable
              as String,
      street_fias_id: null == street_fias_id
          ? _value.street_fias_id
          : street_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      street_kladr_id: null == street_kladr_id
          ? _value.street_kladr_id
          : street_kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      street_with_type: null == street_with_type
          ? _value.street_with_type
          : street_with_type // ignore: cast_nullable_to_non_nullable
              as String,
      street_type: null == street_type
          ? _value.street_type
          : street_type // ignore: cast_nullable_to_non_nullable
              as String,
      street_type_full: null == street_type_full
          ? _value.street_type_full
          : street_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      stead_fias_id: null == stead_fias_id
          ? _value.stead_fias_id
          : stead_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      stead_cadnum: null == stead_cadnum
          ? _value.stead_cadnum
          : stead_cadnum // ignore: cast_nullable_to_non_nullable
              as String,
      stead_type: null == stead_type
          ? _value.stead_type
          : stead_type // ignore: cast_nullable_to_non_nullable
              as String,
      stead_type_full: null == stead_type_full
          ? _value.stead_type_full
          : stead_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      stead: null == stead
          ? _value.stead
          : stead // ignore: cast_nullable_to_non_nullable
              as String,
      house_fias_id: null == house_fias_id
          ? _value.house_fias_id
          : house_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      house_kladr_id: null == house_kladr_id
          ? _value.house_kladr_id
          : house_kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      house_cadnum: null == house_cadnum
          ? _value.house_cadnum
          : house_cadnum // ignore: cast_nullable_to_non_nullable
              as String,
      house_type: null == house_type
          ? _value.house_type
          : house_type // ignore: cast_nullable_to_non_nullable
              as String,
      house_type_full: null == house_type_full
          ? _value.house_type_full
          : house_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      house: null == house
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as String,
      block_type: null == block_type
          ? _value.block_type
          : block_type // ignore: cast_nullable_to_non_nullable
              as String,
      block_type_full: null == block_type_full
          ? _value.block_type_full
          : block_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      block: null == block
          ? _value.block
          : block // ignore: cast_nullable_to_non_nullable
              as String,
      entrance: null == entrance
          ? _value.entrance
          : entrance // ignore: cast_nullable_to_non_nullable
              as String,
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as String,
      flat_fias_id: null == flat_fias_id
          ? _value.flat_fias_id
          : flat_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      flat_cadnum: null == flat_cadnum
          ? _value.flat_cadnum
          : flat_cadnum // ignore: cast_nullable_to_non_nullable
              as String,
      flat_type: null == flat_type
          ? _value.flat_type
          : flat_type // ignore: cast_nullable_to_non_nullable
              as String,
      flat_type_full: null == flat_type_full
          ? _value.flat_type_full
          : flat_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      flat: null == flat
          ? _value.flat
          : flat // ignore: cast_nullable_to_non_nullable
              as String,
      flat_area: null == flat_area
          ? _value.flat_area
          : flat_area // ignore: cast_nullable_to_non_nullable
              as String,
      square_meter_price: null == square_meter_price
          ? _value.square_meter_price
          : square_meter_price // ignore: cast_nullable_to_non_nullable
              as String,
      flat_price: null == flat_price
          ? _value.flat_price
          : flat_price // ignore: cast_nullable_to_non_nullable
              as String,
      postal_box: null == postal_box
          ? _value.postal_box
          : postal_box // ignore: cast_nullable_to_non_nullable
              as String,
      fias_id: null == fias_id
          ? _value.fias_id
          : fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      fias_code: null == fias_code
          ? _value.fias_code
          : fias_code // ignore: cast_nullable_to_non_nullable
              as String,
      fias_level: null == fias_level
          ? _value.fias_level
          : fias_level // ignore: cast_nullable_to_non_nullable
              as String,
      fias_actuality_state: null == fias_actuality_state
          ? _value.fias_actuality_state
          : fias_actuality_state // ignore: cast_nullable_to_non_nullable
              as String,
      kladr_id: null == kladr_id
          ? _value.kladr_id
          : kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      geoname_id: null == geoname_id
          ? _value.geoname_id
          : geoname_id // ignore: cast_nullable_to_non_nullable
              as String,
      capital_marker: null == capital_marker
          ? _value.capital_marker
          : capital_marker // ignore: cast_nullable_to_non_nullable
              as String,
      okato: null == okato
          ? _value.okato
          : okato // ignore: cast_nullable_to_non_nullable
              as String,
      oktmo: null == oktmo
          ? _value.oktmo
          : oktmo // ignore: cast_nullable_to_non_nullable
              as String,
      tax_office: null == tax_office
          ? _value.tax_office
          : tax_office // ignore: cast_nullable_to_non_nullable
              as String,
      tax_office_legal: null == tax_office_legal
          ? _value.tax_office_legal
          : tax_office_legal // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      geo_lat: null == geo_lat
          ? _value.geo_lat
          : geo_lat // ignore: cast_nullable_to_non_nullable
              as String,
      geo_lon: null == geo_lon
          ? _value.geo_lon
          : geo_lon // ignore: cast_nullable_to_non_nullable
              as String,
      beltway_hit: null == beltway_hit
          ? _value.beltway_hit
          : beltway_hit // ignore: cast_nullable_to_non_nullable
              as String,
      beltway_distance: null == beltway_distance
          ? _value.beltway_distance
          : beltway_distance // ignore: cast_nullable_to_non_nullable
              as String,
      metro: null == metro
          ? _value._metro
          : metro // ignore: cast_nullable_to_non_nullable
              as List<String>,
      divisions: null == divisions
          ? _value.divisions
          : divisions // ignore: cast_nullable_to_non_nullable
              as String,
      qc_geo: null == qc_geo
          ? _value.qc_geo
          : qc_geo // ignore: cast_nullable_to_non_nullable
              as String,
      qc_complete: null == qc_complete
          ? _value.qc_complete
          : qc_complete // ignore: cast_nullable_to_non_nullable
              as String,
      qc_house: null == qc_house
          ? _value.qc_house
          : qc_house // ignore: cast_nullable_to_non_nullable
              as String,
      history_values: null == history_values
          ? _value._history_values
          : history_values // ignore: cast_nullable_to_non_nullable
              as List<String>,
      unparsed_parts: null == unparsed_parts
          ? _value.unparsed_parts
          : unparsed_parts // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      qc: null == qc
          ? _value.qc
          : qc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataAddress implements _DataAddress {
  const _$_DataAddress(
      {this.postal_code = '',
      this.country = '',
      this.country_iso_code = '',
      this.federal_district = '',
      this.region_fias_id = '',
      this.region_kladr_id = '',
      this.region_iso_code = '',
      this.region_with_type = '',
      this.region_type = '',
      this.region_type_full = '',
      this.region = '',
      this.area_fias_id = '',
      this.area_kladr_id = '',
      this.area_with_type = '',
      this.area_type = '',
      this.area_type_full = '',
      this.area = '',
      this.city_fias_id = '',
      this.city_kladr_id = '',
      this.city_with_type = '',
      this.city_type = '',
      this.city_type_full = '',
      this.city = '',
      this.city_area = '',
      this.city_district_fias_id = '',
      this.city_district_kladr_id = '',
      this.city_district_with_type = '',
      this.city_district_type = '',
      this.city_district_type_full = '',
      this.city_district = '',
      this.settlement_fias_id = '',
      this.settlement_kladr_id = '',
      this.settlement_with_type = '',
      this.settlement_type = '',
      this.settlement_type_full = '',
      this.settlement = '',
      this.street_fias_id = '',
      this.street_kladr_id = '',
      this.street_with_type = '',
      this.street_type = '',
      this.street_type_full = '',
      this.street = '',
      this.stead_fias_id = '',
      this.stead_cadnum = '',
      this.stead_type = '',
      this.stead_type_full = '',
      this.stead = '',
      this.house_fias_id = '',
      this.house_kladr_id = '',
      this.house_cadnum = '',
      this.house_type = '',
      this.house_type_full = '',
      this.house = '',
      this.block_type = '',
      this.block_type_full = '',
      this.block = '',
      this.entrance = '',
      this.floor = '',
      this.flat_fias_id = '',
      this.flat_cadnum = '',
      this.flat_type = '',
      this.flat_type_full = '',
      this.flat = '',
      this.flat_area = '',
      this.square_meter_price = '',
      this.flat_price = '',
      this.postal_box = '',
      this.fias_id = '',
      this.fias_code = '',
      this.fias_level = '',
      this.fias_actuality_state = '',
      this.kladr_id = '',
      this.geoname_id = '',
      this.capital_marker = '',
      this.okato = '',
      this.oktmo = '',
      this.tax_office = '',
      this.tax_office_legal = '',
      this.timezone = '',
      this.geo_lat = '',
      this.geo_lon = '',
      this.beltway_hit = '',
      this.beltway_distance = '',
      final List<String> metro = const [],
      this.divisions = '',
      this.qc_geo = '',
      this.qc_complete = '',
      this.qc_house = '',
      final List<String> history_values = const [],
      this.unparsed_parts = '',
      this.source = '',
      this.qc = ''})
      : _metro = metro,
        _history_values = history_values;

  factory _$_DataAddress.fromJson(Map<String, dynamic> json) =>
      _$$_DataAddressFromJson(json);

  @override
  @JsonKey()
  final String postal_code;
  @override
  @JsonKey()
  final String country;
  @override
  @JsonKey()
  final String country_iso_code;
  @override
  @JsonKey()
  final String federal_district;
  @override
  @JsonKey()
  final String region_fias_id;
  @override
  @JsonKey()
  final String region_kladr_id;
  @override
  @JsonKey()
  final String region_iso_code;
  @override
  @JsonKey()
  final String region_with_type;
  @override
  @JsonKey()
  final String region_type;
  @override
  @JsonKey()
  final String region_type_full;
  @override
  @JsonKey()
  final String region;
  @override
  @JsonKey()
  final String area_fias_id;
  @override
  @JsonKey()
  final String area_kladr_id;
  @override
  @JsonKey()
  final String area_with_type;
  @override
  @JsonKey()
  final String area_type;
  @override
  @JsonKey()
  final String area_type_full;
  @override
  @JsonKey()
  final String area;
  @override
  @JsonKey()
  final String city_fias_id;
  @override
  @JsonKey()
  final String city_kladr_id;
  @override
  @JsonKey()
  final String city_with_type;
  @override
  @JsonKey()
  final String city_type;
  @override
  @JsonKey()
  final String city_type_full;
  @override
  @JsonKey()
  final String city;
  @override
  @JsonKey()
  final String city_area;
  @override
  @JsonKey()
  final String city_district_fias_id;
  @override
  @JsonKey()
  final String city_district_kladr_id;
  @override
  @JsonKey()
  final String city_district_with_type;
  @override
  @JsonKey()
  final String city_district_type;
  @override
  @JsonKey()
  final String city_district_type_full;
  @override
  @JsonKey()
  final String city_district;
  @override
  @JsonKey()
  final String settlement_fias_id;
  @override
  @JsonKey()
  final String settlement_kladr_id;
  @override
  @JsonKey()
  final String settlement_with_type;
  @override
  @JsonKey()
  final String settlement_type;
  @override
  @JsonKey()
  final String settlement_type_full;
  @override
  @JsonKey()
  final String settlement;
  @override
  @JsonKey()
  final String street_fias_id;
  @override
  @JsonKey()
  final String street_kladr_id;
  @override
  @JsonKey()
  final String street_with_type;
  @override
  @JsonKey()
  final String street_type;
  @override
  @JsonKey()
  final String street_type_full;
  @override
  @JsonKey()
  final String street;
  @override
  @JsonKey()
  final String stead_fias_id;
  @override
  @JsonKey()
  final String stead_cadnum;
  @override
  @JsonKey()
  final String stead_type;
  @override
  @JsonKey()
  final String stead_type_full;
  @override
  @JsonKey()
  final String stead;
  @override
  @JsonKey()
  final String house_fias_id;
  @override
  @JsonKey()
  final String house_kladr_id;
  @override
  @JsonKey()
  final String house_cadnum;
  @override
  @JsonKey()
  final String house_type;
  @override
  @JsonKey()
  final String house_type_full;
  @override
  @JsonKey()
  final String house;
  @override
  @JsonKey()
  final String block_type;
  @override
  @JsonKey()
  final String block_type_full;
  @override
  @JsonKey()
  final String block;
  @override
  @JsonKey()
  final String entrance;
  @override
  @JsonKey()
  final String floor;
  @override
  @JsonKey()
  final String flat_fias_id;
  @override
  @JsonKey()
  final String flat_cadnum;
  @override
  @JsonKey()
  final String flat_type;
  @override
  @JsonKey()
  final String flat_type_full;
  @override
  @JsonKey()
  final String flat;
  @override
  @JsonKey()
  final String flat_area;
  @override
  @JsonKey()
  final String square_meter_price;
  @override
  @JsonKey()
  final String flat_price;
  @override
  @JsonKey()
  final String postal_box;
  @override
  @JsonKey()
  final String fias_id;
  @override
  @JsonKey()
  final String fias_code;
  @override
  @JsonKey()
  final String fias_level;
  @override
  @JsonKey()
  final String fias_actuality_state;
  @override
  @JsonKey()
  final String kladr_id;
  @override
  @JsonKey()
  final String geoname_id;
  @override
  @JsonKey()
  final String capital_marker;
  @override
  @JsonKey()
  final String okato;
  @override
  @JsonKey()
  final String oktmo;
  @override
  @JsonKey()
  final String tax_office;
  @override
  @JsonKey()
  final String tax_office_legal;
  @override
  @JsonKey()
  final String timezone;
  @override
  @JsonKey()
  final String geo_lat;
  @override
  @JsonKey()
  final String geo_lon;
  @override
  @JsonKey()
  final String beltway_hit;
  @override
  @JsonKey()
  final String beltway_distance;
  final List<String> _metro;
  @override
  @JsonKey()
  List<String> get metro {
    if (_metro is EqualUnmodifiableListView) return _metro;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_metro);
  }

  @override
  @JsonKey()
  final String divisions;
  @override
  @JsonKey()
  final String qc_geo;
  @override
  @JsonKey()
  final String qc_complete;
  @override
  @JsonKey()
  final String qc_house;
  final List<String> _history_values;
  @override
  @JsonKey()
  List<String> get history_values {
    if (_history_values is EqualUnmodifiableListView) return _history_values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history_values);
  }

  @override
  @JsonKey()
  final String unparsed_parts;
  @override
  @JsonKey()
  final String source;
  @override
  @JsonKey()
  final String qc;

  @override
  String toString() {
    return 'DataAddress(postal_code: $postal_code, country: $country, country_iso_code: $country_iso_code, federal_district: $federal_district, region_fias_id: $region_fias_id, region_kladr_id: $region_kladr_id, region_iso_code: $region_iso_code, region_with_type: $region_with_type, region_type: $region_type, region_type_full: $region_type_full, region: $region, area_fias_id: $area_fias_id, area_kladr_id: $area_kladr_id, area_with_type: $area_with_type, area_type: $area_type, area_type_full: $area_type_full, area: $area, city_fias_id: $city_fias_id, city_kladr_id: $city_kladr_id, city_with_type: $city_with_type, city_type: $city_type, city_type_full: $city_type_full, city: $city, city_area: $city_area, city_district_fias_id: $city_district_fias_id, city_district_kladr_id: $city_district_kladr_id, city_district_with_type: $city_district_with_type, city_district_type: $city_district_type, city_district_type_full: $city_district_type_full, city_district: $city_district, settlement_fias_id: $settlement_fias_id, settlement_kladr_id: $settlement_kladr_id, settlement_with_type: $settlement_with_type, settlement_type: $settlement_type, settlement_type_full: $settlement_type_full, settlement: $settlement, street_fias_id: $street_fias_id, street_kladr_id: $street_kladr_id, street_with_type: $street_with_type, street_type: $street_type, street_type_full: $street_type_full, street: $street, stead_fias_id: $stead_fias_id, stead_cadnum: $stead_cadnum, stead_type: $stead_type, stead_type_full: $stead_type_full, stead: $stead, house_fias_id: $house_fias_id, house_kladr_id: $house_kladr_id, house_cadnum: $house_cadnum, house_type: $house_type, house_type_full: $house_type_full, house: $house, block_type: $block_type, block_type_full: $block_type_full, block: $block, entrance: $entrance, floor: $floor, flat_fias_id: $flat_fias_id, flat_cadnum: $flat_cadnum, flat_type: $flat_type, flat_type_full: $flat_type_full, flat: $flat, flat_area: $flat_area, square_meter_price: $square_meter_price, flat_price: $flat_price, postal_box: $postal_box, fias_id: $fias_id, fias_code: $fias_code, fias_level: $fias_level, fias_actuality_state: $fias_actuality_state, kladr_id: $kladr_id, geoname_id: $geoname_id, capital_marker: $capital_marker, okato: $okato, oktmo: $oktmo, tax_office: $tax_office, tax_office_legal: $tax_office_legal, timezone: $timezone, geo_lat: $geo_lat, geo_lon: $geo_lon, beltway_hit: $beltway_hit, beltway_distance: $beltway_distance, metro: $metro, divisions: $divisions, qc_geo: $qc_geo, qc_complete: $qc_complete, qc_house: $qc_house, history_values: $history_values, unparsed_parts: $unparsed_parts, source: $source, qc: $qc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataAddress &&
            (identical(other.postal_code, postal_code) ||
                other.postal_code == postal_code) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.country_iso_code, country_iso_code) ||
                other.country_iso_code == country_iso_code) &&
            (identical(other.federal_district, federal_district) ||
                other.federal_district == federal_district) &&
            (identical(other.region_fias_id, region_fias_id) ||
                other.region_fias_id == region_fias_id) &&
            (identical(other.region_kladr_id, region_kladr_id) ||
                other.region_kladr_id == region_kladr_id) &&
            (identical(other.region_iso_code, region_iso_code) ||
                other.region_iso_code == region_iso_code) &&
            (identical(other.region_with_type, region_with_type) ||
                other.region_with_type == region_with_type) &&
            (identical(other.region_type, region_type) ||
                other.region_type == region_type) &&
            (identical(other.region_type_full, region_type_full) ||
                other.region_type_full == region_type_full) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.area_fias_id, area_fias_id) ||
                other.area_fias_id == area_fias_id) &&
            (identical(other.area_kladr_id, area_kladr_id) ||
                other.area_kladr_id == area_kladr_id) &&
            (identical(other.area_with_type, area_with_type) ||
                other.area_with_type == area_with_type) &&
            (identical(other.area_type, area_type) ||
                other.area_type == area_type) &&
            (identical(other.area_type_full, area_type_full) ||
                other.area_type_full == area_type_full) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.city_fias_id, city_fias_id) ||
                other.city_fias_id == city_fias_id) &&
            (identical(other.city_kladr_id, city_kladr_id) ||
                other.city_kladr_id == city_kladr_id) &&
            (identical(other.city_with_type, city_with_type) ||
                other.city_with_type == city_with_type) &&
            (identical(other.city_type, city_type) ||
                other.city_type == city_type) &&
            (identical(other.city_type_full, city_type_full) ||
                other.city_type_full == city_type_full) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.city_area, city_area) ||
                other.city_area == city_area) &&
            (identical(other.city_district_fias_id, city_district_fias_id) ||
                other.city_district_fias_id == city_district_fias_id) &&
            (identical(other.city_district_kladr_id, city_district_kladr_id) ||
                other.city_district_kladr_id == city_district_kladr_id) &&
            (identical(other.city_district_with_type, city_district_with_type) ||
                other.city_district_with_type == city_district_with_type) &&
            (identical(other.city_district_type, city_district_type) ||
                other.city_district_type == city_district_type) &&
            (identical(other.city_district_type_full, city_district_type_full) ||
                other.city_district_type_full == city_district_type_full) &&
            (identical(other.city_district, city_district) ||
                other.city_district == city_district) &&
            (identical(other.settlement_fias_id, settlement_fias_id) ||
                other.settlement_fias_id == settlement_fias_id) &&
            (identical(other.settlement_kladr_id, settlement_kladr_id) ||
                other.settlement_kladr_id == settlement_kladr_id) &&
            (identical(other.settlement_with_type, settlement_with_type) ||
                other.settlement_with_type == settlement_with_type) &&
            (identical(other.settlement_type, settlement_type) ||
                other.settlement_type == settlement_type) &&
            (identical(other.settlement_type_full, settlement_type_full) ||
                other.settlement_type_full == settlement_type_full) &&
            (identical(other.settlement, settlement) ||
                other.settlement == settlement) &&
            (identical(other.street_fias_id, street_fias_id) ||
                other.street_fias_id == street_fias_id) &&
            (identical(other.street_kladr_id, street_kladr_id) ||
                other.street_kladr_id == street_kladr_id) &&
            (identical(other.street_with_type, street_with_type) ||
                other.street_with_type == street_with_type) &&
            (identical(other.street_type, street_type) ||
                other.street_type == street_type) &&
            (identical(other.street_type_full, street_type_full) ||
                other.street_type_full == street_type_full) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.stead_fias_id, stead_fias_id) ||
                other.stead_fias_id == stead_fias_id) &&
            (identical(other.stead_cadnum, stead_cadnum) ||
                other.stead_cadnum == stead_cadnum) &&
            (identical(other.stead_type, stead_type) || other.stead_type == stead_type) &&
            (identical(other.stead_type_full, stead_type_full) || other.stead_type_full == stead_type_full) &&
            (identical(other.stead, stead) || other.stead == stead) &&
            (identical(other.house_fias_id, house_fias_id) || other.house_fias_id == house_fias_id) &&
            (identical(other.house_kladr_id, house_kladr_id) || other.house_kladr_id == house_kladr_id) &&
            (identical(other.house_cadnum, house_cadnum) || other.house_cadnum == house_cadnum) &&
            (identical(other.house_type, house_type) || other.house_type == house_type) &&
            (identical(other.house_type_full, house_type_full) || other.house_type_full == house_type_full) &&
            (identical(other.house, house) || other.house == house) &&
            (identical(other.block_type, block_type) || other.block_type == block_type) &&
            (identical(other.block_type_full, block_type_full) || other.block_type_full == block_type_full) &&
            (identical(other.block, block) || other.block == block) &&
            (identical(other.entrance, entrance) || other.entrance == entrance) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.flat_fias_id, flat_fias_id) || other.flat_fias_id == flat_fias_id) &&
            (identical(other.flat_cadnum, flat_cadnum) || other.flat_cadnum == flat_cadnum) &&
            (identical(other.flat_type, flat_type) || other.flat_type == flat_type) &&
            (identical(other.flat_type_full, flat_type_full) || other.flat_type_full == flat_type_full) &&
            (identical(other.flat, flat) || other.flat == flat) &&
            (identical(other.flat_area, flat_area) || other.flat_area == flat_area) &&
            (identical(other.square_meter_price, square_meter_price) || other.square_meter_price == square_meter_price) &&
            (identical(other.flat_price, flat_price) || other.flat_price == flat_price) &&
            (identical(other.postal_box, postal_box) || other.postal_box == postal_box) &&
            (identical(other.fias_id, fias_id) || other.fias_id == fias_id) &&
            (identical(other.fias_code, fias_code) || other.fias_code == fias_code) &&
            (identical(other.fias_level, fias_level) || other.fias_level == fias_level) &&
            (identical(other.fias_actuality_state, fias_actuality_state) || other.fias_actuality_state == fias_actuality_state) &&
            (identical(other.kladr_id, kladr_id) || other.kladr_id == kladr_id) &&
            (identical(other.geoname_id, geoname_id) || other.geoname_id == geoname_id) &&
            (identical(other.capital_marker, capital_marker) || other.capital_marker == capital_marker) &&
            (identical(other.okato, okato) || other.okato == okato) &&
            (identical(other.oktmo, oktmo) || other.oktmo == oktmo) &&
            (identical(other.tax_office, tax_office) || other.tax_office == tax_office) &&
            (identical(other.tax_office_legal, tax_office_legal) || other.tax_office_legal == tax_office_legal) &&
            (identical(other.timezone, timezone) || other.timezone == timezone) &&
            (identical(other.geo_lat, geo_lat) || other.geo_lat == geo_lat) &&
            (identical(other.geo_lon, geo_lon) || other.geo_lon == geo_lon) &&
            (identical(other.beltway_hit, beltway_hit) || other.beltway_hit == beltway_hit) &&
            (identical(other.beltway_distance, beltway_distance) || other.beltway_distance == beltway_distance) &&
            const DeepCollectionEquality().equals(other._metro, _metro) &&
            (identical(other.divisions, divisions) || other.divisions == divisions) &&
            (identical(other.qc_geo, qc_geo) || other.qc_geo == qc_geo) &&
            (identical(other.qc_complete, qc_complete) || other.qc_complete == qc_complete) &&
            (identical(other.qc_house, qc_house) || other.qc_house == qc_house) &&
            const DeepCollectionEquality().equals(other._history_values, _history_values) &&
            (identical(other.unparsed_parts, unparsed_parts) || other.unparsed_parts == unparsed_parts) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.qc, qc) || other.qc == qc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        postal_code,
        country,
        country_iso_code,
        federal_district,
        region_fias_id,
        region_kladr_id,
        region_iso_code,
        region_with_type,
        region_type,
        region_type_full,
        region,
        area_fias_id,
        area_kladr_id,
        area_with_type,
        area_type,
        area_type_full,
        area,
        city_fias_id,
        city_kladr_id,
        city_with_type,
        city_type,
        city_type_full,
        city,
        city_area,
        city_district_fias_id,
        city_district_kladr_id,
        city_district_with_type,
        city_district_type,
        city_district_type_full,
        city_district,
        settlement_fias_id,
        settlement_kladr_id,
        settlement_with_type,
        settlement_type,
        settlement_type_full,
        settlement,
        street_fias_id,
        street_kladr_id,
        street_with_type,
        street_type,
        street_type_full,
        street,
        stead_fias_id,
        stead_cadnum,
        stead_type,
        stead_type_full,
        stead,
        house_fias_id,
        house_kladr_id,
        house_cadnum,
        house_type,
        house_type_full,
        house,
        block_type,
        block_type_full,
        block,
        entrance,
        floor,
        flat_fias_id,
        flat_cadnum,
        flat_type,
        flat_type_full,
        flat,
        flat_area,
        square_meter_price,
        flat_price,
        postal_box,
        fias_id,
        fias_code,
        fias_level,
        fias_actuality_state,
        kladr_id,
        geoname_id,
        capital_marker,
        okato,
        oktmo,
        tax_office,
        tax_office_legal,
        timezone,
        geo_lat,
        geo_lon,
        beltway_hit,
        beltway_distance,
        const DeepCollectionEquality().hash(_metro),
        divisions,
        qc_geo,
        qc_complete,
        qc_house,
        const DeepCollectionEquality().hash(_history_values),
        unparsed_parts,
        source,
        qc
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataAddressCopyWith<_$_DataAddress> get copyWith =>
      __$$_DataAddressCopyWithImpl<_$_DataAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataAddressToJson(
      this,
    );
  }
}

abstract class _DataAddress implements DataAddress {
  const factory _DataAddress(
      {final String postal_code,
      final String country,
      final String country_iso_code,
      final String federal_district,
      final String region_fias_id,
      final String region_kladr_id,
      final String region_iso_code,
      final String region_with_type,
      final String region_type,
      final String region_type_full,
      final String region,
      final String area_fias_id,
      final String area_kladr_id,
      final String area_with_type,
      final String area_type,
      final String area_type_full,
      final String area,
      final String city_fias_id,
      final String city_kladr_id,
      final String city_with_type,
      final String city_type,
      final String city_type_full,
      final String city,
      final String city_area,
      final String city_district_fias_id,
      final String city_district_kladr_id,
      final String city_district_with_type,
      final String city_district_type,
      final String city_district_type_full,
      final String city_district,
      final String settlement_fias_id,
      final String settlement_kladr_id,
      final String settlement_with_type,
      final String settlement_type,
      final String settlement_type_full,
      final String settlement,
      final String street_fias_id,
      final String street_kladr_id,
      final String street_with_type,
      final String street_type,
      final String street_type_full,
      final String street,
      final String stead_fias_id,
      final String stead_cadnum,
      final String stead_type,
      final String stead_type_full,
      final String stead,
      final String house_fias_id,
      final String house_kladr_id,
      final String house_cadnum,
      final String house_type,
      final String house_type_full,
      final String house,
      final String block_type,
      final String block_type_full,
      final String block,
      final String entrance,
      final String floor,
      final String flat_fias_id,
      final String flat_cadnum,
      final String flat_type,
      final String flat_type_full,
      final String flat,
      final String flat_area,
      final String square_meter_price,
      final String flat_price,
      final String postal_box,
      final String fias_id,
      final String fias_code,
      final String fias_level,
      final String fias_actuality_state,
      final String kladr_id,
      final String geoname_id,
      final String capital_marker,
      final String okato,
      final String oktmo,
      final String tax_office,
      final String tax_office_legal,
      final String timezone,
      final String geo_lat,
      final String geo_lon,
      final String beltway_hit,
      final String beltway_distance,
      final List<String> metro,
      final String divisions,
      final String qc_geo,
      final String qc_complete,
      final String qc_house,
      final List<String> history_values,
      final String unparsed_parts,
      final String source,
      final String qc}) = _$_DataAddress;

  factory _DataAddress.fromJson(Map<String, dynamic> json) =
      _$_DataAddress.fromJson;

  @override
  String get postal_code;
  @override
  String get country;
  @override
  String get country_iso_code;
  @override
  String get federal_district;
  @override
  String get region_fias_id;
  @override
  String get region_kladr_id;
  @override
  String get region_iso_code;
  @override
  String get region_with_type;
  @override
  String get region_type;
  @override
  String get region_type_full;
  @override
  String get region;
  @override
  String get area_fias_id;
  @override
  String get area_kladr_id;
  @override
  String get area_with_type;
  @override
  String get area_type;
  @override
  String get area_type_full;
  @override
  String get area;
  @override
  String get city_fias_id;
  @override
  String get city_kladr_id;
  @override
  String get city_with_type;
  @override
  String get city_type;
  @override
  String get city_type_full;
  @override
  String get city;
  @override
  String get city_area;
  @override
  String get city_district_fias_id;
  @override
  String get city_district_kladr_id;
  @override
  String get city_district_with_type;
  @override
  String get city_district_type;
  @override
  String get city_district_type_full;
  @override
  String get city_district;
  @override
  String get settlement_fias_id;
  @override
  String get settlement_kladr_id;
  @override
  String get settlement_with_type;
  @override
  String get settlement_type;
  @override
  String get settlement_type_full;
  @override
  String get settlement;
  @override
  String get street_fias_id;
  @override
  String get street_kladr_id;
  @override
  String get street_with_type;
  @override
  String get street_type;
  @override
  String get street_type_full;
  @override
  String get street;
  @override
  String get stead_fias_id;
  @override
  String get stead_cadnum;
  @override
  String get stead_type;
  @override
  String get stead_type_full;
  @override
  String get stead;
  @override
  String get house_fias_id;
  @override
  String get house_kladr_id;
  @override
  String get house_cadnum;
  @override
  String get house_type;
  @override
  String get house_type_full;
  @override
  String get house;
  @override
  String get block_type;
  @override
  String get block_type_full;
  @override
  String get block;
  @override
  String get entrance;
  @override
  String get floor;
  @override
  String get flat_fias_id;
  @override
  String get flat_cadnum;
  @override
  String get flat_type;
  @override
  String get flat_type_full;
  @override
  String get flat;
  @override
  String get flat_area;
  @override
  String get square_meter_price;
  @override
  String get flat_price;
  @override
  String get postal_box;
  @override
  String get fias_id;
  @override
  String get fias_code;
  @override
  String get fias_level;
  @override
  String get fias_actuality_state;
  @override
  String get kladr_id;
  @override
  String get geoname_id;
  @override
  String get capital_marker;
  @override
  String get okato;
  @override
  String get oktmo;
  @override
  String get tax_office;
  @override
  String get tax_office_legal;
  @override
  String get timezone;
  @override
  String get geo_lat;
  @override
  String get geo_lon;
  @override
  String get beltway_hit;
  @override
  String get beltway_distance;
  @override
  List<String> get metro;
  @override
  String get divisions;
  @override
  String get qc_geo;
  @override
  String get qc_complete;
  @override
  String get qc_house;
  @override
  List<String> get history_values;
  @override
  String get unparsed_parts;
  @override
  String get source;
  @override
  String get qc;
  @override
  @JsonKey(ignore: true)
  _$$_DataAddressCopyWith<_$_DataAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
