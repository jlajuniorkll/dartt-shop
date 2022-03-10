import 'package:flutter/material.dart';
import 'package:dartt_shop/consts.dart';

ThemeData theme() {
  return ThemeData(
    appBarTheme: appBarTheme(),
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Fredoka",
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: Color.fromRGBO(59, 72, 89, 1),
    elevation: 3,
    titleTextStyle:
        TextStyle(color: kTextColorAppBar, fontWeight: FontWeight.w700),
    iconTheme: IconThemeData(color: kTextColorIcon),
    centerTitle: true,
  );
}

TextTheme textTheme() {
  return const TextTheme(
      bodyText1: TextStyle(color: kTextColor),
      bodyText2: TextStyle(color: kTextColor));
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: kTextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

ButtonStyle styleButtonPrimary() {
  return ElevatedButton.styleFrom(
    primary: kPrimaryColor,
    onPrimary: kPrimaryColorLight,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  );
}
