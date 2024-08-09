import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/components/base/app_types.dart';
import 'package:trust_pay_polaris/components/illustrations/transaction_confrimation.dart';
import 'package:trust_pay_polaris/components/style/image_manager.dart';

class FormInputs extends StatelessWidget {
  const FormInputs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        children: [
          Text("ILLUSTRATIONS", style: TextStyle(fontSize: 32)),
          const SizedBox(height: 32),
          
          TransactionConfirmationIllustration(
            senderImage: ProfileIconAssets.avatar,
            receiverImage: ProfileIconAssets.avatar,
            type: TransactionType.secureSales,
            height: 64,
            state: TransactionConfirmationState.rejecting,
            
          )
        ],
      );
  }
}

