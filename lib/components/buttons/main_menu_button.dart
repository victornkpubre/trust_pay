import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';
import 'package:trust_pay_polaris/components/style/decoration.dart';

class MainMenuButton extends StatelessWidget {
  final double size;
  final Color background;
  final double padding;
  final String? icon;
  const MainMenuButton({super.key, required this.size, required this.background, this.icon, required this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      padding: EdgeInsets.all(padding),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: AppColor.primary,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: AppColor.borderGray),
          borderRadius: BorderRadius.circular(64),
        ),
        shadows: [
          boxShadowOne
        ],
      ),
      child: Center(
        child: icon==null? SizedBox(
            width: size - padding,
            height: size - padding,
            child: const Icon(
                FontAwesomeIcons.arrowDown,
              ),
          ): 
          SvgPicture.asset(icon!)
      ) 
    );
  }
}