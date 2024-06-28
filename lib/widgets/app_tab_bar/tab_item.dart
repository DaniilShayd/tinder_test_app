import 'package:flutter/material.dart';
import 'package:tinder_test_app/styles/theme/app_text_style.dart';

class TabItem extends StatelessWidget {
  final String title;

  const TabItem({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyle.appBarTextStyle,
          ),
        ],
      ),
    );
  }
}