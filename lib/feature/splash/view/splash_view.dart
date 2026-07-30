import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islamiapp/core/assets.dart';
import 'package:islamiapp/core/colors.dart';
import 'package:islamiapp/core/dimentions.dart';
import 'package:islamiapp/core/styles.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage(AssetsData.backgroundImage),
            width: Dimensions.screenWidth(context),
            height: Dimensions.screenHeight(context),
            fit: BoxFit.cover,
          ),
          Center(
            child: SvgPicture.asset(
              AssetsData.logoImage,
              color: AppColors.goldColor,
              width: Dimensions.screenWidth(context) / 2,
            ),
          ),
          Positioned(
            top: Dimensions.screenHeight(context) / 1.75,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Islami',
                  style: AppTextStyles.textStyleGold64.copyWith(height: 0),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Image(image: AssetImage(AssetsData.glowImage), width: 100),
          ),
          Positioned(
            top: 80,
            right: 60,
            left: 60,
            child: Image(image: AssetImage(AssetsData.mosque01Image)),
          ),
          Positioned(
            bottom: 80,
            right: 0,
            child: Image(image: AssetImage(AssetsData.shape04Image), width: 80),
          ),
          Positioned(
            top: 250,
            left: 0,
            child: Image(image: AssetImage(AssetsData.shape07Image), width: 80),
          ),
        ],
      ),
    );
  }
}
