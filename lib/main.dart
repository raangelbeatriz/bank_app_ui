import 'package:bank_app_ui/app/core/routes/routes.dart';
import 'package:bank_app_ui/app/pages/home_page/home_page.dart';
import 'package:bank_app_ui/app/pages/splash_page/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.splashPage,
      routes: {
        Routes.splashPage: (_) => const SplashPage(),
        Routes.homePage: (_) => const HomePage()
      },
    );
  }
}
