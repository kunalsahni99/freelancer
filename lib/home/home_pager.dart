import 'package:flutter/material.dart';

import 'home.dart';
import 'category.dart';
import 'profile.dart';

class HomePager extends StatefulWidget {
  @override
  _HomePagerState createState() => _HomePagerState();
}

class _HomePagerState extends State<HomePager> {
  PageController controller = PageController(
    initialPage: 1
  );

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: [
        Profile(),
        Home(pageController: controller),
        Category(pageController: controller)
      ],
    );
  }
}