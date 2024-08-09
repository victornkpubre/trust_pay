import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/components/base/base.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';
import 'package:trust_pay_polaris/components/base/app_types.dart';

class TransactionTitleTile extends StatelessWidget {
  final TransactionType type;
  final double fontSize;
  final double iconSize;
  const TransactionTitleTile({super.key, required this.type, required this.fontSize, required this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          getIcon(type),
          height: iconSize,
          width: iconSize,
        ),
        SizedBox(width: 4),
    
        Text(
          getTitle(type),
          style: TextStyle(
            color: AppColor.fontGray,
            fontSize: fontSize,
            fontWeight: FontWeight.w900
          ),
        )
      ],
    );
  }
}