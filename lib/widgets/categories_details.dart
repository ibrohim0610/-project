import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson_114/utils/constants.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: AppColors.BackgroundColor,
        leading: Container(
          padding:  EdgeInsets.all(12),
          child: SvgPicture.asset(
            "assets/svg/arrow.svg",
            width: 30,
            height: 14,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Breakfast",
          style: TextStyle(
            color: AppColors.RedPinkMain,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Row(
            children: [
              AppBarContainer(svg: "assets/svg/notification.svg"),
              SizedBox(
                width: 5,
              ),
              AppBarContainer(svg: "assets/svg/search.svg"),
              SizedBox(width: 10),
            ],
          ),
        ],
        bottom: AppBarBottom(),
      ),
      backgroundColor: AppColors.BackgroundColor,
      body: ListView(
        padding: EdgeInsets.only(bottom:0),
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CategoriesItem(
                      image: "assets/images/eggs_benedict.png",
                      food_name: "Eggs Benedict ",
                      about: "Muffin with Canadian bacon",
                      rating: "5",
                      time: "15min"),
                  CategoriesItem(
                      image: "assets/images/french_toast.png",
                      food_name: "French Toast",
                      about: "Delicious slices of bread",
                      rating: "5",
                      time: "20min"),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CategoriesItem(
                      image: "assets/images/oatmeal_and_nut.png",
                      food_name: "Oatmeal and Nut ",
                      about: "Wholesome blend for breakfast",
                      rating: "4",
                      time: "35min"),
                  CategoriesItem(
                      image: "assets/images/still_life_potato.png",
                      food_name: "Still Life Potato",
                      about: "Earthy, textured, rustic charm",
                      rating: "4",
                      time: "30min"),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CategoriesItem(
                      image: "assets/images/oatmeal_granola.png",
                      food_name: "Oatmeal Granola",
                      about: "Strawberries and Blueberries",
                      rating: "4",
                      time: "30min"),
                  CategoriesItem(
                      image: "assets/images/sunny_bruschetta.png",
                      food_name: "Sunny Bruschetta",
                      about: "With Cream Cheese.......... ",
                      rating: "4",
                      time: "30min"),
                ],
              ),
              SizedBox(height: 100),
            ],
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 281,
            height: 56,
            decoration: BoxDecoration(
              color: AppColors.RedPinkMain,
              borderRadius: BorderRadius.circular(33),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset("assets/svg/home.svg"),
                SvgPicture.asset("assets/svg/community.svg"),
                SvgPicture.asset("assets/svg/categories.svg"),
                SvgPicture.asset("assets/svg/profile.svg"),

              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class AppBarBottom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarBottom({super.key});

  Size get preferredSize => Size(double.infinity, 39);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextItem(text: "Breakfast"),
          TextItem(text: "Lunch"),
          TextItem(text: "Dinner"),
          TextItem(text: "Vegan"),
        ],
      ),
    );
  }
}

class AppBarContainer extends StatelessWidget {
  const AppBarContainer({super.key, required this.svg});

  final String svg;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: AppColors.Pink,
      ),
      child: Center(
        child: SvgPicture.asset(svg),
      ),
    );
  }
}

class TextItem extends StatelessWidget {
  const TextItem({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.RedPinkMain,
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
    );
  }
}

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({
    super.key,
    required this.image,
    required this.food_name,
    required this.about,
    required this.rating,
    required this.time,
  });

  final image, food_name, about, rating, time;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 168,
      height: 226,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: -10,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 153,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(14),
                    bottomRight: Radius.circular(14),
                  ),
                  border: Border(
                    left: BorderSide(color: AppColors.RedPinkMain),
                    right: BorderSide(color: AppColors.RedPinkMain),
                    bottom: BorderSide(color: AppColors.RedPinkMain),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        food_name,
                        style: TextStyle(
                            color: AppColors.TextsColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 12),
                      ),
                      Text(
                        about,
                        style: TextStyle(
                            color: AppColors.TextsColor,
                            fontWeight: FontWeight.w300,
                            fontSize: 13),
                      ),
                      Row(
                        //asosiy
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                rating,
                                style: TextStyle(
                                    color: AppColors.RatingColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                              SizedBox(width: 4),
                              SvgPicture.asset("assets/svg/star.svg"),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset("assets/svg/clock.svg"),
                              SizedBox(width: 4),
                              Text(
                                time,
                                style: TextStyle(
                                    color: AppColors.RatingColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image(
              image: AssetImage(image),
              width: 169,
              height: 153,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 7,
            right: 8,
            child: Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                color: AppColors.pink,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Center(
                child: SvgPicture.asset("assets/svg/heart.svg"),
              ),
            ),
          )
        ],
      ),
    );
  }
}