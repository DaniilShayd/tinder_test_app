import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:tinder_test_app/widgets/app_tab_bar/tab_item.dart';

import '../../styles/theme/app_colors.dart';

class AppTabBar extends StatelessWidget {
  const AppTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16, left: 20),
          child: Ink(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.appBarDeactiveColor,
              border: Border.all(color: AppColors.appBarButtonBorderColor, width: 1.0),
              shape: BoxShape.circle,
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(500.0),
              onTap: () {},
              child: Icon(
                IconsaxPlusLinear.candle_2,
                size: 24.0,
                color: AppColors.appBarButtonIconColor,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(24)),
              color: AppColors.appBarDeactiveColor,
            ),
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: Colors.transparent,
              indicator: BoxDecoration(
                color: AppColors.appBarActiveColor,
                borderRadius: const BorderRadius.all(Radius.circular(24)),
              ),
              labelColor: AppColors.appBarActiveTextColor,
              unselectedLabelColor: AppColors.appBarDeactiveTextColor,
              tabs: const [
                TabItem(title: 'Обзор'),
                TabItem(title: 'Мэтчи'),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 16),
          child: Ink(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.appBarDeactiveColor,
              border: Border.all(color: AppColors.appBarButtonBorderColor, width: 1.0),
              shape: BoxShape.circle,
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(500.0),
              onTap: () {},
              child: Icon(
                IconsaxPlusLinear.notification,
                size: 24.0,
                color: AppColors.appBarButtonIconColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
