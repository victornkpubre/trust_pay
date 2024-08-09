import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';
import 'package:trust_pay_polaris/components/tiles/user_profile_tile.dart';

class AddUserItem extends StatefulWidget {
  final String username; 
  final String image; 
  final String account;
  final String? percentage;
  final String amount;
  final bool deleting;
  final bool editing;
  const AddUserItem({super.key, required this.username, required this.image, required this.account, this.percentage, required this.amount, required this.deleting, required this.editing});

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
    
    return Row(
      children: [
        Flexible(
          flex: 3,
          child: UserProfileTile(
            username: widget.username, 
            image: widget.image, 
            account: "#4567839",
            expanded: false,
          ),
        ),
        // SizedBox(width: 128),

        widget.deleting?
        Flexible(
          flex: 1,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            decoration: BoxDecoration(
              color: AppColor.lightRed,
              borderRadius: BorderRadius.circular(16)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
          ),
        ):
          widget.editing?
          Flexible(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: AppColor.gray),
                borderRadius: BorderRadius.circular(16)
              ),
              child: Row(
                children: [
                  widget.percentage == null? Text(
                    "₦",
                    style: TextStyle(
                      color: AppColor.fontGray,
                      fontSize: 14,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w600,
                    ),
                  ): Container(),
                  Expanded(
                    child: TextField(
                      controller: controller,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        height: 1
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(vertical: 8),
                        isDense: true,
                      ),
                    ),
                  ),widget.percentage != null? Text(
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
          ):
          Flexible(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: AppColor.lightGray,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}

