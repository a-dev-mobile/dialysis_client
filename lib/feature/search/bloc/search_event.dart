part of 'search_bloc.dart';



abstract class SearchEvent extends Equatable {
  const SearchEvent();
  @override
  List<Object> get props => [];
}

class SearchEventStarted extends SearchEvent {
  const SearchEventStarted();
}

class SearchEventClean extends SearchEvent {
  const SearchEventClean();
}

class SearchEventFind extends SearchEvent {
  const SearchEventFind({
    required this.l,
    required this.find,
  });

  final String find;

  final AppLocalizations l;

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [find, l];
}
