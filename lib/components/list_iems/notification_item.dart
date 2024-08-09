import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/components/base/base.dart';
import 'package:trust_pay_polaris/components/list_iems/transaction_obligation_item.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';
import 'package:trust_pay_polaris/components/tiles/user_profile_tile.dart';


class NotificationItem extends StatelessWidget {
  final String username; 
  final String image; 
  final String amount;
  final TransactionObligationItemInput transaction;
  const NotificationItem({super.key, required this.username, required this.image, required this.transaction, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: UserProfileTile(
            username: username, 
            image: image, 
            expanded: false,
            transaction: TransactionInput(
              createdAt: transaction.createdAt,
              status: transaction.status
            )
          ),
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Image.asset(
                  getIcon(transaction.type),
                  height: 16,
                  width: 16
                ),
                const SizedBox(width: 4),
        
                Text(
                  getTitle(transaction.type),
                  style: TextStyle(
                    color: AppColor.gray,
                    fontSize: 10,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),

            Text(
              "₦${amount}",
              style: TextStyle(
                color: AppColor.fontGray,
                fontSize: 14,
                fontFamily: 'Source Sans Pro',
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        )

      ],
    );
  }
}