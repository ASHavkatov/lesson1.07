import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lesson107/prisentions/pages/widgets/body_container.dart';
import 'package:lesson107/prisentions/pages/widgets/bottom_nav_bar.dart';
import 'package:lesson107/prisentions/pages/widgets/top_chef.dart';
import 'package:lesson107/utils/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyBackground,
      appBar: AppBar(
        backgroundColor: AppColors.bodyBackground,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Hi! Dianne",
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 25,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "What are you cooking today",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.45,
                  fontWeight: FontWeight.w100,
                ),
              ),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Container(
                    width: 28,
                    height: 28,
                    color: AppColors.actionsColo,
                    child: Center(
                      child: SvgPicture.asset("assets2/noti.svg"),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Container(
                    width: 28,
                    height: 28,
                    color: AppColors.actionsColo,
                    child: Center(
                      child: SvgPicture.asset("assets2/search.svg"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 19,
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Trending Recipe",
                  style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 9,
                ),
                const Image(
                  image: AssetImage("assets2/lesson7_image.png"),
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: AppColors.bodyBackground,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(14),
                      bottomLeft: Radius.circular(14),
                    ),
                    border: Border(
                      right: BorderSide(color: AppColors.boxShadowColor),
                      left: BorderSide(color: AppColors.boxShadowColor),
                      bottom: BorderSide(color: AppColors.boxShadowColor),
                    ),
                  ),
                  height: 49,
                  width: 349,
                  alignment: Alignment.center,
                  child: const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 180),
                        child: Text(
                          "Salami and cheese pizza",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 78),
                        child: Text(
                          "This is a quick overview of the ingredients...",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w100),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 19,
                ),
              ],
            ),
          ),
          const BodyContainer(),
          const SizedBox(
            height: 19,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18),
            child: Text(

              "Top Chef",
              style: TextStyle(color: AppColors.textColor, fontSize: 16, fontWeight:  FontWeight.w500,),
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TopChef(
                image: "assets2/chef1.png",
                name: 'Joseph',
              ),
              TopChef(image: 'assets2/chef2.png', name: 'Andrew'),
              TopChef(image: 'assets2/chef3.png', name: 'Emily'),
              TopChef(image: 'assets2/chef4.png', name: 'Jesicca'),
            ],
          ),
          const SizedBox(height: 20,),
          const BottomNavBar()
        ],
      ),
    );
  }
}


