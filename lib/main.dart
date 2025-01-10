import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson_114/utils/constants.dart';
import 'package:lesson_114/widgets/categories_details.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.backgroundDark,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundDark,
        centerTitle: true,
        leading: Center(
            child: SvgPicture.asset(
                "assets/svg/arrow.svg",
            width: 30,
            height: 20,
            fit: BoxFit.cover,)
        ),
        title: Text(
          "Categories",
          style: TextStyle(
              color: AppColors.redPinkMain,
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
        ),
        actions: [
          AppBarActionItem(image: "assets/svg/notification.svg",),
          SizedBox(width: 5,),
          AppBarActionItem(image: "assets/svg/search.svg"),
          SizedBox(width: 20,)
        ],
      ),
      body:  ListView(
        padding: EdgeInsets.only(bottom: 120),
        children: [
          CategoryItemMain(image: "assets/images/seafood.png", text: "Seafood"),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            CategoryItem(image: "assets/images/lunch.png", text:"Lunch" ),
            CategoryItem(image: "assets/images/breakfast.png", text:"Breakfast" ),
          ],
          ),
          SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            CategoryItem(image: "assets/images/dinner.png", text: "Dinner"),
            CategoryItem(image: "assets/images/vegan.png", text: "Vegan"),
          ],
          ),
          SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            CategoryItem(image: "assets/images/dessert.png", text: "Desserts"),
            CategoryItem(image: "assets/images/drinks.png", text: "Driinks"),
          ],
          ),
        ],
      ),
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
      child: Container(
        width: 281,
        height: 56,
        decoration: BoxDecoration(color: AppColors.redPinkMain,
        borderRadius: BorderRadius.circular(33)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset("assets/svg/home.svg"),
            SvgPicture.asset("assets/svg/community.svg"),
            SvgPicture.asset("assets/svg/categories.svg"),
            SvgPicture.asset("assets/svg/profile.svg")
          ],
        ),
      ),
    );
  }
}


class CategoryItemMain extends StatelessWidget {
  const CategoryItemMain({
    
  super.key,
  required this.image,
  required this.text,
});
final String image , text;
@override
Widget build(BuildContext context) {
  return Column(
    children: [
      Text(
        text,
        style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w600
        ),
      ),
      SizedBox(height: 10,),
      Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Image.asset(image,
            width: 356,
            height: 149,
            fit: BoxFit.cover  ,
          ),
        ),
      ),
    ],
  );
}
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.image,
    required this.text,
  });
final String image , text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(13),
            child: Image.asset(image,
            width: 159,
            height: 145,
            fit: BoxFit.cover  ,
            ),
          ),
        ),
        SizedBox(height: 10,),
        Text(
          text,
          style: TextStyle(
              color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w600
          ),
        )
      ],
    );
  }
}


class AppBarActionItem extends StatelessWidget {
  const AppBarActionItem({super.key, required this.image});
final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
        height: 28,
        decoration: BoxDecoration(
            color: AppColors.pink,
            borderRadius: BorderRadius.circular(14),
        ),
        child: SvgPicture.asset(image,
          width: 12,
          height: 18,
          fit: BoxFit.fill,
        )
    );
  }
}
