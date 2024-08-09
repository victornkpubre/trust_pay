import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/components/base/app_sizes.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';
import 'package:trust_pay_polaris/components/style/decoration.dart';
import 'package:trust_pay_polaris/components/style/text.dart';

class AppSecondaryTextAreaInput extends StatelessWidget {
  final String title;
  final String hint;
  final TextEditingController controller;

  const AppSecondaryTextAreaInput({super.key, required this.hint, required this.controller, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: AppSize.s16, vertical: AppSize.s14),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: AppColor.smokeWhite,
              shape: RoundedRectangleBorder (
                side: BorderSide(width: 1, color: AppColor.fontBlack),
                borderRadius: BorderRadius.circular(AppSize.s16),
              ),
              shadows: [
                boxShadowOne
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: appTextBlack16Bold,
                    ),
                  ],
                ),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                        controller: controller,
                        keyboardType: TextInputType.multiline,
                        maxLines: 1,
                        style: appTextGray16,
                        decoration: InputDecoration(
                          hintText: hint,
                          hintStyle: appTextGray16,
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(vertical: AppSize.s8),
                          isDense: true,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ),
        
        
        ],
      ),
    );
  }
}