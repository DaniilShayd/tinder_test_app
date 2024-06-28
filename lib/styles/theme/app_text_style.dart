import 'package:flutter/material.dart';
import 'package:tinder_test_app/styles/theme/app_colors.dart';

abstract class AppTextStyle{
  static const TextStyle navBarActiveTextStyle = TextStyle(
    fontFamily: 'Manrope',
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: AppColors.navBarActiveIconColor,
  );
  static TextStyle navBarDeactiveTextStyle = TextStyle(
    fontFamily: 'Manrope',
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: AppColors.navBarDeactiveIconColor,
  );

  static TextStyle appBarTextStyle = const TextStyle(
      fontFamily: 'Hauora',
      fontWeight: FontWeight.w400,
      fontSize: 16,
  );

  static TextStyle CardHeadlineTextStyle = const TextStyle(
    fontFamily: 'Hauora',
    fontWeight: FontWeight.w700,
    fontSize: 32,
    color: Colors.white,
  );

  static TextStyle CardBodyTextStyle = const TextStyle(
  fontFamily: 'Hauora',
  fontWeight: FontWeight.w500,
  fontSize: 16,
  color: Colors.white,
  );
}
