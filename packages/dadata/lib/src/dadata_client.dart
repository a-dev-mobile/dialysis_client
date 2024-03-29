// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_dynamic_calls, parameter_assignments, lines_longer_than_80_chars
import 'dart:convert';
import 'dart:developer';

import 'package:dadata/src/src.dart';
import 'package:http/http.dart' as http;

enum DaDataEnum { name, surname, patronymic, all }

class DaDataClient {
  final String _apiKey;
  DaDataClient({
    required String apiKey,
  }) : _apiKey = apiKey;

  final String _baseUrl = 'suggestions.dadata.ru';

  Future<AddressTooltip> fetchAddressTooltip(String value) async {
    final response = await http.post(
      Uri.https(_baseUrl, '/suggestions/api/4_1/rs/suggest/address'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Token $_apiKey',
      },
      body: jsonEncode({'query': value}),
    );

    return AddressTooltip.fromJson(json.decode(response.body));
  }

  Future<AddressTooltip> fetchCityTips(String value) async {
    final response = await http.post(
      Uri.https(_baseUrl, '/suggestions/api/4_1/rs/suggest/address'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Token $_apiKey',
      },
      body: jsonEncode({
        'query': value,
        // "count": 10,
        'from_bound': {'value': 'city'},
        'to_bound': {'value': 'settlement'},
        // ignore: inference_failure_on_collection_literal
        'locations': [],
        'restrict_value': true
      }),
    );

    return AddressTooltip.fromJson(json.decode(response.body));
  }

  Future<AddressTooltip> fetchStreetTips(String value, String fiasId) async {
    final response = await http.post(
      Uri.https(_baseUrl, '/suggestions/api/4_1/rs/suggest/address'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Token $_apiKey',
      },
      body: jsonEncode({
        'query': value,
        // "count": 10,
        'from_bound': {'value': 'street'},
        'to_bound': {'value': 'street'},
        'locations': [
          {'fias_id': fiasId}
        ],
        'restrict_value': true
      }),
    );

    return AddressTooltip.fromJson(json.decode(response.body));
  }

  Future<AddressTooltip> fetchAddress({
    required String city,
    required String street,
    required String house,
    String body = '',
    String structure = '',
    String apartment = '',
  }) async {
    if (body.isNotEmpty) {
      body = ', к $body';
    }
    if (structure.isNotEmpty) {
      structure = ', ст $structure';
    }

    if (apartment.isNotEmpty) {
      apartment = ', кв $apartment';
    }

    final search = '$city, $street, д $house$body$structure$apartment'
        .replaceAll('  ', ' ')
        .trim();
    log('-- $search');

    final response = await http.post(
      Uri.https(_baseUrl, '/suggestions/api/4_1/rs/suggest/address'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Token $_apiKey',
      },
      body: jsonEncode({
        'query': search,
        'count': 10,
        'from_bound': {'value': ''},
        'to_bound': {'value': ''},
        // ignore: inference_failure_on_collection_literal
        'locations': [],
        'restrict_value': true
      }),
    );

    return AddressTooltip.fromJson(json.decode(response.body));
  }

  Future<List<String>> fetchSimpleTooltip(String value, DaDataEnum type) async {
    final list = <String>[];
    dynamic result;
    switch (type) {
      case DaDataEnum.name:
      case DaDataEnum.patronymic:
      case DaDataEnum.surname:
        result = await fetchFioTooltip(value, type);
        break;
      case DaDataEnum.all:
        break;
    }

    final length = result.suggestions.length;
    if (length == 0) return list;

    for (var i = 0; i < length; i++) {
      list.add(
        result.suggestions[i].value,
      );
    }

    return list;
  }

  Future<FioTooltip> fetchFioTooltip(String value, DaDataEnum type) async {
    final String typeFio;
    switch (type) {
      case DaDataEnum.name:
        typeFio = 'NAME';
        break;
      case DaDataEnum.patronymic:
        typeFio = 'PATRONYMIC';
        break;
      case DaDataEnum.surname:
        typeFio = 'SURNAME';
        break;
      case DaDataEnum.all:
        typeFio = '';
        break;
    }
    final response = await http.post(
      Uri.https(_baseUrl, '/suggestions/api/4_1/rs/suggest/fio'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Token $_apiKey',
      },
      body: typeFio.isEmpty
          ? jsonEncode({
              'query': value,
            })
          : jsonEncode({
              'query': value,
              'parts': [typeFio],
            }),
    );

    return FioTooltip.fromJson(json.decode(response.body));
  }

  Future<PassportCodeName> fetchPassportTooltip(String value) async {
    final response = await http.post(
      Uri.https(_baseUrl, '/suggestions/api/4_1/rs/suggest/fms_unit'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Token $_apiKey',
      },
      body: jsonEncode({
        'query': value,
      }),
    );

    return PassportCodeName.fromJson(json.decode(response.body));
  }
}
