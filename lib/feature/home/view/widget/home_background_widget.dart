import 'package:flutter/material.dart';
import 'package:islamiapp/core/assets.dart';
import 'package:islamiapp/core/colors.dart';
import 'package:islamiapp/core/dimentions.dart';

class HomeBackgroundWidget extends StatelessWidget {
  const HomeBackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage(AssetsData.tajMahalAgraIndiaImage),
          width: Dimensions.screenWidth(context),
          height: Dimensions.screenHeight(context),
          fit: BoxFit.cover,
        ),
        Container(
          width: Dimensions.screenWidth(context),
          height: Dimensions.screenHeight(context),
          decoration: BoxDecoration(
            color: AppColors.blackColor.withValues(alpha: .8),
          ),
        ),
      ],
    );
  }
}
