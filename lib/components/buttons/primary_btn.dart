
import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/components/base/app_sizes.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';
import 'package:trust_pay_polaris/components/style/decoration.dart';
import 'package:trust_pay_polaris/components/style/text.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  const PrimaryButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: AppSize.s16, vertical: AppSize.s8),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: AppColor.primary,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: AppColor.borderGray),
          borderRadius: BorderRadius.circular(AppSize.s32),
        ),
        shadows: [
          boxShadowOne
        ],
      ),
      child: Center(
        child: Text(
          title,
          style: appTextWhite18Bold,
        ),
      ),
    );
  }
}