import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/search/search_service.dart';
// import 'package:netflix/infrastructure/search/search_impl.dart';

import '../../domain/search/search_resp/search_resp.dart';
part 'search_bloc.freezed.dart';

part 'search_event.dart';
part 'search_state.dart';
//art 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchService _searchService;
  SearchBloc(this._searchService) : super(SearchState.initial()) {
    // on<Initialize>((event, emit) {});

    on<SearchMovie>((event, emit) async {
      final _result =
          await _searchService.searchMovies(movieQuery: event.movieQuery);

      emit(_result.fold((f) => state.copyWith(isError: true, isLoading: false),
          (r) {
        print('Before log printing');
        log(r.results.toString());

        return state.copyWith(
            isError: false, isLoading: false, searchResultData: r.results);
      }));
    });
  }
}
