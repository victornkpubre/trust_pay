

import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/main/presentation/splash_screen/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trust Pay',
      home: SplashScreen(),
    );
  }
}