import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/catalogue/catalogue.dart';

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
      home: const Catalogue(),
    );
  }
}