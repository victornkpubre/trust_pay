
import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/components/data_cards/user_input.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';
import 'package:trust_pay_polaris/components/style/image_manager.dart';
import 'package:trust_pay_polaris/components/tiles/account_tile_primary.dart';
import 'package:trust_pay_polaris/components/tiles/account_tile_secondary.dart';
import 'package:trust_pay_polaris/components/tiles/countdown_tile.dart';
import 'package:trust_pay_polaris/components/tiles/obligation_info_tile.dart';
import 'package:trust_pay_polaris/components/tiles/status_tile.dart';
import 'package:trust_pay_polaris/components/tiles/transaction_members_tile.dart';
import 'package:trust_pay_polaris/components/tiles/transaction_title_tile.dart';
import 'package:trust_pay_polaris/components/tiles/user_profile_tile.dart';
import 'package:trust_pay_polaris/components/tiles/notice_tile.dart';
import 'package:trust_pay_polaris/components/base/app_types.dart';

class Tiles extends StatelessWidget {
  const Tiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("TILES", style: TextStyle(fontSize: 32)),
        const SizedBox(height: 32),

        const AccountTilePrimary(number: "00095435656", width: 335),
        const SizedBox(height: 32),

        const AccountTileSecondary(title: "#637728"),
        const SizedBox(height: 32),

        const CountdownTile(
          days: 4,
          hours: 5,
          minutes: 25,
        ),
        const SizedBox(height: 32),

        const ObligationInfoTile(
          title: "Aso-ebi Outfit",
          token: "342356",
          width: 335,
        ),
        const SizedBox(height: 32),

        const StatusTile(
          status: TransactionStatus.pending,
          size: 12,
        ),
        const SizedBox(height: 32),

        Row(
          children: [
            Expanded(
              child: TransactionMembersTile(
                size: 40,
                type: TransactionType.moneyPool, 
                members:  [
                  UserInput(
                    image: ProfileIconAssets.avatar, 
                    username: "Sarah Doe", 
                    account: "#4234564", 
                    totalTransaction: 25, 
                    completionRate: 89
                  ),
                  UserInput(
                    image: ProfileIconAssets.avatar, 
                    username: "Sarah Doe", 
                    account: "#4234564", 
                    totalTransaction: 25, 
                    completionRate: 89
                  ),
                  UserInput(
                    image: ProfileIconAssets.avatar, 
                    username: "Sarah Doe", 
                    account: "#4234564", 
                    totalTransaction: 25, 
                    completionRate: 89
                  ),
                  UserInput(
                    image: ProfileIconAssets.avatar, 
                    username: "Sarah Doe", 
                    account: "#4234564", 
                    totalTransaction: 25, 
                    completionRate: 89
                  ),
                  UserInput(
                    image: ProfileIconAssets.avatar, 
                    username: "Sarah Doe", 
                    account: "#4234564", 
                    totalTransaction: 25, 
                    completionRate: 89
                  )
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 32),

        const TransactionTitleTile(
          type: TransactionType.betsAndWager,
          fontSize: 14,
          iconSize: 20,
        ),
        const SizedBox(height: 32),

        UserProfileTile(
          username: "username", 
          image: ProfileIconAssets.avatar, 
          account: '#6723432', 
          primaryColor: AppColor.primary, 
          secondaryColor: AppColor.amber, 
          expanded: false
        ),
        const SizedBox(height: 32),

        UserProfileTile(
          username: "username", 
          image: ProfileIconAssets.avatar, 
          account: '#6723432', 
          primaryColor: AppColor.fontGray, 
          secondaryColor: AppColor.amber, 
          expanded: false,
          transaction: TransactionInput(
            status: TransactionStatus.completed,
            createdAt: DateTime(2024, 6, 22, 19, 0)
          ),
        ),
        const SizedBox(height: 32),

        NoticeTile(
          width: MediaQuery.of(context).size.width,
          accepted: false,
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}