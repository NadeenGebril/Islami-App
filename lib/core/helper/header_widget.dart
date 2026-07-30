import 'package:flutter/material.dart';
import 'package:islamiapp/core/assets.dart';
import 'package:islamiapp/core/dimentions.dart';
import 'package:islamiapp/core/styles.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimensions.screenHeight(context) / 3.8,
      width: Dimensions.screenWidth(context),
      child: Stack(
        children: [
          Positioned(
            top: Dimensions.screenHeight(context) / 6,
            right: 0,
            left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Islami', style: AppTextStyles.textStyleGold80)],
            ),
          ),
          Positioned(
            top: Dimensions.screenHeight(context) / 12,
            right: 60,
            left: 60,
            child: Image(image: AssetImage(AssetsData.mosque01Image)),
          ),
        ],
      ),
    );
  }
}
