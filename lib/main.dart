import 'package:bank_app_ui/app/core/routes/routes.dart';
import 'package:bank_app_ui/app/pages/home_page/home_base_page.dart';
import 'package:bank_app_ui/app/pages/splash_page/splash_page.dart';
import 'package:bank_app_ui/app/pages/transfer_page/transfer_page.dart';
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
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.splashPage: (_) => const SplashPage(),
        Routes.homeBasePage: (_) => const HomeBasePage(),
        Routes.transferPage: (_) => const TransferPage()
      },
    );
  }
}
