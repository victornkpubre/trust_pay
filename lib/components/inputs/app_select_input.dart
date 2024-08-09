import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trust_pay_polaris/components/base/app_sizes.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';
import 'package:trust_pay_polaris/components/style/decoration.dart';
import 'package:trust_pay_polaris/components/style/text.dart';

class AppSelectInput extends StatefulWidget {
  final String title;
  final String hint;
  final int? height;
  final int? width;


  const AppSelectInput({super.key, required this.title, this.height, this.width, required this.hint});

  @override
  State<AppSelectInput> createState() => _AppSelectInputState();
}

class _AppSelectInputState extends State<AppSelectInput> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: appTextPrimary16Bold
          ),
          const SizedBox(height: AppSize.s8),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: AppSize.s16, vertical: AppSize.s8),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: AppColor.fontBlack,
              shape: RoundedRectangleBorder (
                side: BorderSide(width: 1, color: AppColor.fontBlack),
                borderRadius: BorderRadius.circular(AppSize.s32),
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
                  child: Text(
                    widget.hint,
                    style: appTextGray16
                  ),
                ),

                const Icon(FontAwesomeIcons.caretDown)
              ],
            ),
          ),
        
        
        ],
      ),
    );
  }
}