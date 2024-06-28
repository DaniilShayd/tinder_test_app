import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:tinder_test_app/styles/theme/app_colors.dart';
import 'package:tinder_test_app/widgets/app_navigation_bar/app_navigation_bar.dart';
import 'package:tinder_test_app/widgets/app_tab_bar/app_tab_bar.dart';
import 'package:tinder_test_app/widgets/tinder_card/tinder_card.dart';

class TinderApp extends StatefulWidget {
  const TinderApp({super.key});

  @override
  State<TinderApp> createState() => _TinderAppState();
}

class _TinderAppState extends State<TinderApp> {
  List<TinderCard> cards = [
    TinderCard(assetPath: 'aseets/card_images/card_image_1.png', distation: 1.2, name: 'Анна', age: 24),
    TinderCard(assetPath: 'aseets/card_images/card_image_2.png', distation: 0.9, name: 'София', age: 19),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.backgroundColor,
            centerTitle: true,
            bottom: const PreferredSize(
              preferredSize: Size(double.maxFinite, 16),
              child: AppTabBar(),
            ),
          ),
          backgroundColor: AppColors.backgroundColor,
          body: CardSwiper(
            cardsCount: cards.length,
            cardBuilder:
                (context, index, percentThresholdX, percentThresholdY) =>
                    cards[index],
          ),
          bottomNavigationBar: const AppNavigationBar(),
        ),
      ),
    );
  }
}
