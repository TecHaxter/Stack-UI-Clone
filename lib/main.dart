import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_stack/pages/home.dart';
import 'package:get_stack/pages/rewards.dart';
import 'package:get_stack/pages/stack.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(GetStack());
}

class GetStack extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack App',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.poppinsTextTheme()),
      home: Main(title: 'Main'),
    );
  }
}

class Main extends StatefulWidget {
  Main({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int currentPage = 0;

  Color bgColor = Colors.white;

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          children: [Home(), Rewards(), CreateStack()],
        ),
      ),
      // bottomNavigationBar: CircleBottomNavigationBar(
      //   initialSelection: currentPage,
      //   circleColor: Colors.blue,
      //   activeIconColor: Colors.white,
      //   inactiveIconColor: Colors.grey,
      //   barHeight: 100.0,

      //   tabs: [
      //     TabData(
      //       icon: Icons.Main,
      //       iconSize: 25.0, // Optional
      //       title: 'Main', // Optional
      //       fontSize: 12, // Optional
      //     ),
      //     TabData(icon: Icons.ac_unit_rounded),
      //     TabData(icon: Icons.bakery_dining_sharp),
      //   ],
      //   onTabChangedListener: (index) => setState(() => currentPage = index),
      // )
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: currentPage != 2
          ? FloatingActionButton(
              onPressed: () {
                setState(() {
                  currentPage = 2;
                });
                pageController
                    .animateToPage(2,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn)
                    .then((value) {
                  setState(() {
                    bgColor = Colors.grey[850]!;
                  });
                });
              },
              backgroundColor: Colors.indigoAccent,
              child: FaIcon(
                FontAwesomeIcons.layerGroup,
                size: 25.0,
                color: currentPage == 2 ? Colors.white : Colors.white60,
              ),
            )
          : null,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Colors.indigoAccent,
        iconSize: 25.0,
        activeColor: Colors.white,
        inactiveColor: Colors.white60,
        icons: [FontAwesomeIcons.home, FontAwesomeIcons.gift],
        activeIndex: currentPage,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) {
          setState(() {
            currentPage = index;
            bgColor = Colors.white;
          });
          pageController.animateToPage(index,
              duration: Duration(milliseconds: 500), curve: Curves.easeIn);
        },
        //other params
      ),
    );
  }
}
