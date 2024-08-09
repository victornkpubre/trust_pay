import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/components/base/app_sizes.dart';
import 'package:trust_pay_polaris/components/base/app_string.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';
import 'package:trust_pay_polaris/components/style/decoration.dart';
import 'package:trust_pay_polaris/components/style/text.dart';

class AppSecondaryTextInput extends StatelessWidget {
  final String hint;
  final TextInputType? type;

  const AppSecondaryTextInput({super.key, required this.hint, this.type});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: AppSize.s16, vertical: AppSize.s8),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 2, color: AppColor.fontBlack),
                borderRadius: BorderRadius.circular(AppSize.s8),
              ),
              shadows: [
                boxShadowOne
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                type==TextInputType.number? Row(
                  children: [
                    Text(AppString.naira,
                      style: appTextGray16
                    ),
                    const SizedBox(width: AppSize.s4),
                  ],
                ): Container(),

                Expanded(
                  child: TextField(
                    keyboardType: type??TextInputType.text,
                    style: appTextGray16,
                    decoration: InputDecoration(
                      hintText: hint,
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(vertical: AppSize.s8),
                      isDense: true,
                    ),
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