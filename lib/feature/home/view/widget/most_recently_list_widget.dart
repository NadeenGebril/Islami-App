import 'package:flutter/material.dart';
import 'package:islamiapp/core/assets.dart';
import 'package:islamiapp/core/colors.dart';
import 'package:islamiapp/core/dimentions.dart';
import 'package:islamiapp/core/styles.dart';

class MostRecentlyListWidget extends StatelessWidget {
  const MostRecentlyListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimensions.screenHeight(context) / 6,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(
              left: index == 0 ? 20 : 5,
              right: 5,
              top: 10,
            ),
            decoration: BoxDecoration(
              color: AppColors.goldColor,
              borderRadius: BorderRadius.circular(20),
            ),
            width: Dimensions.screenWidth(context) / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Al-Anbiya', style: AppTextStyles.textStyleBlack24),
                      Text('الانبياء', style: AppTextStyles.textStyleBlack24),
                      Text('112 Verses', style: AppTextStyles.textStyleBlack14),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    AssetsData.readingImage,
                    color: AppColors.blackColor,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
