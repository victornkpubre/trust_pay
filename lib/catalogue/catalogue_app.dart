import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/catalogue/catalogue.dart';
import 'package:trust_pay_polaris/components/base/intents/fullscreen_select_intent.dart';

class MyCatalogueApp extends StatelessWidget {
  const MyCatalogueApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trust Pay',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: {
        '/': (context) => const Catalogue(),
        '/selectIntent': (context) => FullscreenSelectIntent(),
      }
    );
  }
}