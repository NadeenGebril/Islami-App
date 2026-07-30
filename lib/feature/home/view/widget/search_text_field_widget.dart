import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islamiapp/core/assets.dart';
import 'package:islamiapp/core/colors.dart';
import 'package:islamiapp/core/styles.dart';

class SearchTextFieldWidget extends StatelessWidget {
  const SearchTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: TextFormField(
        style: AppTextStyles.textStyleWhite16,
        cursorColor: AppColors.goldColor,
        decoration: InputDecoration(
          hint: Text('Sura Name', style: AppTextStyles.textStyleWhite16),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(
              AssetsData.quranSvgrepoComImage,
              color: AppColors.goldColor,
              height: 24,
              width: 24,
            ),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.goldColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.goldColor),
          ),
        ),
      ),
    );
  }
}
