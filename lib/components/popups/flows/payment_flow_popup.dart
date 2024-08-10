import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trust_pay_polaris/components/base/app_sizes.dart';
import 'package:trust_pay_polaris/components/base/arguments.dart';
import 'package:trust_pay_polaris/components/base/base.dart';
import 'package:trust_pay_polaris/components/base/intents/fullscreen_select_intent.dart';
import 'package:trust_pay_polaris/components/buttons/primary_btn.dart';
import 'package:trust_pay_polaris/components/inputs/app_select_input_secondary.dart';
import 'package:trust_pay_polaris/components/inputs/app_textarea_input_secondary.dart';
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
  TextEditingController accountNumberController = TextEditingController();
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController cardDateController = TextEditingController();
  TextEditingController cardCvvController = TextEditingController();
  String? bank;

  bool isBankPayment = false;


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

          //Payment Type
          Row(
            children: [
              Expanded(child: InkWell(
                onTap: () {
                  setState(() {
                    isBankPayment = true;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(AppSize.s8),
                  color: isBankPayment?
                    AppColor.primary:
                    AppColor.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                          SvgIconAssets.bank_icon,
                          colorFilter: isBankPayment?
                          ColorFilter.mode(AppColor.white, BlendMode.srcIn):
                          ColorFilter.mode(AppColor.primary, BlendMode.srcIn)
                      ),
                      const SizedBox(width: AppSize.s8),
                      Text("Bank Transfer",
                        style: isBankPayment?
                          appTextWhite18Bold:
                          appTextPrimary18Bold
                      ),
                    ],
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () {
                  setState(() {
                    isBankPayment = false;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(AppSize.s8),
                  color: isBankPayment?
                    AppColor.white:
                    AppColor.primary,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                          SvgIconAssets.card_icon,
                        colorFilter: isBankPayment?
                          ColorFilter.mode(AppColor.primary, BlendMode.srcIn):
                          ColorFilter.mode(AppColor.white, BlendMode.srcIn)
                      ),
                      const SizedBox(width: AppSize.s8),
                      Text("Card Payment",
                        style: isBankPayment?
                        appTextPrimary18Bold:
                        appTextWhite18Bold
                      ),
                    ],
                  ),
                ),
              )),
            ],
          ),
          const SizedBox(height: AppSize.s32),

          !isBankPayment?Container(): InkWell(
              onTap: () async {
                bank = await Navigator.pushNamed(context, '/selectIntent', arguments: FullscreenSelectIntentArgument(SelectIntentDummyValues.values, bank));
              },
              child: AppSecondarySelectInput(hint: bank??'Choose your Bank')
          ),
          !isBankPayment?Container(): const SizedBox(height: AppSize.s16),

          !isBankPayment?Container(): AppSecondaryTextAreaInput(
              title: 'ACCOUNT NUMBER',
              hint: '00000000000',
              limit: 11,
              controller: accountNumberController,
          ),
          !isBankPayment?Container(): const SizedBox(height: AppSize.s24),

          isBankPayment?Container(): AppSecondaryTextAreaInput(
            title: 'CARD NUMBER',
            hint: '0000 0000 0000 0000',
            limit: 16,
            controller: cardNumberController,
            isCardNumberInput: true,
          ),
          isBankPayment?Container(): const SizedBox(height: AppSize.s16),

          isBankPayment?Container(): Row(
            children: [
              Expanded(
                child: AppSecondaryTextAreaInput(
                    title: 'VALID TILL',
                    hint: 'MM/YYYY',
                    limit: 7,
                    controller: cardDateController,
                    isDateInput: true,
                ),
              ),
              const SizedBox(width: AppSize.s16),

              Expanded(
                child: AppSecondaryTextAreaInput(
                    title: 'CVV',
                    hint: '999',
                    limit: 3,
                    controller: cardCvvController,
                ),
              ),
            ],
          ),
          isBankPayment?Container(): const SizedBox(height: AppSize.s24),

          const PrimaryButton(title: 'Continue'),

          const SizedBox(height: AppSize.s64),
        ],
      ),
    );
  }
}