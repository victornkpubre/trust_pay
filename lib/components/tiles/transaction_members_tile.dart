import 'dart:math';

import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/components/data_cards/user_input.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';
import 'package:trust_pay_polaris/components/tiles/user_profile_tile.dart';
import 'package:trust_pay_polaris/components/base/user_image.dart';
import 'package:trust_pay_polaris/components/base/app_types.dart';

class TransactionMembersTile extends StatelessWidget {
  final TransactionType type;
  final List<UserInput> members;
  final double size;
  const TransactionMembersTile({super.key, required this.type, required this.members, required this.size});

  @override
  Widget build(BuildContext context) {
    return _buildMembersSection(type, members, size);
  }
}

_buildMembersSection(TransactionType type, List<UserInput> members, size){
  switch (type) {
    case TransactionType.betsAndWager:
    case TransactionType.secureSales:
      return _buildUserWidget(members[0]);
    case TransactionType.moneyPool:
    case TransactionType.billSplitter:
    case TransactionType.groupGoals:
      return _buildMembersWidget(members, size);
    default:
    return _buildUserWidget(members[0]);
  }
}

_buildUserWidget(UserInput member){
  return UserProfileTile(
    username: member.username,
    image: member.image,
    account: member.account,
    primaryColor: AppColor.white,
    secondaryColor: AppColor.white,
    expanded: true,
  );

}

_buildMembersWidget(List<UserInput> members, size) {
  List<Positioned> widgetList = [];
    widgetList.add(
      Positioned(
        child: Container(
          height: size,
          width: size,
          decoration: ShapeDecoration(
            color: const Color(0xFFF9EFFF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          child: Center(
            child: Text(
              "+${members.length - 4}"
            ),
          ),
        ),
      ),
    );

    for (var i = 0; i < min(4, members.length) ; i++) {
      var item = members[i];
      widgetList.add(Positioned(
        left: 28.0*i,
        child:UserImage(
          image: item.image,
          height: size,
          width: size,
        ),
      ));
    }

    members.length > 4?widgetList.add(
      Positioned(
      left: 28*4,
      child: Container(
        height: size,
        width: size,
        decoration: ShapeDecoration(
          color: const Color(0xFFF9EFFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        child: Center(
          child: Text(
            "+${members.length - 4}"
          ),
        ),
      ),
    )
  ): Container();

  return Stack(
    children: widgetList
  );
}

