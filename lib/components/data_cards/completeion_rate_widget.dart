import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:trust_pay_polaris/components/base/app_sizes.dart';
import 'package:trust_pay_polaris/components/base/app_string.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';

class CompleteionRateWidget extends StatelessWidget {
  final String percentageComplete;
  final double size;
  final bool expanded;
  const CompleteionRateWidget({super.key, required this.percentageComplete, required this.size, required this.expanded});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [  
        CircularPercentIndicator(
          radius: size,
          percent: 0.5,
          animation: true,
          lineWidth: size/4,
          center: Text(
            percentageComplete,
            style: TextStyle(
              fontSize: size/2.5,
            ),
          ),
          progressColor: AppColor.green,
        ),
        const SizedBox(height: AppSize.s4),
        
    
        !expanded? Container(
          width: 0,
        ): Text(
          AppString.completionRate,
          style: TextStyle(
            color: AppColor.gray,
            fontSize: size/2.5,
            fontFamily: 'Source Sans Pro',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}