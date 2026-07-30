import 'package:flutter/material.dart';
import 'package:islamiapp/core/assets.dart';
import 'package:islamiapp/feature/home/model/bottom_nav_item_model.dart';
import 'package:islamiapp/feature/home/view/home_view.dart';
import 'package:islamiapp/feature/home/view/widget/bottom_nav_item.dart';

class ButtomNavBar extends StatefulWidget {
  const ButtomNavBar({super.key});

  @override
  State<ButtomNavBar> createState() => _ButtomNavBarState();
}

class _ButtomNavBarState extends State<ButtomNavBar> {
  int currentIndex = 0;

  final List<Widget> screens = const [
    HomeView(),
    HomeView(),
    HomeView(),
    HomeView(),
    HomeView(),
  ];

  final List<BottomNavItemModel> items = [
    BottomNavItemModel(icon: AssetsData.quranSvgrepoComImage, label: "Quran"),
    BottomNavItemModel(icon: AssetsData.book1SvgrepoComImage, label: "Hadith"),
    BottomNavItemModel(
      icon: AssetsData.pearlNecklaceWithDiamondPendantSvgrepoComImage,
      label: "Sebha",
    ),
    BottomNavItemModel(
      icon: AssetsData.radioMinimalisticSvgrepoComImage,
      label: "Radio",
    ),
    BottomNavItemModel(icon: AssetsData.book1SvgrepoComImage, label: "Time"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: IndexedStack(index: currentIndex, children: screens),

      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // page
          Expanded(
            child: SafeArea(bottom: false, child: screens[currentIndex]),
          ),
          //navbar
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: const BoxDecoration(color: Color(0xffE2BE7F)),
            child: SafeArea(
              top: false,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  items.length,
                  (index) => BottomNavItem(
                    item: items[index],
                    isSelected: currentIndex == index,
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
