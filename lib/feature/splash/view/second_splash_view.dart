import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islamiapp/core/assets.dart';
import 'package:islamiapp/core/colors.dart';
import 'package:islamiapp/core/dimentions.dart';

class SecondSplashView extends StatelessWidget {
  const SecondSplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Center(
        child: SvgPicture.asset(
          AssetsData.logoImage,
          color: AppColors.goldColor,
          width: Dimensions.screenWidth(context) / 2,
        ),
      ),
    );
  }
}
