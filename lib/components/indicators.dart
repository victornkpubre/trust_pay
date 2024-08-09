import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/components/indicators/form_steps_indicator.dart';
import 'package:trust_pay_polaris/components/indicators/obligation_progress_indicator.dart';
import 'package:trust_pay_polaris/components/indicators/payee_payment_indicator.dart';


class Indicators extends StatelessWidget {
  const Indicators({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        children: [
          Text("Indicators", style: TextStyle(fontSize: 32)),
          const SizedBox(height: 32),
          
          FormStepsIndicator(
            steps: 3, 
            fontSize: 12,
            width: 200,
          ),
          const SizedBox(height: 32),

          ObligationProgressIndicator(
            fontSize: 14, 
            width: double.infinity, 
            obligationsFulfilled: 3, 
            obligationsTotal: 5, 
            paymentsFulfilled: 2, 
          ),
          SizedBox(height: 32),

          PayeePaymentIndicator(
            payee: "The Place",
            paymentFulfilled: 3, 
            paymentsTotal: 6,
            fontSize: 14, 
            width: 260
          ),
          SizedBox(height: 32),
         
        ],
      );
  }
}