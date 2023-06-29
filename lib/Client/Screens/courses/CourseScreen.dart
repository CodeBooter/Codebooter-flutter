import 'package:cached_network_image/cached_network_image.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  final double imageHeight = dimension.height90;
  final double imageWidth = dimension.width90;
  final double containerWidth = dimension.width92;
  final double containerHeight = dimension.height92;
  final double borderRadius = dimension.val5;
  final double spacing = dimension.val30;
  final double runSpacing = dimension.val30;
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      bigText(
                        text: 'Programming Languages',
                        size: dimension.font18,
                      ),
                      Row(
                        children: [
                          Text(
                            'swipe',
                            style: TextStyle(
                                fontSize: dimension.font16,
                                fontWeight: FontWeight.w400),
                          ),
                          Icon(
                            Icons.keyboard_double_arrow_right_outlined,
                            size: dimension.font20,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: dimension.val5),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      bigText(
                        text: 'Cyber Security & Ethical Hacking',
                        size: dimension.font18,
                      ),
                      Row(
                        children: [
                          Text(
                            'swipe',
                            style: TextStyle(
                                fontSize: dimension.font16,
                                fontWeight: FontWeight.w400),
                          ),
                          Icon(
                            Icons.keyboard_double_arrow_right_outlined,
                            size: dimension.font20,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: dimension.val5),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      bigText(
                        text: 'AI/ML/DS & Python',
                        size: dimension.font18,
                      ),
                      Row(
                        children: [
                          Text(
                            'swipe',
                            style: TextStyle(
                                fontSize: dimension.font16,
                                fontWeight: FontWeight.w400),
                          ),
                          Icon(
                            Icons.keyboard_double_arrow_right_outlined,
                            size: dimension.font20,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: dimension.val5),
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
            Padding(
              padding: EdgeInsets.only(left: dimension.width25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      bigText(
                        text: 'Web Development',
                        size: dimension.font18,
                      ),
                      Row(
                        children: [
                          Text(
                            'swipe',
                            style: TextStyle(
                                fontSize: dimension.font16,
                                fontWeight: FontWeight.w400),
                          ),
                          Icon(
                            Icons.keyboard_double_arrow_right_outlined,
                            size: dimension.font20,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: dimension.val5),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      bigText(
                        text: 'Android Development',
                        size: dimension.font18,
                      ),
                      Row(
                        children: [
                          Text(
                            'swipe',
                            style: TextStyle(
                                fontSize: dimension.font16,
                                fontWeight: FontWeight.w400),
                          ),
                          Icon(
                            Icons.keyboard_double_arrow_right_outlined,
                            size: dimension.font20,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: dimension.val5),
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
            Padding(
              padding: EdgeInsets.only(left: dimension.width25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      bigText(
                        text: 'Core concepts',
                        size: dimension.font18,
                      ),
                      Row(
                        children: [
                          Text(
                            'swipe',
                            style: TextStyle(
                                fontSize: dimension.font16,
                                fontWeight: FontWeight.w400),
                          ),
                          Icon(
                            Icons.keyboard_double_arrow_right_outlined,
                            size: dimension.font20,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: dimension.val5),
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
              CachedNetworkImage(
                imageUrl: imageAsset,
                imageBuilder: (context, imageProvider) => Container(
                  height: imageHeight,
                  width: imageWidth,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(borderRadius),
                    color: const Color.fromARGB(255, 209, 209, 209),
                  ),
                ),
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
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
