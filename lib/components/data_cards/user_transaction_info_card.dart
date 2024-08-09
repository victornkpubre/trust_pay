import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/components/base/app_sizes.dart';
import 'package:trust_pay_polaris/components/base/base.dart';
import 'package:trust_pay_polaris/components/data_cards/completeion_rate_widget.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';
import 'package:trust_pay_polaris/components/base/user_image.dart';
import 'package:trust_pay_polaris/components/base/app_types.dart';

class UserTransactionInfoCard extends StatelessWidget {
  final TransactionType type;
  final String username;
  final String profileImage;
  final int amount;
  final double width;
  final String percentageComplete;
  const UserTransactionInfoCard({super.key, required this.type, required this.username, required this.amount, required this.profileImage, required this.width, required this.percentageComplete});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 8, right: 16),
              child: Image.asset(
                height: width/5,
                width: width/5,
                fit: BoxFit.fill,
                getIcon(type)
              ),
            ),
          ),
          
          Container(
            padding: EdgeInsets.all(16),
            decoration: ShapeDecoration(
              color: AppColor.pink.withOpacity(0.8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Container(
              width: double.infinity,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Transaction Image
                 Row(
                   children: [
                      UserImage(
                        image: profileImage,
                        height: width/8,
                        width: width/8,
                      ),
                      SizedBox(width: 4),
            
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            username,
                            style: TextStyle(
                              fontSize: FontSize.s12,
                            ),
                          ),
                          SizedBox(height: 2),

                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4
                            ),
                            decoration: ShapeDecoration(
                              color: AppColor.lightPurple,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Row (
                              children: [
                                Image.asset(
                                  height: width/20,
                                  width: width/20,
                                  getIcon(TransactionType.betsAndWager)
                                ),
                                SizedBox(width: 4),
                                Text(
                                  "${amount} ${getTransactionName(type)}",
                                  style: TextStyle(
                                    fontSize: FontSize.s10
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                   ],
                 ),
                 const SizedBox(width: 16),
            
                  //Completion Rate
                  CompleteionRateWidget(
                    percentageComplete: percentageComplete, 
                    size: width/16,
                    expanded: true,
                  )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}