import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trust_pay_polaris/components/base/app_sizes.dart';
import 'package:trust_pay_polaris/components/base/base.dart';
import 'package:trust_pay_polaris/components/data_cards/completeion_rate_widget.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';
import 'package:trust_pay_polaris/components/base/app_types.dart';
import 'package:trust_pay_polaris/components/style/decoration.dart';

class TransactionStatsCard extends StatelessWidget {
  final double width; 
  final String percentageComplete;
  final int transactions;
  final int successful;
  final int pending;
  final TransactionType type;
  const TransactionStatsCard({super.key, required this.width, required this.percentageComplete, required this.type, required this.transactions, required this.successful, required this.pending});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(16),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            strokeAlign: BorderSide.strokeAlignOutside,
            color: AppColor.borderGray,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: [
          boxShadowTwo
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Transaction Image
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: width/6,
                          height: width/6,
                          decoration: ShapeDecoration(
                            color: AppColor.lightPurple,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Image.asset(
                                  getIcon(TransactionType.billSplitter),
                                  height: width/10,
                                  width: width/10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 6),
                                            
                        Text(
                          getTitle(type),
                          style: TextStyle(
                            color: AppColor.fontGray,
                            fontSize: width/32,
                            fontFamily: 'Source Sans Pro',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
          
          
          
                //Completion Rate
                CompleteionRateWidget(
                  size: width/12,
                  percentageComplete: percentageComplete,
                  expanded: true,
                )
          
              ],
            ),
          ),
          const SizedBox(height: 30),
          
          
          //Stats
          Container(
            width: double.infinity,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: StatsButton(
                    title: "Transactions",
                    value: transactions,
                    fontColor: AppColor.fontGray,
                    color: AppColor.lightGray,
                    stats: TransactionStatus.accepted,
                  )
                ),
                const SizedBox(width: AppSize.s8),

                Expanded(
                  child: StatsButton(
                    title: "Successful",
                    fontColor: AppColor.green,
                    value: successful,
                    color: AppColor.lightGreen,
                    stats: TransactionStatus.completed,
                  )
                ),
                const SizedBox(width: AppSize.s8),

                Expanded(
                  child: StatsButton(
                    title: "Pending",
                    fontColor: AppColor.amber,
                    value: pending,
                    color: AppColor.redAccent,
                    stats: TransactionStatus.pending,
                  )
                ),
            
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StatsButton extends StatelessWidget {
  final TransactionStatus stats;
  final Color color;
  final String title;
  final Color fontColor;
  final int value;
  const StatsButton({super.key, required this.stats, required this.color, required this.value, required this.title, required this.fontColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSize.s8),
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: AppColor.lightPurple),
          borderRadius: BorderRadius.circular(AppSize.s8),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  getStatsIcon(stats),
                ),
                SizedBox(width: AppSize.s4),

                Text(
                  value.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColor.fontGray,
                    fontSize: FontSize.s14,
                    fontFamily: 'FarnhamDisplay-Regular',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.32,
                  ),
                ),
              ],
            ),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: fontColor,
              fontSize: FontSize.s12,
              fontFamily: 'Source Sans Pro',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}