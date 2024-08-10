import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/components/base/app_types.dart';
import 'package:trust_pay_polaris/components/buttons.dart';
import 'package:trust_pay_polaris/components/data_cards.dart';
import 'package:trust_pay_polaris/components/data_cards/user_input.dart';
import 'package:trust_pay_polaris/components/form_inputs.dart';
import 'package:trust_pay_polaris/components/indicators.dart';
import 'package:trust_pay_polaris/components/list_items.dart';
import 'package:trust_pay_polaris/components/pop_ups.dart';
import 'package:trust_pay_polaris/components/popups/accept_transaction_popup.dart';
import 'package:trust_pay_polaris/components/popups/confirmation_popup.dart';
import 'package:trust_pay_polaris/components/popups/flows/payment_flow_popup.dart';
import 'package:trust_pay_polaris/components/popups/invalid_transaction_popup.dart';
import 'package:trust_pay_polaris/components/popups/reject_transaction_popup.dart';
import 'package:trust_pay_polaris/components/popups/rejection_feedback_popup.dart';
import 'package:trust_pay_polaris/components/style/image_manager.dart';
import 'package:trust_pay_polaris/components/tiles.dart';



class Catalogue extends StatelessWidget {
  const Catalogue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // FormInputs(),
              // const SizedBox(height: 64),
              //
              // const Buttons(),
              // const SizedBox(height: 64),

              // DataCards(),
              // SizedBox(height: 64),
              //
              // Tiles(),
              // SizedBox(height: 32),
              //
              // Indicators(),
              // SizedBox(height: 32),
              //
              // ListItems(),
              // SizedBox(height: 32),

              // const PopUps(),
              // const SizedBox(height: 32),

              ConfirmationPopup(
                width: 350,
                transactionTitle: "Sales with Sarah",
                action: "Verification",
                state: ConfirmationPopupState.accepted,
                onClick: (){},
              ),
              const SizedBox(height: 32),

              PaymentFlowPopup(
                  width: 350,
                  amount: 'NGN 100,000'
              ),
              const SizedBox(height: 32),


            ],
          ),
        ),
      ),
    );
  }
}