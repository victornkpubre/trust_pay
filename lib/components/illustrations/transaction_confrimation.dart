import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trust_pay_polaris/components/base/app_types.dart';
import 'package:trust_pay_polaris/components/base/base.dart';
import 'package:trust_pay_polaris/components/base/user_image.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';
import 'package:trust_pay_polaris/components/style/image_manager.dart';

enum TransactionConfirmationState {accepting, rejecting}

class TransactionConfirmationIllustration extends StatelessWidget {
  final double height;
  final TransactionType type;
  final TransactionConfirmationState state;
  final String senderImage;
  final String receiverImage;
  const TransactionConfirmationIllustration({super.key, required this.type, required this.height, required this.state, required this.senderImage, required this.receiverImage});

  @override
  Widget build(BuildContext context) {
    double width = height*2;
    double halfHeight = height/2;
    double quarterHeight = height/4;

    return Container(
      width: width,
      height: height,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset(
                SvgIconAssets.curved_arrow_left,
                height: quarterHeight,
                width: quarterHeight,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset(
                SvgIconAssets.curved_arrow_right,
                height: quarterHeight,
                width: quarterHeight,
              ),
            ),
          ),

          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UserImage(
                  image: senderImage,
                  width: halfHeight,
                  height: halfHeight,
                ),

                state == TransactionConfirmationState.rejecting?  Container(
                  margin: const EdgeInsets.all(4),
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 1, color: AppColor.lightRed)
                  ),
                  child: Icon(
                    FontAwesomeIcons.exclamation,
                    color: AppColor.lightRed,
                    size: quarterHeight
                  ),
                ): Container(),
                      
                UserImage(
                  image: receiverImage,
                  width: halfHeight,
                  height: halfHeight,
                ),
              ],
            ),
          ),

          state == TransactionConfirmationState.accepting? Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.green
              ),
              child: Icon(
                Icons.check,
                color: AppColor.white,
                size: 8
              ),
            )
          ): Container(),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: AppColor.lightPurple,
                shape: BoxShape.circle
              ),
              child: Image.asset(
                getIcon(type),
                height: quarterHeight,
                width: quarterHeight,
              ),
            )
          )
          
        ]
      ),
    );
  }
}