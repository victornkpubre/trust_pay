import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/components/base/app_sizes.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';
import 'package:trust_pay_polaris/components/style/decoration.dart';
import 'package:trust_pay_polaris/components/style/text.dart';

class AppTextAreaInput extends StatelessWidget {
  final String hint;
  final TextEditingController controller;

  const AppTextAreaInput({super.key, required this.hint, required this.controller});

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
            padding: const EdgeInsets.symmetric(horizontal: AppSize.s16, vertical: AppSize.s4),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color:Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: AppColor.fontBlack),
                borderRadius: BorderRadius.circular(AppSize.s8),
              ),
              shadows: [
                boxShadowOne
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    keyboardType: TextInputType.multiline,
                    maxLines: 4,
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