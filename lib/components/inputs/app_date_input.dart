import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trust_pay_polaris/components/base/app_sizes.dart';
import 'package:trust_pay_polaris/components/base/base.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';
import 'package:trust_pay_polaris/components/style/decoration.dart';
import 'package:trust_pay_polaris/components/style/text.dart';

class AppDateInput extends StatefulWidget {
  final String title;
  const AppDateInput({super.key, required this.title});

  @override
  State<AppDateInput> createState() => _AppDateInputState();
}

class _AppDateInputState extends State<AppDateInput> {
  DateTime _datetime = DateTime.now();

  DateTime get datetime => _datetime;

  set datetime(DateTime value) {
    _datetime = value;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: appTextPrimary16Bold
          ),
          const SizedBox(height: AppSize.s8),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: AppSize.s16, vertical: AppSize.s14),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: AppColor.fontBlack,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: AppColor.fontBlack),
                borderRadius: BorderRadius.circular(AppSize.s32),
              ),
              shadows: [
                boxShadowOne
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min, 
              mainAxisAlignment: MainAxisAlignment.start, 
              crossAxisAlignment: CrossAxisAlignment.center, 
              children: [
                Expanded(
                  child: Text(
                    parseDate(datetime),
                    style: appTextGray16
                  ),
                ),

                const Icon(FontAwesomeIcons.calendar, size: FontSize.s16)
              ],
            ),
          ),
        
        
        ],
      ),
    );
  }
}