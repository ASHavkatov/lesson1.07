import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson107/utils/utils.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 281,
        height: 56,
        decoration: BoxDecoration(
          color: AppColors.textColor,
          borderRadius: BorderRadius.circular(33),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset("assets2/home.svg"),
            SvgPicture.asset("assets2/community.svg"),
            SvgPicture.asset("assets2/categories.svg"),
            SvgPicture.asset("assets2/profile.svg"),
          ],
        ),
      ),
    );
  }
}
