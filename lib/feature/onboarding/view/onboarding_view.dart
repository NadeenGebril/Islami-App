import 'package:flutter/material.dart';
import 'package:islamiapp/core/colors.dart';
import 'package:islamiapp/core/dimentions.dart';
import 'package:islamiapp/core/helper/header_widget.dart';
import 'package:islamiapp/core/styles.dart';
import 'package:islamiapp/feature/onboarding/model/onboarding_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Column(
        children: [
          HeaderWidget(),
          Expanded(
            child: PageView.builder(
              controller: controller,
              scrollDirection: Axis.horizontal,
              itemCount: onboardingItems.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: Dimensions.screenHeight(context) / 2.5,
                        width: Dimensions.screenWidth(context),
                        child: Image.asset(
                          onboardingItems[index].image,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Text(
                        onboardingItems[index].title,
                        style: AppTextStyles.textStyleGold24,
                      ),
                      Text(
                        onboardingItems[index].description,
                        style: AppTextStyles.textStyleGold18,
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Visibility(
                            visible: index != 0,
                            maintainSize: true,
                            maintainAnimation: true,
                            maintainState: true,
                            child: GestureDetector(
                              onTap: () {
                                controller.previousPage(
                                  duration: Duration(milliseconds: 1),
                                  curve: Curves.ease,
                                );
                              },
                              child: Text(
                                'Back',
                                style: AppTextStyles.textStyleGold16,
                              ),
                            ),
                          ),
                          SmoothPageIndicator(
                            controller: controller,
                            count: onboardingItems.length,
                            effect: ExpandingDotsEffect(
                              dotWidth: 10,
                              dotHeight: 10,
                              dotColor: AppColors.grayColor,
                              activeDotColor: AppColors.goldColor,
                            ),
                          ),

                          GestureDetector(
                            onTap: () {
                              controller.nextPage(
                                duration: Duration(milliseconds: 1),
                                curve: Curves.ease,
                              );
                            },
                            child: Text(
                              'Next',
                              style: AppTextStyles.textStyleGold16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              physics: AlwaysScrollableScrollPhysics(),
            ),
          ),
        ],
      ),
    );
  }
}
