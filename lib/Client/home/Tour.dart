
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:go_router/go_router.dart';

import '../authentication/LoginPage.dart';

class CarouselScreen extends StatefulWidget {
  @override
  _CarouselScreenState createState() => _CarouselScreenState();
}

class _CarouselScreenState extends State<CarouselScreen> {
  final List<String> imagePaths = [
    'assets/images/tour1.png',
    'assets/images/tour2.png',
    'assets/images/tour3.png',
// assets added
  ];

  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
       // Login page in the background
        Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              Positioned.fill(
                top: 10, // Distance added at the top
                child: CarouselSlider(
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                    autoPlayInterval: Duration(seconds: 4),
                    height:
                        dimension.screenHeight * 0.8, // Adjusted image height
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentPageIndex = index;
                      });
                      if (index == imagePaths.length - 1) {
                        Future.delayed(Duration(seconds: 4), () {
                          GoRouter.of(context).go('/log');
                        });
                      }
                    },
                  ),
                  items: imagePaths.map((path) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Image.asset(
                            path,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              Positioned(
                top: dimension.height100,
                right: dimension.width50,
                child: InkWell(
                  onTap: () {
                    GoRouter.of(context).go('/log');
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: dimension.width10),
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Color.fromARGB(255, 80, 80, 81),
                        fontSize: dimension.font24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
