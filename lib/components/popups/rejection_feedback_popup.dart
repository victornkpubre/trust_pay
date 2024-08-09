import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trust_pay_polaris/components/buttons/primary_btn.dart';
import 'package:trust_pay_polaris/components/popups/popup_bar.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';
import 'package:trust_pay_polaris/components/style/text.dart';
import 'package:trust_pay_polaris/components/tiles/notice_tile.dart';


enum RejectionFeedbackPopupState {completed, accepted, rejected}

class RejectionFeedbackPopup extends StatefulWidget {
  final String username; 
  final String message; 
  final double width; 
  final Function onClick; 

  const RejectionFeedbackPopup({super.key, required this.width, required this.onClick, required this.username, required this.message});

  @override
  State<RejectionFeedbackPopup> createState() => _AcceptTransactionPopupState();
}

class _AcceptTransactionPopupState extends State<RejectionFeedbackPopup> {
  bool completed = false;
  
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
          const SizedBox(height: 8),
          const PopUpBar(),
          const SizedBox(height: 64),
          
          Icon(
            FontAwesomeIcons.faceFrown,
            color: AppColor.red,
            size: 48+16,
          ),
          const SizedBox(height: 16),
                
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: widget.width*5/8,
                child: Text(
                  'Transaction Rejected',
                  textAlign: TextAlign.center,
                  style: appTextPrimary20Bold
                ),
              ),
              const SizedBox(height: 8),

              Container(
                width: widget.width*6/8,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "The transaction was rejected by ",
                        style: TextStyle(
                          color: AppColor.fontGray,
                          fontSize: 14,
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      TextSpan(
                        text: "\"${widget.username}\"",
                        style: TextStyle(
                          color: AppColor.fontGray,
                          fontSize: 14,
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 8),

              NoticeTile(
                width: widget.width - 32,
                accepted: false,
                richText: Text.rich (
                  TextSpan (
                    children: [
                      TextSpan(
                        text: "\"${widget.username}\"\n",
                        style: TextStyle(
                          color: AppColor.amber,
                          fontSize: 14,
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: widget.message,
                        style: TextStyle(
                          color: AppColor.amber,
                          fontSize: 14,
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),

            ],
          ),
          const SizedBox(height: 32),
          
          SizedBox(
            width: widget.width*7/8,
            child: InkWell(
              onTap: widget.onClick(),
              child: const PrimaryButton(
                title: "Okay!"
              ),
            )
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

getStateTitle(RejectionFeedbackPopupState state) {
  switch (state) {
    case RejectionFeedbackPopupState.accepted:
      return "Accepted";
    case RejectionFeedbackPopupState.completed:
      return "Completed";
    case RejectionFeedbackPopupState.rejected:
      return "Rejected";
    default:
  }
}