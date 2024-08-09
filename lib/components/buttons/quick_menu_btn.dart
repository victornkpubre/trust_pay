import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/components/base/app_sizes.dart';
import 'package:trust_pay_polaris/components/base/base.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';
import 'package:trust_pay_polaris/components/base/app_types.dart';
import 'package:trust_pay_polaris/components/style/text.dart';


class QuickMenuButton extends StatelessWidget {
  final TransactionType type;
  final double size; 
  const QuickMenuButton({super.key, required this.type, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size*3,
      width: size*3,
      decoration: ShapeDecoration(
        color: AppColor.lightPurple,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: AppColor.white),
          borderRadius: BorderRadius.circular(AppSize.s8),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            getIcon(type),
            height: size,
            width: size,
          ),
          const SizedBox(height: AppSize.s4),
            
          Text(
            getTitle(type),
            textAlign: TextAlign.center,
            style: appTextBlack10Bold
          ),
        ],
      ),
    );
  }
}
