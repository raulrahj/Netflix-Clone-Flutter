import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/constants/theme_data.dart';
import 'package:netflix/main_screens/root_screen/widgets/screen_controller.dart';
import 'domain/core/dependency_injection/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<SearchBloc>()),
      ],
      child: MaterialApp(
        title: 'Netflix',
        theme: defaultDark,
        home: ScreenController(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
