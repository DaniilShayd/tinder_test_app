import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:tinder_test_app/styles/theme/app_text_style.dart';

class TinderCard extends StatelessWidget {
  const TinderCard(
      {super.key,
      required this.assetPath,
      required this.distation,
      required this.name,
      required this.age});

  final double distation;
  final String name;
  final int age;
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(32),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter:
                      ColorFilter.mode(Colors.black26, BlendMode.darken),
                  fit: BoxFit.cover,
                  image: AssetImage(assetPath)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 36),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$name, $age',
                  style: AppTextStyle.CardHeadlineTextStyle,
                  textAlign: TextAlign.left,
                ),
                Row(
                  children: [
                    const Icon(
                      IconsaxPlusLinear.location,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    Text(
                      'Дистанция $distationкм',
                      style: AppTextStyle.CardBodyTextStyle,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
