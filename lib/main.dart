import 'package:dark_theme_implementation/constants/theme_data.dart';
import 'package:dark_theme_implementation/home.dart';
import 'package:dark_theme_implementation/provider/dark_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.darkThemePreferences.getTheme();
  }

  @override
  void initState() {
    getCurrentAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      //Build a tree of providers from a list of [SingleChildWidget].
      //for now we have only one which is for the dark theme
      providers: [
        ChangeNotifierProvider(create: (_) {
          return themeChangeProvider;
        })
      ],
      child: Consumer<DarkThemeProvider>(
        builder: (context, themeData, child) {
          return MaterialApp(
            //takes the theme that we customized in the theme_data.dart
            theme: Styles.themeData(themeChangeProvider.darkTheme, context),
            home: const Home(),
          );
        },
      ),
    );
  }
}
