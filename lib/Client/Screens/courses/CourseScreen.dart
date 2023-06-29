import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _DsaScreenState();
}

class _DsaScreenState extends State<CourseScreen> {
  final double imageHeight = dimension.height113;
  final double imageWidth = dimension.width110;
  final double containerWidth = dimension.width110;
  final double containerHeight = dimension.height115;
  final double borderRadius = dimension.val10;
  final double spacing = dimension.val20;
  final double runSpacing = dimension.val20;
  final Duration tapDelay = Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        toolbarHeight: dimension.val70,
        centerTitle: true,
        title: bigText(
          text: "Full Stack Courses",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: dimension.width25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  bigText(
                    text: 'Web Development',
                    size: dimension.font24,
                  ),
                  SizedBox(height: dimension.val20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Wrap(
                      spacing: spacing,
                      runSpacing: runSpacing,
                      children: [
                        _buildFeatureContainer(
                          imageAsset:
                              'https://i.pinimg.com/originals/39/bc/07/39bc075f675821e60d06ac42cb125ffb.png',
                          onTap: () => _navigateTo('/courses/basicwebdev'),
                        ),
                        _buildFeatureContainer(
                          imageAsset:
                              'https://i.pinimg.com/564x/0c/92/16/0c92162e83308b464eabf33f9b1c41b8.jpg',
                          onTap: () => _navigateTo('/courses/javascript'),
                        ),
                        _buildFeatureContainer(
                          imageAsset:
                              'https://i.pinimg.com/564x/7c/9e/03/7c9e0391a1f364502d7c8b962657d031.jpg',
                          onTap: () => _navigateTo('/courses/mernstack'),
                        ),
                        _buildFeatureContainer(
                          imageAsset:
                              'https://i.pinimg.com/564x/d4/84/55/d48455bcb05c3061de03c2be7f27c48c.jpg',
                          onTap: () => _navigateTo('/courses/mernproject'),
                        ),
                        _buildFeatureContainer(
                          imageAsset:
                              'https://i.pinimg.com/564x/84/9b/48/849b48172509031cb4a4ad223cbc8ebc.jpg',
                          onTap: () => _navigateTo('/basicwebdev'),
                        ),
                        _buildFeatureContainer(
                          imageAsset:
                              'https://i.pinimg.com/564x/84/9b/48/849b48172509031cb4a4ad223cbc8ebc.jpg',
                          onTap: () => _navigateTo('/basicwebdev'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: dimension.val20),
            Padding(
              padding: EdgeInsets.only(left: dimension.width25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  bigText(
                    text: 'Data Science',
                    size: dimension.font24,
                  ),
                  SizedBox(height: dimension.val20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Wrap(

                      spacing: spacing,
                      runSpacing: runSpacing,
                      children: [
                        _buildFeatureContainer(
                          imageAsset:
                              'https://i.pinimg.com/564x/7c/9e/03/7c9e0391a1f364502d7c8b962657d031.jpg',
                          onTap: () => _navigateTo('/dsa'),
                        ),
                        _buildFeatureContainer(
                          imageAsset:
                              'https://i.pinimg.com/564x/7c/9e/03/7c9e0391a1f364502d7c8b962657d031.jpg',
                          onTap: () => _navigateTo('/dsa'),
                        ),
                        _buildFeatureContainer(
                          imageAsset:
                              'https://i.pinimg.com/564x/7c/9e/03/7c9e0391a1f364502d7c8b962657d031.jpg',
                          onTap: () => _navigateTo('/dsa'),
                        ),
                        _buildFeatureContainer(
                          imageAsset:
                              'https://i.pinimg.com/564x/7c/9e/03/7c9e0391a1f364502d7c8b962657d031.jpg',
                          onTap: () => _navigateTo('/dsa'),
                        ),
                        _buildFeatureContainer(
                          imageAsset:
                              'https://i.pinimg.com/564x/7c/9e/03/7c9e0391a1f364502d7c8b962657d031.jpg',
                          onTap: () => _navigateTo('/dsa'),
                        ),
                        _buildFeatureContainer(
                          imageAsset:
                              'https://i.pinimg.com/564x/7c/9e/03/7c9e0391a1f364502d7c8b962657d031.jpg',
                          onTap: () => _navigateTo('/dsa'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: dimension.val20),
            Padding(
              padding: EdgeInsets.only(left: dimension.width25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  bigText(
                    text: 'Android Development Courses',
                    size: dimension.font24,
                  ),
                  SizedBox(height: dimension.val20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,

                    child: Wrap(
                      spacing: spacing,
                      children: [
                        _buildFeatureContainer(
                          imageAsset:
                              'https://i.pinimg.com/564x/84/9b/48/849b48172509031cb4a4ad223cbc8ebc.jpg',
                          onTap: () => _navigateTo('/basicwebdev'),
                        ),
                        _buildFeatureContainer(
                          imageAsset:
                              'https://i.pinimg.com/564x/84/9b/48/849b48172509031cb4a4ad223cbc8ebc.jpg',
                          onTap: () => _navigateTo('/basicwebdev'),
                        ),
                        _buildFeatureContainer(
                          imageAsset:
                              'https://i.pinimg.com/564x/7c/9e/03/7c9e0391a1f364502d7c8b962657d031.jpg',
                          onTap: () => _navigateTo('/dsa'),
                        ),
                        _buildFeatureContainer(
                          imageAsset:
                              'https://i.pinimg.com/564x/84/9b/48/849b48172509031cb4a4ad223cbc8ebc.jpg',
                          onTap: () => _navigateTo('/basicwebdev'),
                        ),
                        _buildFeatureContainer(
                          imageAsset:
                              'https://i.pinimg.com/564x/84/9b/48/849b48172509031cb4a4ad223cbc8ebc.jpg',
                          onTap: () => _navigateTo('/basicwebdev'),
                        ),
                        _buildFeatureContainer(
                          imageAsset:
                              'https://i.pinimg.com/564x/84/9b/48/849b48172509031cb4a4ad223cbc8ebc.jpg',
                          onTap: () => _navigateTo('/basicwebdev'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: dimension.val20),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureContainer({
    required String imageAsset,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: () {
        Future.delayed(tapDelay, onTap);
      },
      child: Container(
        alignment: Alignment.centerLeft,
        width: containerWidth,
        height: containerHeight,
        child: Ink(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(borderRadius),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: dimension.val2),
              Container(
                height: imageHeight,
                width: imageWidth,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imageAsset),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(borderRadius),
                  color: const Color.fromARGB(255, 209, 209, 209),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateTo(String route) {
    context.go(route);
  }
}
