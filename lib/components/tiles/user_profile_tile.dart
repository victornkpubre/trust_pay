// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:trust_pay_polaris/components/base/app_types.dart';
import 'package:trust_pay_polaris/components/base/base.dart';
import 'package:trust_pay_polaris/components/base/user_image.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';

class TransactionInput {
  final DateTime createdAt;
  final TransactionStatus status;
  TransactionInput({
    required this.createdAt,
    required this.status,
  });
}


class UserProfileTile extends StatelessWidget {
  final String username;
  final String image;
  final String? account;
  final Color? primaryColor;
  final Color? secondaryColor;
  final int? salesTotal;
  final int? salesCompleted;
  final bool expanded;
  final TransactionInput? transaction;
  const UserProfileTile({super.key, required this.username, required this.image, this.account, this.primaryColor, this.secondaryColor, required this.expanded, this.transaction, this.salesTotal, this.salesCompleted});

  @override
  Widget build(BuildContext context) {
    return Column(
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
              UserImage(image: image),
              const SizedBox(width: 8),
                    
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          username,
                          style: TextStyle(
                            color: primaryColor??AppColor.fontGray,
                            fontSize: 14,
                            fontFamily: 'Source Sans Pro',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 6),

                        transaction != null? Text(
                          '${parseDateTimeLapse(transaction!.createdAt)} ago',
                          style: TextStyle(
                            color: AppColor.gray,
                            fontSize: 11,
                            fontFamily: 'Source Sans Pro',
                            fontWeight: FontWeight.w600,
                          ),
                        ): Container(),
                      ],
                    ),
                    transaction == null? Text(
                      account??'',
                      style: TextStyle(
                        color: secondaryColor??AppColor.gray,
                        fontSize: 12,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w400,
                      ),
                    ):
                    Row(
                      children: [
                        SvgPicture.asset(
                          getStatsIcon(transaction!.status),
                          height: 16,
                          width: 16,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(width: 4),

                        Text(
                          'Transaction ${getStatsTitle(transaction!.status)}',
                          style: TextStyle(
                            color: AppColor.gray,
                            fontSize: 12,
                            fontFamily: 'Source Sans Pro',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        !expanded?Container(): SizedBox(height: 4),
        
        !expanded?Container(): SizedBox(
          width: double.infinity,
          child: Text(
            salesCompleted == null && salesTotal == null? "0 Trades - 0% completion rate":
            '${salesTotal} Trades - ${(salesCompleted!/salesTotal!)}% completion rate',
            style: TextStyle(
              color: AppColor.white,
              fontSize: 12,
              fontFamily: 'Source Sans Pro',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}