import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/domain/debounce/debounce.dart';
import 'package:netflix/main_screens/search/widgets/search_idle.dart';
import 'package:netflix/main_screens/search/widgets/search_result.dart';


class Search extends StatelessWidget {
  Search({Key? key}) : super(key: key);

  final _debouncer = Debouncer(milliseconds: 1 * 1000);

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance!.addPostFrameCallback((_) {
    //   BlocProvider.of<SearchBloc>(context).add( SearchEvent.searchMovie(movieQuery: ApiEndPoints.) );
    // });
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CupertinoSearchTextField(
              backgroundColor: Colors.grey.withOpacity(0.4),
              style: TextStyle(color: Colors.grey[500]),
              onTap: () {
                // setState(() {
                //   screen = const SearchResult();
                // });
              },
              onChanged: (value) {
                if (value.isEmpty) {
                  return;
                }
                _debouncer.run(() {
                  BlocProvider.of<SearchBloc>(context)
                      .add(SearchMovie(movieQuery: value));
                });
              },
            ),
            Expanded(child: BlocBuilder<SearchBloc, SearchState>(
                builder: ((context, state) {
              if (state.searchResultData.isEmpty) {
                return const SearchIdle();
              } else {
                return const SearchResult();
              }
            })))
          ],
        ),
      ),
    );
  }
}
