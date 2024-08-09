
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trust_pay_polaris/components/base/app_sizes.dart';
import 'package:trust_pay_polaris/components/base/app_string.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';
import 'package:trust_pay_polaris/components/style/decoration.dart';
import 'package:trust_pay_polaris/components/style/image_manager.dart';
import 'package:trust_pay_polaris/components/style/text.dart';

class FacebookAuthButton extends StatelessWidget {
  const FacebookAuthButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: AppSize.s16, vertical: AppSize.s10),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: AppColor.facebookBlue,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: AppColor.borderGray),
          borderRadius: BorderRadius.circular(AppSize.s32),
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
          SvgPicture.asset(
            IconAssets.facebookIcon, 
            width: AppSize.s24,
            height: AppSize.s24,
          ),
          const SizedBox(width: AppSize.s10),
          Text(
            AppString.facebookLogin,
            style: appTextWhite18Bold
          ),
        ],
      ),
    );
  }
}