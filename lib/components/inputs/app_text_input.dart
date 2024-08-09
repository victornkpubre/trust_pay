import 'package:flutter/material.dart';
import 'package:trust_pay_polaris/components/base/app_sizes.dart';
import 'package:trust_pay_polaris/components/style/colors.dart';
import 'package:trust_pay_polaris/components/style/decoration.dart';
import 'package:trust_pay_polaris/components/style/text.dart';

class AppTextInput extends StatefulWidget {
  final String title;
  final TextInputType type;
  final String hint;

  const AppTextInput({super.key, required this.title, required this.type, required this.hint});

  @override
  State<AppTextInput> createState() => _AppTextInputState();
}

class _AppTextInputState extends State<AppTextInput> {
  bool showPassword = false;

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
          const SizedBox(height: 6),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: AppSize.s16, vertical: AppSize.s4),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: widget.type!=TextInputType.visiblePassword? 
                  AppColor.white: AppColor.fontBlack,
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
                  child: TextField(
                    obscureText: widget.type==TextInputType.visiblePassword? 
                        showPassword?  
                          false:true
                        :false,
                    style: appTextGray16,
                    decoration: InputDecoration(
                      hintText: widget.hint,
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(vertical: AppSize.s8),
                      isDense: true,
                    ),
                  ),
                ),

                widget.type != TextInputType.visiblePassword? 
                Container(): InkWell(
                  child: showPassword? 
                    const Icon(Icons.visibility_off, size: IconSize.s18): 
                    const Icon(Icons.visibility, size: IconSize.s18),
                  onTap: () {
                    setState(() {
                      showPassword =  !showPassword;
                    });
                  },
                )
              ],
            ),
          ),
        
        
        ],
      ),
    );
  }
}