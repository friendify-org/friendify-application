import 'package:application/bloc/users/main.dart';
import 'package:application/bloc/users/state.dart';
import 'package:application/screens/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UsersBloc(UsersState()),
        ),
      ],
      child: MaterialApp(
        title: 'Friendify',
        routes: routeBuilder(),
        initialRoute: RouteNames.splash,
        theme: ThemeData(
          brightness: Brightness.light,
          /* light theme settings */
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          /* dark theme settings */
        ),
        themeMode: ThemeMode.dark,
        /* ThemeMode.system to follow system theme, 
                 ThemeMode.light for light theme, 
                 ThemeMode.dark for dark theme
              */
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
