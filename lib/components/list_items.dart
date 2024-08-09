import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/components/base/app_types.dart';
import 'package:trust_pay_polaris/components/list_iems/add_user_item.dart';
import 'package:trust_pay_polaris/components/list_iems/notification_item.dart';
import 'package:trust_pay_polaris/components/list_iems/obligation_list_item.dart';
import 'package:trust_pay_polaris/components/list_iems/profile_item.dart';
import 'package:trust_pay_polaris/components/list_iems/transaction_obligation_item.dart';
import 'package:trust_pay_polaris/components/style/image_manager.dart';


class ListItems extends StatelessWidget {
  const ListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Text("List Items", style: TextStyle(fontSize: 32)),
          const SizedBox(height: 32),
          
          NotificationItem(
            username: "username", 
            amount: "100,000",
            image: ProfileIconAssets.avatar,  
            transaction: TransactionObligationItemInput(
              status: TransactionStatus.pending,
              type: TransactionType.betsAndWager,
              createdAt: DateTime(2024, 6, 22, 19, 0)
            ),
          ),
          SizedBox(height: 32),
          NotificationItem(
            username: "username", 
            amount: "100,000",
            image: ProfileIconAssets.avatar,  
            transaction: TransactionObligationItemInput(
              status: TransactionStatus.pending,
              type: TransactionType.billSplitter,
              createdAt: DateTime(2024, 6, 22, 19, 0)
            ),
          ),
          SizedBox(height: 32),
          NotificationItem(
            username: "username", 
            amount: "100,000",
            image: ProfileIconAssets.avatar,  
            transaction: TransactionObligationItemInput(
              status: TransactionStatus.pending,
              type: TransactionType.groupGoals,
              createdAt: DateTime(2024, 6, 22, 19, 0)
            ),
          ),
          SizedBox(height: 32),
          NotificationItem(
            username: "username", 
            amount: "100,000",
            image: ProfileIconAssets.avatar,  
            transaction: TransactionObligationItemInput(
              status: TransactionStatus.pending,
              type: TransactionType.moneyPool,
              createdAt: DateTime(2024, 6, 22, 19, 0)
            ),
          ),
          SizedBox(height: 32),
          NotificationItem(
            username: "username", 
            amount: "100,000",
            image: ProfileIconAssets.avatar,  
            transaction: TransactionObligationItemInput(
              status: TransactionStatus.pending,
              type: TransactionType.secureSales,
              createdAt: DateTime(2024, 6, 22, 19, 0)
            ),
          ),
          SizedBox(height: 32),

          TransactionObligationItem (
            amount: "100,000", 
            title: 'Chelsea wins Man U', 
            date: DateTime.now(), 
            obligationStatus: ObligationStatus.pending, 
            transaction: TransactionObligationItemInput(
              status: TransactionStatus.pending, 
              type: TransactionType.secureSales, 
              createdAt: DateTime(2024, 6, 22, 19, 0) 
            ),
          ),
          const SizedBox(height: 8),

          TransactionObligationItem (
            amount: "100,000", 
            title: 'Chelsea wins Man U', 
            date: DateTime.now(), 
            obligationStatus: ObligationStatus.fulfilled, 
            transaction: TransactionObligationItemInput(
              status: TransactionStatus.pending, 
              type: TransactionType.betsAndWager, 
              createdAt: DateTime(2024, 6, 22, 19, 0) 
            ),
          ),
          const SizedBox(height: 8),
          
          TransactionObligationItem (
            amount: "100,000", 
            title: 'Chelsea wins Man U', 
            date: DateTime.now(), 
            obligationStatus: ObligationStatus.paid, 
            transaction: TransactionObligationItemInput(
              status: TransactionStatus.pending, 
              type: TransactionType.betsAndWager, 
              createdAt: DateTime(2024, 6, 22, 19, 0) 
            ),
          ),
          const SizedBox(height: 32),

          AddUserItem(
            username: "Nelson Logan",
            image: ProfileIconAssets.avatar,
            account: "#4261723",
            amount: "100,000",
            percentage: "25",
            deleting: false,
            editing: false,
          ),
          SizedBox(height: 32),

          ProfileItem(
            type: ProfileType.edit,
          ),
          SizedBox(height: 8),       
          ProfileItem(
            type: ProfileType.account,
          ),
          SizedBox(height: 8),       
          ProfileItem(
            type: ProfileType.biometrics,
          ),
          SizedBox(height: 8),       
          ProfileItem(
            type: ProfileType.mediation,
          ),
          SizedBox(height: 8),       
          ProfileItem(
            type: ProfileType.reset,
          ),
          SizedBox(height: 8),       
          ProfileItem(
            type: ProfileType.support,
          ),
          SizedBox(height: 8),       
          ProfileItem(
            type: ProfileType.logout,
          ),
          SizedBox(height: 8), 
          SizedBox(height: 32),

          ObligationListItem(
            title: 'Aso-ebi Outfit',
            type: TransactionType.secureSales,
            amount: "100,000",
            dateTime: DateTime.now(),
          )  
         
        ],
      );
  }
}