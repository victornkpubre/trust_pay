import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/components/inputs/app_date_input.dart';
import 'package:trust_pay_polaris/components/inputs/app_select_input.dart';
import 'package:trust_pay_polaris/components/inputs/app_select_input_secondary.dart';
import 'package:trust_pay_polaris/components/inputs/app_text_input.dart';
import 'package:trust_pay_polaris/components/inputs/app_text_input_secondary.dart';
import 'package:trust_pay_polaris/components/inputs/app_textarea_input.dart';
import 'package:trust_pay_polaris/components/inputs/app_textarea_input_secondary.dart';
import 'package:trust_pay_polaris/components/inputs/app_toggle_input.dart';

class FormInputs extends StatelessWidget {
  FormInputs({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          const Text("FORM INPUTS", style: TextStyle(fontSize: 32)),
          const SizedBox(height: 32),
          
          const AppTextInput(
            title: "Username", 
            hint: "Enter username",
            type: TextInputType.visiblePassword,
          ),
          const SizedBox(height: 32),
          
          const AppSelectInput(title: "Add Seller", hint: "Select User"),
          const SizedBox(height: 32),
          
          const AppDateInput(title: "Expiry Date"),
          const SizedBox(height: 32),
          
          const AppSecondaryTextInput(hint: "Enter Obligation"),
          const SizedBox(height: 32),
          
          AppTextAreaInput(
            hint: "Enter Obligation details",
            controller: controller,
          ),
          const SizedBox(height: 32),
          
          const AppSecondaryTextInput(hint: "Enter Amount", type: TextInputType.number),
          const SizedBox(height: 32),

          const AppSecondarySelectInput(
            hint: "Choose a Bank",
          ),
          const SizedBox(height: 32),

          AppSecondaryTextAreaInput(
            title: "Account Number",
            hint: "00000000000",
            controller: controller,
            isCardNumberInput: true,
            limit: 11,
          ),
          const SizedBox(height: 32),

          AppToggle(
            onToogle: (value) { },
          ),
          const SizedBox(height: 32),
        ],
      );
  }
}