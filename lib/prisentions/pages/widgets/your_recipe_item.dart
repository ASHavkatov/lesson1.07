import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson107/utils/utils.dart';
class YourRecipeItem extends StatelessWidget {
  const YourRecipeItem(
      {super.key,
        required this.image,
        required this.title,
        required this.desc,
      required this.star});

  final String image, title, desc, star;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 169,
      height: 195,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: SizedBox(
                width: 169,
                height: 162,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -20,
            child: Container(
              width: 169,
              height: 48,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                           Text(
                            star,
                            style: const TextStyle(color: AppColors.textColor),
                          ),
                          SvgPicture.asset("assets2/star.svg")
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset("assets2/clock.svg"),
                          Text(
                            desc,
                            style: const TextStyle(color: AppColors.textColor),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}