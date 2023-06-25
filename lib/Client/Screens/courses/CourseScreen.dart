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
  final double borderRadius = dimension.val20;
  final double spacing = dimension.val20;
  final double runSpacing = dimension.val20;
  final Duration tapDelay = Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
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
                  Wrap(
                    spacing: spacing,
                    runSpacing: runSpacing,
                    children: [
                      _buildFeatureContainer(
                        imageAsset: 'assets/images/react.png',
                        onTap: () => _navigateTo('/dsa'),
                      ),
                      _buildFeatureContainer(
                        imageAsset: 'assets/images/react.png',
                        onTap: () => _navigateTo('/dsa'),
                      ),
                      _buildFeatureContainer(
                        imageAsset: 'assets/images/react.png',
                        onTap: () => _navigateTo('/dsa'),
                      ),
                      _buildFeatureContainer(
                        imageAsset: 'assets/images/react.png',
                        onTap: () => _navigateTo('/dsa'),
                      ),
                      _buildFeatureContainer(
                        imageAsset: 'assets/images/react.png',
                        onTap: () => _navigateTo('/dsa'),
                      ),
                      _buildFeatureContainer(
                        imageAsset: 'assets/images/react.png',
                        onTap: () => _navigateTo('/dsa'),
                      ),
                    ],
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
                  Wrap(
                    spacing: spacing,
                    runSpacing: runSpacing,
                    children: [
                      _buildFeatureContainer(
                        imageAsset: 'assets/images/react.png',
                        onTap: () => _navigateTo('/dsa'),
                      ),
                      _buildFeatureContainer(
                        imageAsset: 'assets/images/react.png',
                        onTap: () => _navigateTo('/dsa'),
                      ),
                      _buildFeatureContainer(
                        imageAsset: 'assets/images/react.png',
                        onTap: () => _navigateTo('/dsa'),
                      ),
                      _buildFeatureContainer(
                        imageAsset: 'assets/images/react.png',
                        onTap: () => _navigateTo('/dsa'),
                      ),
                      _buildFeatureContainer(
                        imageAsset: 'assets/images/react.png',
                        onTap: () => _navigateTo('/dsa'),
                      ),
                      _buildFeatureContainer(
                        imageAsset: 'assets/images/react.png',
                        onTap: () => _navigateTo('/dsa'),
                      ),
                    ],
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
                  Wrap(
                    spacing: spacing,
                    runSpacing: runSpacing,
                    children: [
                      _buildFeatureContainer(
                        imageAsset: 'assets/images/react.png',
                        onTap: () => _navigateTo('/dsa'),
                      ),
                      _buildFeatureContainer(
                        imageAsset: 'assets/images/react.png',
                        onTap: () => _navigateTo('/dsa'),
                      ),
                      _buildFeatureContainer(
                        imageAsset: 'assets/images/react.png',
                        onTap: () => _navigateTo('/dsa'),
                      ),
                      _buildFeatureContainer(
                        imageAsset: 'assets/images/react.png',
                        onTap: () => _navigateTo('/dsa'),
                      ),
                      _buildFeatureContainer(
                        imageAsset: 'assets/images/react.png',
                        onTap: () => _navigateTo('/dsa'),
                      ),
                      _buildFeatureContainer(
                        imageAsset: 'assets/images/react.png',
                        onTap: () => _navigateTo('/dsa'),
                      ),
                    ],
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
                    image: AssetImage(imageAsset),
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
