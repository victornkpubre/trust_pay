import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';
import 'package:trust_pay_polaris/components/style/decoration.dart';

class AppBackButton extends StatelessWidget {
  final double size;
  const AppBackButton({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: AppColor.lightGray,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: AppColor.borderGray),
          borderRadius: BorderRadius.circular(64),
        ),
        shadows: [
          boxShadowOne
        ],
      ),
      child: Icon(
        FontAwesomeIcons.angleLeft,
        color: AppColor.fontGray,
        size: size,
      ) 
    );
  }
}