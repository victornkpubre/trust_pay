import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/components/base/arguments.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';
import 'package:trust_pay_polaris/components/style/text.dart';

class FullscreenSelectIntent extends StatelessWidget {
  late final List<String> values;
  late String? currentValue;

  FullscreenSelectIntent({super.key});

  @override
  Widget build(BuildContext context) {
    final FullscreenSelectIntentArgument args = ModalRoute.of(context)!.settings.arguments as FullscreenSelectIntentArgument;
    values = args.values;
    currentValue = args.selectedValue;

    return Scaffold(
      appBar: AppBar(
        title: Container(
          color: AppColor.primary,
          child: Row(
            children: [
              Text("Select A Bank", style: appTextWhite20Bold)
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}

class SelectIntentDummyValues {
    static List<String> values = [
      'Access Bank Plc',
      'Fidelity Bank Plc',
      'First City Monument Bank Limited',
      'First Bank of Nigeria Limited',
      'Guaranty Trust Holding Company Plc',
      'Union Bank of Nigeria Plc',
      'United Bank for Africa Plc',
      'Zenith Bank Plc',
      'Citibank Nigeria Limited',
      'Ecobank Nigeria',
      'Keystone Bank Limited',
      'Optimus Bank Limited',
      'Polaris Bank Limited',
      'Stanbic IBTC Bank Plc',
      'Standard Chartered',
      'Sterling Bank Plc',
      'Titan Trust Bank Limited',
      'Unity Bank Plc',
      'Wema Bank Plc',
    ];
}
