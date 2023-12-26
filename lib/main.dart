import 'package:festa_machine/core/colors_size_text.dart';
import 'package:festa_machine/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: const AppBarTheme(
              backgroundColor: kblack,
              centerTitle: true,
              elevation: 0,
              toolbarHeight: 100,
              titleTextStyle:
                  TextStyle(fontWeight: FontWeight.w500, fontSize: 40)),
          tabBarTheme: const TabBarTheme(),
          useMaterial3: true,
        ),
        home: const ScreenHome());
  }
}
