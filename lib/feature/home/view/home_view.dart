import 'package:flutter/material.dart';
import 'package:islamiapp/core/assets.dart';
import 'package:islamiapp/core/colors.dart';
import 'package:islamiapp/core/helper/header_widget.dart';
import 'package:islamiapp/core/styles.dart';
import 'package:islamiapp/feature/home/view/widget/home_background_widget.dart';
import 'package:islamiapp/feature/home/view/widget/most_recently_list_widget.dart';
import 'package:islamiapp/feature/home/view/widget/search_text_field_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Stack(
        children: [
          HomeBackgroundWidget(),
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: HeaderWidget()),
              SliverToBoxAdapter(child: SearchTextFieldWidget()),
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsGeometry.only(left: 20, top: 20),
                      child: Text(
                        'Most Recently',
                        style: AppTextStyles.textStyleWhite16,
                      ),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(child: MostRecentlyListWidget()),
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsGeometry.only(
                        left: 20,
                        top: 20,
                        bottom: 10,
                      ),
                      child: Text(
                        'Suras List',
                        style: AppTextStyles.textStyleWhite16,
                      ),
                    ),
                  ],
                ),
              ),
              SliverList.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                AssetsData.suraNumberFrameImage,
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '${index + 1}',
                              style: AppTextStyles.textStyleWhite16,
                            ),
                          ),
                        ),
                        title: Text(
                          'Sura ${index + 1}',
                          style: AppTextStyles.textStyleWhite20,
                        ),
                        subtitle: Text(
                          '${index + 1} Verses',
                          style: AppTextStyles.textStyleWhite14,
                        ),
                        trailing: Text(
                          'الفاتحه',
                          style: AppTextStyles.textStyleWhite20,
                        ),
                      ),
                      Divider(
                        color: AppColors.whiteColor,
                        endIndent: 60,
                        indent: 60,
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
