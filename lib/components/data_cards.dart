import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/components/data_cards/account_card.dart';
import 'package:trust_pay_polaris/components/data_cards/obligation_card.dart';
import 'package:trust_pay_polaris/components/data_cards/seller_card.dart';
import 'package:trust_pay_polaris/components/data_cards/transaction_alert_card.dart';
import 'package:trust_pay_polaris/components/data_cards/transaction_details_card.dart';
import 'package:trust_pay_polaris/components/data_cards/transaction_stats_card.dart';
import 'package:trust_pay_polaris/components/data_cards/user_input.dart';
import 'package:trust_pay_polaris/components/data_cards/user_transaction_details_card.dart';
import 'package:trust_pay_polaris/components/data_cards/user_transaction_info_card.dart';
import 'package:trust_pay_polaris/components/base/app_types.dart';
import 'package:trust_pay_polaris/components/style/image_manager.dart';

class DataCards extends StatelessWidget {
  const DataCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Data Cards", style: TextStyle(fontSize: 32)),
        const SizedBox(height: 32),
        
        AccountCard(
          width: 350,
          height: 184,
          solid: false,
          balance: "50,000"
        ),
        const SizedBox(height: 64),
        
        AccountCard(
          width: 350,
          height: 184,
          solid: true,
          balance: "50,000"
        ),
        const SizedBox(height: 64),

        TransactionAlertCard(
          width: 350,
          height: 184,
          username: 'Victor Nelson',
          type: TransactionType.secureSales,
          userImage: ProfileIconAssets.avatar,
          amount: "250,000",
          status: TransactionStatus.pending, 
          date: DateTime.now(),
        ),
        const SizedBox(height: 64),

        const SellerDataCard(
          username: "Sarah Doe",
          accountNumber: '#7672882',
          trades: '25',
          completionRate: '99%',
          expanded: true,
          width: 335,
        ),
        const SizedBox(height: 64),

        const SellerDataCard(
          username: "Sarah Doe",
          accountNumber: '#7672882',
          trades: '25',
          completionRate: '99%',
          expanded: false,
          width: 335,
        ),
        const SizedBox(height: 64),

        const TransactionStatsCard(
          width: 350,
          transactions: 22,
          successful: 12,
          pending: 10,
          type: TransactionType.betsAndWager,
          percentageComplete: "20%",
        ),
        const SizedBox(height: 64),

        const ObligationCard(
          amount: "100,000",
          title: "Aso-ebi Outfit",
          description: '25 yards of Ghanian fabric material to be delivered with 10 yards of thick and original Gele material.',
          width: 355,
        ),
        const SizedBox(height: 32),

        TransactionDetailsCard(
          title: "110k take 1m",
          width: 350,
          date: DateTime.now(),
          type: TransactionType.groupGoals,
          status: TransactionStatus.accepted,
          amount: "100,000",
          members: [
            UserInput(
              image: ProfileIconAssets.avatar, 
              username: "Sarah Doe", 
              account: "#4234564", 
              totalTransaction: 25, 
              completionRate: 89
            ),
            UserInput(
              image: ProfileIconAssets.avatar, 
              username: "Sarah Doe", 
              account: "#4234564", 
              totalTransaction: 25, 
              completionRate: 89
            ),
            UserInput(
              image: ProfileIconAssets.avatar, 
              username: "Sarah Doe", 
              account: "#4234564", 
              totalTransaction: 25, 
              completionRate: 89
            )
          ],
        ),
        const SizedBox(height: 32),

        const UserTransactionInfoCard (
          width: 335,
          percentageComplete: "100%",
          type: TransactionType.secureSales,
          amount: 12,
          username: "Victor Nelson",
          profileImage: ProfileIconAssets.avatar,
        ),
        const SizedBox(height: 32),

        UserTransactionDetailsCard(
          width: 335,
          title: "110k take 1m",
          createdAt: DateTime.now(),
          nextHarvestDate: DateTime.now(),
          type: TransactionType.groupGoals,
          status: TransactionStatus.accepted,
          percentageComplete: "78%",
          amount: "1,000,000",
          members: [
            UserInput(
              image: ProfileIconAssets.avatar, 
              username: "Sarah Doe", 
              account: "#4234564", 
              totalTransaction: 25, 
              completionRate: 89
            ),
            UserInput(
              image: ProfileIconAssets.avatar, 
              username: "Sarah Doe", 
              account: "#4234564", 
              totalTransaction: 25, 
              completionRate: 89
            ),
            UserInput(
              image: ProfileIconAssets.avatar, 
              username: "Sarah Doe", 
              account: "#4234564", 
              totalTransaction: 25, 
              completionRate: 89
            )
          ],
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}