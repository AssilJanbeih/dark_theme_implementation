import 'dart:ui';

import 'package:dark_theme_implementation/constants/colors.dart';
import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      visualDensity: VisualDensity
          .standard, //The density value for specifying the compactness of various UI components , the default visual density is 0
      //primarySwatch:
      primaryColor: isDarkTheme ? Colors.black : Colors.grey.shade300,
      //primaryColorBrightness: ,
      //primaryColorLight:,
      //primaryColorDark:,
      //canvasColor:,
      //shadowColor:,
      scaffoldBackgroundColor:
          isDarkTheme ? ColorsConsts.blacklight : ColorsConsts.white,
      //bottomAppBarColor:,
      //cardColor:,
      dividerColor: isDarkTheme ? ColorsConsts.whitedark : Colors.grey,
      //focusColor:,
      hoverColor: ColorsConsts.lightblue,
      highlightColor: ColorsConsts.lightblue,
      splashColor: ColorsConsts.darkblue,
      //splashFactory:,
      //selectedRowColor:,
      //unselectedWidgetColor:,
      //disabledColor:,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
            colorScheme: isDarkTheme
                ? const ColorScheme.dark()
                : const ColorScheme.light(),
            buttonColor: ColorsConsts.darkblue,
          ),
      //toggleButtonsTheme:,
      //secondaryHeaderColor:,
      backgroundColor:
          isDarkTheme ? ColorsConsts.blacklighter : ColorsConsts.whitedark,
      dialogBackgroundColor:
          isDarkTheme ? ColorsConsts.blacklighter : ColorsConsts.whitedark,
      //indicatorColor:,
      hintColor: ColorsConsts.whitedark,
      errorColor: Colors.red,
      //toggleableActiveColor:,
      fontFamily: 'OpenSans',
      //textTheme:,
      //primaryTextTheme:,
      //inputDecorationTheme:,
      //iconTheme:, /*an icon theme that contrasts with the card and canvas colors.*/
      //primaryIconTheme:,
      //sliderTheme:,
      //tabBarTheme:,
      //tooltipTheme:,
      //cardTheme:,
      //chipTheme:,
      //platform:,
      //materialTapTargetSize:,
      //applyElevationOverlayColor:,
      //pageTransitionsTheme:,
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor:
            isDarkTheme ? ColorsConsts.blacklight : ColorsConsts.darkblue,
      ),
      //scrollbarTheme:,
      //bottomAppBarTheme:,
      //colorScheme:,
      //dialogTheme:,
      //floatingActionButtonTheme:,
      //navigationRailTheme:,
      //typography:,
      //cupertinoOverrideTheme:,
      //snackBarTheme:,
      //bottomSheetTheme:,
      //popupMenuTheme:,
      //bannerTheme:,
      //dividerTheme:,
      //buttonBarTheme:,
      //bottomNavigationBarTheme:,
      //timePickerTheme:,
      //textButtonTheme:,
      //elevatedButtonTheme:,
      //outlinedButtonTheme:,
      textSelectionTheme: TextSelectionThemeData(
        selectionColor: isDarkTheme ? Colors.white : Colors.black,
        cursorColor:
            isDarkTheme ? ColorsConsts.whitedark : ColorsConsts.blacklighter,
        selectionHandleColor:
            isDarkTheme ? ColorsConsts.whitedark : ColorsConsts.blacklighter,
      ),
      //dataTableTheme:,
      checkboxTheme: CheckboxThemeData(
        //mouseCursor:,
        fillColor: MaterialStateProperty.all(ColorsConsts.white),
        checkColor: MaterialStateProperty.all(ColorsConsts.darkblue),
        overlayColor: MaterialStateProperty.all(ColorsConsts.whitedark),
        splashRadius: 2,
        //materialTapTargetSize: ,
        visualDensity: VisualDensity.standard,
        //shape:   ,
        //side:,
      ),
      //radioTheme:,
      //switchTheme:,
      //progressIndicatorTheme:,
      //fixTextFieldOutlineLabel:,
      //useTextSelectionTheme:,
    );
  }
}
