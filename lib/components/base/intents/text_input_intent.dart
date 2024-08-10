
import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/components/base/arguments.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';
import 'package:trust_pay_polaris/components/style/text.dart';

class TextInputIntent extends StatelessWidget {
  late final String value;
  late final String title;
  String? leading;
  String? trailing;

  TextInputIntent({super.key});

  @override
  Widget build(BuildContext context) {
    final TextInputIntentArgument args = ModalRoute.of(context)!.settings.arguments as TextInputIntentArgument;
    value = args.value;

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
