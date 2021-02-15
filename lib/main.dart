import 'package:flutter/material.dart';
import 'views/splash/splash_screen.dart';
import 'package:easy_localization/easy_localization.dart';

void main() {
  runApp(
    EasyLocalization(
      child: MyApp(),
      supportedLocales: [Locale('ar', 'SA'),Locale('en', 'US')],
      path: 'assets/lang', // <-- change patch to your
      // fallbackLocale: Locale('en', 'US'),
      saveLocale: true,
      startLocale: Locale('ar','SA'),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: SplashScreen(),
    );
  }
}
