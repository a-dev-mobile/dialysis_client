// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: lines_longer_than_80_chars

part of 'search_bloc.dart';

enum SearchStatus { initial, loading, success, failure, empty }

extension SearchStatusX on SearchStatus {
  bool get isInitial => this == SearchStatus.initial;
  bool get isLoading => this == SearchStatus.loading;
  bool get isSuccess => this == SearchStatus.success;
  bool get isFailure => this == SearchStatus.failure;

  bool get isEmpty => this == SearchStatus.empty;
}

@immutable
class SearchState {
/* 
init: ''
 */
  final String msgError;

/* init: SearchStatus.initial
type: enum
*/
  final SearchStatus statusSearch;

/* 
init: FormzSubmissionStatus.initial
type: enum
*/
  final FormzSubmissionStatus status;

/* 
init: false
*/
  final bool isValidSearch;

/* 
init: const ValidSearchFormz.pure()
type: data 
*/
  final ValidSearchFormz validSearchFormz;

/* init: const[] */
  final List<String> testName;

// end

  //  ******************************
  // GENERATED CODE BELOW - DO NOT MODIFY
  //  ******************************

  const SearchState({
    this.msgError = '',
    this.statusSearch = SearchStatus.initial,
    this.status = FormzSubmissionStatus.initial,
    this.isValidSearch = false,
    this.validSearchFormz = const ValidSearchFormz.pure(),
    this.testName = const [],
  });
  /*
   factory SearchState.init() => SearchState(
      ); 
  */

  SearchState copyWith({
    String? msgError,
    SearchStatus? statusSearch,
    FormzSubmissionStatus? status,
    bool? isValidSearch,
    ValidSearchFormz? validSearchFormz,
    List<String>? testName,
  }) {
    return SearchState(
      msgError: msgError ?? this.msgError,
      statusSearch: statusSearch ?? this.statusSearch,
      status: status ?? this.status,
      isValidSearch: isValidSearch ?? this.isValidSearch,
      validSearchFormz: validSearchFormz ?? this.validSearchFormz,
      testName: testName ?? this.testName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'msgError': msgError,
      'statusSearch': statusSearch.index,
      'status': status.index,
      'isValidSearch': isValidSearch,
      'validSearchFormz': validSearchFormz.toMap(),
      'testName': testName,
    };
  }

  factory SearchState.fromMap(Map<String, dynamic> map) {
    return SearchState(
      msgError: map['msgError'] as String? ?? '',
      statusSearch: SearchStatus.values[map['statusSearch'] as int],
      status: FormzSubmissionStatus.values[map['status'] as int],
      isValidSearch: map['isValidSearch'] as bool? ?? false,
      validSearchFormz: ValidSearchFormz.fromMap(
        map['validSearchFormz'] as Map<String, dynamic>,
      ),
      testName: (map['testName'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );
  }
  @override
  String toString() {
    return 'SearchState(msgError: $msgError, statusSearch: $statusSearch, status: $status, isValidSearch: $isValidSearch, validSearchFormz: $validSearchFormz, testName: $testName, )';
  }

  String toJson() => json.encode(toMap());

  factory SearchState.fromJson(String source) =>
      SearchState.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchState &&
            (identical(other.msgError, msgError) ||
                other.msgError == msgError) &&
            (identical(other.statusSearch, statusSearch) ||
                other.statusSearch == statusSearch) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isValidSearch, isValidSearch) ||
                other.isValidSearch == isValidSearch) &&
            (identical(other.validSearchFormz, validSearchFormz) ||
                other.validSearchFormz == validSearchFormz) &&
            const DeepCollectionEquality().equals(other.testName, testName));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        msgError,
        statusSearch,
        status,
        isValidSearch,
        validSearchFormz,
        const DeepCollectionEquality().hash(testName),
      ]);
}
