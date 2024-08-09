import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/components/base/app_sizes.dart';
import 'package:trust_pay_polaris/components/base/app_string.dart';
import 'package:trust_pay_polaris/components/base/base.dart';
import 'package:trust_pay_polaris/components/data_cards/user_input.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';
import 'package:trust_pay_polaris/components/style/decoration.dart';
import 'package:trust_pay_polaris/components/texts/status_text.dart';
import 'package:trust_pay_polaris/components/texts/transaction_card_subtitle.dart';
import 'package:trust_pay_polaris/components/tiles/transaction_members_tile.dart';
import 'package:trust_pay_polaris/components/base/app_types.dart';


class TransactionDetailsCard extends StatelessWidget {
  final double width;
  final String title;
  final TransactionType type;
  final TransactionStatus status;
  final String amount;
  final DateTime date;
  final List<UserInput> members;
  const TransactionDetailsCard({super.key, required this.title, required this.type, required this.status, required this.amount, required this.date, required this.members, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(AppSize.s14),
      decoration: ShapeDecoration(
        color: AppColor.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s10),
        ),
        shadows: [
          boxShadowThree
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(AppSize.s64),
                      ),
                    ),
                    child: SizedBox(
                      height: width/10, 
                      width: width/10,
                      child: Image.asset(getIcon(type))
                    )
                  ),
                  const SizedBox(width: 8),


                  Text(
                    getTitle(type),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: FontSize.s18,
                      fontFamily: 'Almarai',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        title,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: AppColor.white,
                          fontSize: FontSize.s18,
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      Container(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '${AppString.naira}$amount',
                              style: TextStyle(
                                color: AppColor.amber,
                                fontSize: FontSize.s16,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          Divider(thickness: 1, color: AppColor.lightGray),
       
          const SizedBox(height: 8),

          Container(
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSubTitle(type, members),
                      
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Expires',
                            style: TextStyle(
                              color: AppColor.lightGray,
                              fontSize: FontSize.s12,
                              fontFamily: 'Source Sans Pro',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 4),

                          Text(
                            parseDate(date),
                            style: TextStyle(
                              color: AppColor.white,
                              fontSize: FontSize.s12,
                              fontFamily: 'Source Sans Pro',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _buildMembersTitle(type, members),
                      style:TextStyle(
                        color: AppColor.white,
                        fontSize: FontSize.s12,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w200,
                      )
                    ),
                    const SizedBox(height: 4),

                    Row(
                      children: [
                        Expanded(
                          child: TransactionMembersTile(
                            size: width/8,
                            type: TransactionType.billSplitter, 
                            members: members
                          )
                        ),
                    
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Status',
                                style: TextStyle(
                                  color: AppColor.lightGray,
                                  fontSize: FontSize.s12,
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 4),
                    
                              StatusText(status: status, size: width/32)
                            ],
                          ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  } 
}

_buildSubTitle(TransactionType type, List<UserInput> members) {
  switch (type) {
    case TransactionType.moneyPool:
    return TransactionCardSubtitle(
      text1: "Money Pool with ", 
      text2: members.length.toString(), 
      text3: " People"
    );
    case TransactionType.betsAndWager:
    return TransactionCardSubtitle(
      text1: "Wager with ", 
      text2: members[0].username, 
    );
    case TransactionType.secureSales:
    return TransactionCardSubtitle(
      text1: "Sales with", 
      text2: members[0].username, 
    );
    case TransactionType.billSplitter:
    return TransactionCardSubtitle(
      text1: "Split Between ", 
      text2: members.length.toString(), 
      text3: " People"
    );
    case TransactionType.groupGoals:
    return TransactionCardSubtitle(
      text1: "Goal between ", 
      text2: members.length.toString(), 
      text3: " People"
    );
    default:
    return TransactionCardSubtitle(
      text1: "Money Pool with", 
      text2: members.length.toString(), 
      text3: "People"
    );
  }
}

_buildMembersTitle(TransactionType type, List<UserInput> members){
  switch (type) {
    case TransactionType.betsAndWager:
    case TransactionType.secureSales:
      return "Member";
    case TransactionType.billSplitter:
      return "Members";
    case TransactionType.moneyPool:
    case TransactionType.groupGoals:
      return "Contributors";
    default:
    return "Contributors";
  }
}