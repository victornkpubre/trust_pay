
import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/components/base/app_types.dart';
import 'package:trust_pay_polaris/components/data_cards/user_input.dart';
import 'package:trust_pay_polaris/components/popups/accept_transaction_popup.dart';
import 'package:trust_pay_polaris/components/popups/confirmation_popup.dart';
import 'package:trust_pay_polaris/components/popups/invalid_transaction_popup.dart';
import 'package:trust_pay_polaris/components/popups/reject_transaction_popup.dart';
import 'package:trust_pay_polaris/components/popups/rejection_feedback_popup.dart';
import 'package:trust_pay_polaris/components/style/image_manager.dart';

class PopUps extends StatelessWidget {
  const PopUps({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AcceptTransactionPopup(
          width: MediaQuery.of(context).size.width,
          transactionTitle: "Resturant Bills",
          type: TransactionType.secureSales,
          onCancel: (){},
          onComplete: (){},
          sender: UserInput(
              username: "johnson",
              image: ProfileIconAssets.avatar
          ),
          receiver: UserInput(
              username: "noname",
              image: ProfileIconAssets.avatar
          ),
        ),
        const SizedBox(height: 32),

        RejectTransactionPopup(
          feedBackController: TextEditingController(text: ""),
          width: MediaQuery.of(context).size.width,
          transactionTitle: "Resturant Bills",
          type: TransactionType.secureSales,
          onCancel: (){},
          onComplete: (){},
          sender: UserInput(
              username: "johnson",
              image: ProfileIconAssets.avatar
          ),
          receiver: UserInput(
              username: "noname",
              image: ProfileIconAssets.avatar
          ),
        ),
        const SizedBox(height: 32),

        ConfirmationPopup(
          width: 350,
          transactionTitle: "Sales with Sarah",
          action: "Verification",
          state: ConfirmationPopupState.accepted,
          onClick: (){},
        ),
        const SizedBox(height: 32),

        ConfirmationPopup(
          width: 350,
          transactionTitle: "Sales with Sarah",
          action: "Verification",
          state: ConfirmationPopupState.completed,
          onClick: (){

          },
        ),
        const SizedBox(height: 32),

        ConfirmationPopup(
          width: 350,
          transactionTitle: "Sales with Sarah",
          action: "Verification",
          state: ConfirmationPopupState.rejected,
          onClick: (){

          },
        ),
        const SizedBox(height: 32),

        InvalidTransactionPopup(
            width: 350,
            message: "The total contribution does not match the total for the transaction. Change the total or the contribution",
            onClick: () {

            }
        ),
        const SizedBox(height: 32),

        RejectionFeedbackPopup(
          width: 350,
          username: "Sarah Doe",
          message: "I don't agree with the split. I don't think we should split the bill equally. I don't think it is fair",
          onClick: () {

          },
        )
      ],
    );
  }
}
