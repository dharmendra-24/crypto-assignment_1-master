import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/theme.dart';
import 'package:flutter_application_1/provider/market_provider.dart';
import 'package:flutter_application_1/provider/theme_provider.dart';
import 'package:provider/provider.dart';

import 'pages/home_paged.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<marketProvider>(
              create: (context) => marketProvider()),
          ChangeNotifierProvider<ThemeProvider>(
              create: (context) => ThemeProvider('dark'))
        ],
        child: Consumer<ThemeProvider>(
          builder: (context, themeProvider, child) {
            return MaterialApp(
              title: 'Flutter Demo',
              debugShowCheckedModeBanner: false,
              theme: lightTheme,
              themeMode: themeProvider.themeMode,
              darkTheme: darkTheme,
              home: const HomePage(),
            );
          },
        ));
  }
}
