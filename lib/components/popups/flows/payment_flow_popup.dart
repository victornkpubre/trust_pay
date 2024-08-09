import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trust_pay_polaris/components/base/app_sizes.dart';
import 'package:trust_pay_polaris/components/base/base.dart';
import 'package:trust_pay_polaris/components/popups/popup_bar.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';
import 'package:trust_pay_polaris/components/style/image_manager.dart';
import 'package:trust_pay_polaris/components/style/text.dart';

class PaymentFlowPopup extends StatefulWidget {
  final double width;
  final String amount;
  const PaymentFlowPopup({super.key, required this.width, required this.amount});

  @override
  State<PaymentFlowPopup> createState() => _PaymentFlowPopupState();
}

class _PaymentFlowPopupState extends State<PaymentFlowPopup> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32)
          )
      ),
      width: widget.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: AppSize.s8),
          const PopUpBar(),
          const SizedBox(height: AppSize.s16),

          Image.asset(
            ImageAssets.logo,
            height: widget.width/3,
            width: widget.width/3,
          ),
          const SizedBox(height: AppSize.s16),

          Text('Payment',
            style: appTextBlack24Bold,
          ),
          Text(widget.amount,
            style: appTextGray24Bold,
          ),
          const SizedBox(height: AppSize.s16),

          Row(
            children: [
              Expanded(child: Container(
                padding: const EdgeInsets.all(AppSize.s8),
                color: AppColor.primary,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(SvgIconAssets.bank_icon),
                    const SizedBox(width: AppSize.s8),
                    Text("Bank Transfer",
                      style: appTextWhite18Bold
                    ),
                  ],
                ),
              )),
              Expanded(child: Container(
                padding: const EdgeInsets.all(AppSize.s8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(SvgIconAssets.card_icon),
                    const SizedBox(width: AppSize.s8),
                    Text("Card Payment",
                      style: appTextPrimary18Bold,
                    ),
                  ],
                ),
              )),
            ],
          ),

        ],
      ),
    );
  }
}