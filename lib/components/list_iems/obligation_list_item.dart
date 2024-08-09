import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/components/base/app_types.dart';
import 'package:trust_pay_polaris/components/base/base.dart';

class ObligationListItem extends StatelessWidget {
  final String title;
  final String amount;
  final TransactionType type;
  final DateTime dateTime;
  const ObligationListItem({super.key, required this.title, required this.amount, required this.type, required this.dateTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 123,
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Color(0xFF00182D),
                        fontSize: 16,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    getTitle(type),
                    style: TextStyle(
                      color: Color(0xFF9FA2AA),
                      fontSize: 14,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),


          Container(
            width: 119,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 119,
                  child: Text(
                    '₦ ${amount}',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF00182D),
                      fontSize: 16,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  parseDate(dateTime),
                  style: TextStyle(
                    color: Color(0xFF9FA2AA),
                    fontSize: 14,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}