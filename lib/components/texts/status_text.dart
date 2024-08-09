import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/components/base/base.dart';
import 'package:trust_pay_polaris/components/base/app_types.dart';

class StatusText extends StatelessWidget {
  final TransactionStatus status;
  final double size;
  const StatusText({super.key, required this.status, required this.size});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 6,
          width: 6,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: getStatsColor(status),
          ),
        ),
        SizedBox(width: 4),

        Text(
          getStatsTitle(status),
          style: TextStyle(
            color: getStatsColor(status),
            fontSize: size,
            fontFamily: 'Source Sans Pro',
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}