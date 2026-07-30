import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islamiapp/feature/home/model/bottom_nav_item_model.dart';

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    super.key,
    required this.item,
    required this.isSelected,
    required this.onTap,
  });

  final BottomNavItemModel item;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: onTap,
      child: Column(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            padding: EdgeInsets.symmetric(
              horizontal: isSelected ? 14 : 8,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              color: isSelected
                  ? Colors.black.withOpacity(.5)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(30),
            ),
            child: SvgPicture.asset(
              item.icon,
              width: 24,
              height: 24,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
          if (isSelected) ...[
            const SizedBox(width: 8),
            Text(
              item.label,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
