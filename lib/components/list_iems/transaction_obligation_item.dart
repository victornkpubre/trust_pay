// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trust_pay_polaris/components/base/app_types.dart';
import 'package:trust_pay_polaris/components/base/base.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';
import 'package:trust_pay_polaris/components/texts/status_text.dart';

class TransactionObligationItemInput {
  final DateTime createdAt;
  final TransactionStatus status;
  final TransactionType type;
  TransactionObligationItemInput({
    required this.createdAt,
    required this.type,
    required this.status,
  });
}

class TransactionObligationItem extends StatelessWidget {
  final String title;
  final String amount;
  final DateTime? date;
  final TransactionObligationItemInput transaction;
  final ObligationStatus? obligationStatus;
  const TransactionObligationItem({super.key, required this.title, required this.amount, required this.transaction, this.date, this.obligationStatus});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 32,
                height: 32,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: obligationStatus == null? 
                    getBackgroundColor(transaction.status):
                    getObligationBackgroundColor(obligationStatus!)
                ),
                child: SvgPicture.asset(
                  obligationStatus == null? 
                    getStatsIcon(transaction.status):
                    getObligationStatusIcon(obligationStatus!)
                ),
              ),
              const SizedBox(width: 8),
    
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: AppColor.fontGray,
                        fontSize: 12,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 6),
                
                    date != null? Text(
                      parseDate(date!),
                      style: TextStyle(
                        color: AppColor.gray,
                        fontSize: 12,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w600,
                      ),
                    ): 
                    Row(
                      children: [
                        Image.asset(
                          getIcon(transaction.type),
                          height: 14,
                          width: 14
                        ),
                        const SizedBox(width: 4),
                
                        Text(
                          getTitle(transaction.type),
                          style: TextStyle(
                            color: AppColor.gray,
                            fontSize: 8,
                            fontFamily: 'Source Sans Pro',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
                    
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "₦${amount}",
                    style: TextStyle(
                      color: AppColor.fontGray,
                      fontSize: 12,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
              
                  obligationStatus == null? StatusText(
                    status: transaction.status,
                    size: 12,
                  ): 
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 6,
                        width: 6,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: getObligationStatusColor(obligationStatus!),
                        ),
                      ),
                      SizedBox(width: 4),

                      Text(
                        getObligationStatusTitle(obligationStatus!),
                        style: TextStyle(
                          color: getObligationStatusColor(obligationStatus!),
                          fontSize: 12,
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      
      ],
    );
  }
}