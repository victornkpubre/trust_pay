import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/components/base/app_sizes.dart';
import 'package:trust_pay_polaris/components/base/app_string.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';
import 'package:trust_pay_polaris/components/base/user_image.dart';
import 'package:trust_pay_polaris/components/style/decoration.dart';
import 'package:trust_pay_polaris/components/style/image_manager.dart';
import 'package:trust_pay_polaris/components/style/text.dart';

class SellerDataCard extends StatelessWidget {
  final bool expanded; 
  final double width; 
  final String username; 
  final String accountNumber;
  final String trades;
  final String completionRate;
  const SellerDataCard({super.key, required this.expanded, required this.width, required this.username, required this.accountNumber, required this.trades, required this.completionRate});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(AppSize.s10),
      decoration: BoxDecoration(
        color: AppColor.lightPurple,
        borderRadius: BorderRadius.circular(AppSize.s10),
        boxShadow: [
          boxShadowThree
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                !expanded?Container(): Text(
                  AppString.seller,
                  style: appTextGray16Bold
                ),
                const SizedBox(height: AppSize.s8),

                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const UserImage(image: ProfileIconAssets.avatar),
                          const SizedBox(width: AppSize.s8),
                                
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  username,
                                  style: appTextGray16Bold
                                ),
                                Text(
                                  accountNumber,
                                  style: appTextGray12,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4),
                    
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        '$trades Trades - $completionRate completion rate',
                        style: appTextGray12
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSize.s16),


                !expanded?Container(): Text(
                  AppString.changeSeller,
                  textAlign: TextAlign.right,
                  style: appTextPurple14Bold
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}