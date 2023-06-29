import 'package:cached_network_image/cached_network_image.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:codebooter_study_app/utils/Dimensions.dart';

class ExamNotesScreen extends StatefulWidget {
  const ExamNotesScreen({Key? key}) : super(key: key);

  @override
  _ExamNotesScreenState createState() => _ExamNotesScreenState();
}

class _ExamNotesScreenState extends State<ExamNotesScreen> {
  final double imageHeight = dimension.height170;
  final double imageWidth = dimension.width110;
  final double containerWidth = dimension.width110;
  final double containerHeight = dimension.height175;
  final double borderRadius = dimension.val5;
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
          text: "Exam Notes",
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: dimension.width25, right: dimension.width25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    bigText(
                      text: 'First Year',
                      size: dimension.font20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Swipe',
                          style: TextStyle(
                              fontSize: dimension.font20,
                              fontWeight: FontWeight.w400),
                        ),
                        Icon(
                          Icons.keyboard_double_arrow_right_outlined,
                          size: dimension.val30,
                        ),
                      ],
                    ),
                  ],
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
                                'https://i.pinimg.com/474x/4b/7e/da/4b7edae90adefff1b7d25272170a0db4.jpg',
                            onTap: () => _navigateTo('/notes/chemistry'),
                          ),
                          _buildFeatureContainer(
                            imageAsset: 'https://i.imgur.com/latY3gT.jpeg',
                            onTap: () => _navigateTo('/notes/mathematics1'),
                          ),
                          _buildFeatureContainer(
                            imageAsset:
                                'https://i.pinimg.com/474x/4b/7e/da/4b7edae90adefff1b7d25272170a0db4.jpg',
                            onTap: () => _navigateTo('/notes/chemistry'),
                          ),
                          _buildFeatureContainer(
                            imageAsset:
                                'https://i.pinimg.com/474x/4b/7e/da/4b7edae90adefff1b7d25272170a0db4.jpg',
                            onTap: () => _navigateTo('/notes/chemistry'),
                          ),
                          _buildFeatureContainer(
                            imageAsset:
                                'https://i.pinimg.com/474x/4b/7e/da/4b7edae90adefff1b7d25272170a0db4.jpg',
                            onTap: () => _navigateTo('/notes/chemistry'),
                          ),
                          _buildFeatureContainer(
                            imageAsset:
                                'https://i.pinimg.com/474x/4b/7e/da/4b7edae90adefff1b7d25272170a0db4.jpg',
                            onTap: () => _navigateTo('/notes/chemistry'),
                          ),
                          SizedBox(height: dimension.val20),
                        ])),
              ],
            ),
          )
        ],
      )),
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
