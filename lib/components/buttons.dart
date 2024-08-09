import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/components/buttons/add_btn.dart';
import 'package:trust_pay_polaris/components/buttons/alert_btn.dart';
import 'package:trust_pay_polaris/components/buttons/back_button.dart';
import 'package:trust_pay_polaris/components/buttons/email_auth_btn.dart';
import 'package:trust_pay_polaris/components/buttons/facebook_auth_btn.dart';
import 'package:trust_pay_polaris/components/buttons/google_auth_btn.dart';
import 'package:trust_pay_polaris/components/buttons/primary_btn.dart';
import 'package:trust_pay_polaris/components/buttons/main_menu_button.dart';
import 'package:trust_pay_polaris/components/buttons/secondary_btn.dart';
import 'package:trust_pay_polaris/components/buttons/quick_menu_btn.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';
import 'package:trust_pay_polaris/components/style/image_manager.dart';
import 'package:trust_pay_polaris/components/base/app_types.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("BUTTONS", style: TextStyle(fontSize: 32)),
        const SizedBox(height: 32),
        
        const GoogleAuthButton(),
        const SizedBox(height: 32),
      
        const FacebookAuthButton(),
        const SizedBox(height: 32),
      
        const EmailAuthButton(),
        const SizedBox(height: 32),
        
        const PrimaryButton(title: "Accept Transaction"),
        const SizedBox(height: 32),
      
        const AlertButton(title: "Reject Transaction"),
        const SizedBox(height: 32),
      
        const SecondaryButton(title: "Accept Transaction"),
        const SizedBox(height: 32),
      
        const QuickMenuButton(
          type: TransactionType.secureSales,
          size: 32,
        ),
        const SizedBox(height: 8),
      
        const QuickMenuButton(
          type: TransactionType.billSplitter,
          size: 32
        ),
        const SizedBox(height: 8),
      
        const QuickMenuButton(
          type: TransactionType.groupGoals,
          size: 32
        ),
        const SizedBox(height: 8),
      
        const QuickMenuButton(
          type: TransactionType.moneyPool,
          size: 32
        ),
        const SizedBox(height: 8),
      
        const QuickMenuButton(
          type: TransactionType.betsAndWager,
          size: 32
        ),
        const SizedBox(height: 8),
      
        MainMenuButton(
          size: 48, 
          padding: 8,
          icon: SvgIconAssets.menu, 
          background: AppColor.primary
        ),
        const SizedBox(height: 8),
      
        const AppBackButton(
          size: 18, 
        ),
        const SizedBox(height: 8),
      
        const AddButtton(
          title: "Add",
          solid: true,
        ),
        const SizedBox(height: 8),

        const AddButtton(
          title: "Add Contributor",
          solid: true,
        ),
        const SizedBox(height: 8),

        const AddButtton(
          title: "Add User",
          solid: false,
        ),
        const SizedBox(height: 8),
        const SizedBox(height: 64),
        
      ],
    );
  }
}