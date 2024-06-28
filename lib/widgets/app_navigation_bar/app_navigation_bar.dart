import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../styles/theme/app_colors.dart';
import '../../styles/theme/app_text_style.dart';
import 'nav_bar_item.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 80,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(bottom: 17, right: 21, left: 21),
        decoration: const BoxDecoration(
            color: AppColors.navBarColor,
            borderRadius: BorderRadius.all(Radius.circular(24))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              3,
                  (index) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  navBarItemList[index].icon,
                  navBarItemList[index].title,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

final List<NavBarItem> navBarItemList = [
  NavBarItem(
    title: const Text("Знакомства", style: AppTextStyle.navBarActiveTextStyle),
    icon: const Icon(
      IconsaxPlusBold.heart_search,
      color: AppColors.navBarActiveIconColor,
      size: 32,
    ),
  ),
  NavBarItem(
    title: Text("Сообщения", style: AppTextStyle.navBarDeactiveTextStyle),
    icon: Icon(
      IconsaxPlusBold.message,
      color: AppColors.navBarDeactiveIconColor,
      size: 32,
    ),
  ),
  NavBarItem(
    title: Text("Профиль", style: AppTextStyle.navBarDeactiveTextStyle),
    icon: Icon(
      IconsaxPlusBold.profile,
      color: AppColors.navBarDeactiveIconColor,
      size: 32,
    ),
  ),
];
