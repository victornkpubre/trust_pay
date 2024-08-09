import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';

class PayeePaymentIndicator extends StatelessWidget {
  final int paymentFulfilled;
  final int paymentsTotal;
  final double fontSize;
  final double width;
  final String payee;
  const PayeePaymentIndicator({super.key, required this.paymentFulfilled, required this.fontSize, required this.width, required this.paymentsTotal, required this.payee});

  @override
  Widget build(BuildContext context) {
    final double percentageCompletion = paymentFulfilled/paymentsTotal;

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payee',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: AppColor.gray,
                fontSize: fontSize,
                fontFamily: 'Source Sans Pro',
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              payee,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: AppColor.fontGray,
                fontSize: fontSize + 6,
                fontFamily: 'Source Sans Pro',
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
        const SizedBox(width: 16),
    
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$paymentFulfilled out of $paymentsTotal have been paid',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: AppColor.fontGray,
                fontSize: fontSize - 2,
                fontFamily: 'Source Sans Pro',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),

            Stack(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 6,
                      width: width,
                      decoration: ShapeDecoration(
                        color: AppColor.lightGray,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ]
                ),
            
            
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 6,
                      width: width*percentageCompletion,
                      decoration: ShapeDecoration(
                        color: AppColor.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ]
                ),
              ],
            ),
          ],
        ),
        
      ],
    );
  }
}