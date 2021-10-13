import 'package:dark_theme_implementation/constants/colors.dart';
import 'package:dark_theme_implementation/provider/dark_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //themeChange is a final instance of the DarkThemeProvider
    final themeChange = Provider.of<DarkThemeProvider>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
                'When switching you can notice how \nthe text color and background are changed \nbased on the Theme data we customised'),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              thickness: 1,
            ),
            ListTileSwitch(
              value: themeChange.darkTheme,
              leading: const Icon(Icons.dark_mode_rounded),
              onChanged: (value) {
                setState(() {
                  themeChange.darkTheme = value;
                });
              },
              visualDensity: VisualDensity.comfortable,
              switchType: SwitchType.cupertino,
              switchActiveColor: ColorsConsts
                  .lightblue, //using the class ColorsConsts from the colors.dart file
              title: const Text('Dark theme'),
            ),
            const Divider(
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
