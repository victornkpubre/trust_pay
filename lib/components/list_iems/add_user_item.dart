import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trust_pay_polaris/components/base/app_sizes.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';
import 'package:trust_pay_polaris/components/tiles/user_profile_tile.dart';

class AddUserItem extends StatefulWidget {
  final String username; 
  final String image; 
  final String account;
  final String? percentage;
  final String amount;
  final bool deleting;
  final bool selecting;
  // final bool editing;
  const AddUserItem({super.key, required this.username, required this.image, required this.account, this.percentage, required this.amount, required this.deleting, required this.selecting});

  @override
  State<AddUserItem> createState() => _AddUserItemState();
}

class _AddUserItemState extends State<AddUserItem> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    if(widget.percentage != null){
      controller.text = widget.percentage!;
    }
    else {
      controller.text = widget.amount;
    }
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return Container(
      color: AppColor.pink,
      child: Stack(
        children: [
          UserProfileTile(
            username: widget.username,
            image: widget.image,
            account: widget.account,
            expanded: false,
          ),
          // SizedBox(width: 128),

          Positioned(
            right: AppSize.s4,
            top: 0,
            bottom: 0,
            child: widget.selecting?
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: AppColor.primary,
                    borderRadius: BorderRadius.circular(AppSize.s32)
                ),
                child: Icon(
                  Icons.check,
                  color: AppColor.white,
                ),
              ),
            ):
            widget.deleting?
              Container(
                padding: const EdgeInsets.symmetric(horizontal: AppSize.s16, vertical: AppSize.s10),
                decoration: BoxDecoration(
                  color: AppColor.lightRed,
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      FontAwesomeIcons.trashCan,
                      color: AppColor.white,
                      size: 14,
                    ),
                    Text(
                      "Delete",
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: 12,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ):
              // widget.editing?
              //   Container(
              //     padding: const EdgeInsets.symmetric(horizontal: AppSize.s16, vertical: AppSize.s8),
              //     decoration: BoxDecoration(
              //       border: Border.all(width: 2, color: AppColor.gray),
              //       borderRadius: BorderRadius.circular(16)
              //     ),
              //     child: Row(
              //       mainAxisSize: MainAxisSize.min,
              //       children: [
              //         widget.percentage == null? Text(
              //           "₦",
              //           style: TextStyle(
              //             color: AppColor.fontGray,
              //             fontSize: 14,
              //             fontFamily: 'Source Sans Pro',
              //             fontWeight: FontWeight.w600,
              //           ),
              //         ): Container(),
              //         Expanded(
              //           child: TextField(
              //             controller: controller,
              //             textAlign: TextAlign.end,
              //             style: TextStyle(
              //               height: 1
              //             ),
              //             decoration: InputDecoration(
              //               border: InputBorder.none,
              //               contentPadding: const EdgeInsets.symmetric(vertical: 8),
              //               isDense: true,
              //             ),
              //           ),
              //         ),widget.percentage != null? Text(
              //           "%",
              //           style: TextStyle(
              //             color: AppColor.fontGray,
              //             fontSize: 14,
              //             fontFamily: 'Source Sans Pro',
              //             fontWeight: FontWeight.w600,
              //           ),
              //         ): Container(),
              //       ],
              //     ),
              //   ):
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: AppColor.lightGray,
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    widget.percentage == null? Text(
                      "₦",
                      style: TextStyle(
                        color: AppColor.fontGray,
                        fontSize: 14,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w600,
                      ),
                    ):Container(),
                    Center(
                      child: Text(
                        widget.percentage??widget.amount,
                        style: TextStyle(
                          color: AppColor.fontGray,
                          fontSize: 14,
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    widget.percentage != null? Text(
                      "%",
                      style: TextStyle(
                        color: AppColor.fontGray,
                        fontSize: 14,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w600,
                      ),
                    ): Container(),
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}

