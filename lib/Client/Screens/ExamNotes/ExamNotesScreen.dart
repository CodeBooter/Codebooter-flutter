import 'package:cached_network_image/cached_network_image.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/AppState.dart';

import '../../../utils/Colors.dart';

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
    final appState = Provider.of<AppState>(context);
    return Scaffold(
        backgroundColor: appState.isDarkMode
            ? AppColors.primaryColor
            : AppColors.lightModePrimary,
        appBar: AppBar(
          iconTheme: IconThemeData(
              color: appState.isDarkMode ? Colors.white : Colors.black),
          backgroundColor: appState.isDarkMode
              ? AppColors.primaryColor
              : AppColors.lightModePrimary,
          elevation: 4,
          centerTitle: true,
          title: bigText(
            text: "Exam Notes",
            color: appState.isDarkMode
                ? AppColors.mainTextColor
                : const Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(dimension.val20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          bigText(
                            text: 'First Year',
                            size: dimension.font20,
                            color: appState.isDarkMode
                                ? Colors.white
                                : Colors.black,
                          ),
                          Row(
                            children: [
                              Text(
                                'Swipe',
                                style: TextStyle(
                                    fontSize: dimension.font20,
                                    fontWeight: FontWeight.w400,
                                    color: appState.isDarkMode
                                        ? Colors.white
                                        : Colors.black),
                              ),
                              Icon(
                                Icons.keyboard_double_arrow_right_outlined,
                                size: dimension.val30,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: dimension.val5),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Wrap(
                                spacing: spacing,
                                runSpacing: runSpacing,
                                children: [
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.pinimg.com/474x/4b/7e/da/4b7edae90adefff1b7d25272170a0db4.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/dYEB0pb.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/mathematics1'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/06f6aXE.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/IX2yM5D.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/latY3gT.jpeg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/JHSEkVO.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/dZbuLl1.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/mathematics1'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/CVwI8jV.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/tEvvAfz.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/Yoyfbou.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  SizedBox(height: dimension.val20),
                                ])
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: dimension.val25),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          bigText(
                            text: 'Second Year',
                            size: dimension.font20,
                            color: appState.isDarkMode
                                ? Colors.white
                                : Colors.black,
                          ),
                          Row(
                            children: [
                              Text(
                                'Swipe',
                                style: TextStyle(
                                    fontSize: dimension.font20,
                                    fontWeight: FontWeight.w400,
                                    color: appState.isDarkMode
                                        ? Colors.white
                                        : Colors.black),
                              ),
                              Icon(
                                Icons.keyboard_double_arrow_right_outlined,
                                size: dimension.val30,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: dimension.val5),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Wrap(
                                spacing: spacing,
                                runSpacing: runSpacing,
                                children: [
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/OSIY5L6.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/wttXuGJ.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/mathematics1'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/RzyPkhG.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/51Wpp68.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/GSBAiTM.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/FohUYQn.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/9x9GybD.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/mathematics1'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/NCENCLK.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/P65o5e2.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/9M7f08r.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  SizedBox(height: dimension.val20),
                                ])
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: dimension.val25),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          bigText(
                            text: 'Third Year',
                            size: dimension.font20,
                            color: appState.isDarkMode
                                ? Colors.white
                                : Colors.black,
                          ),
                          Row(
                            children: [
                              Text(
                                'Swipe',
                                style: TextStyle(
                                    fontSize: dimension.font20,
                                    fontWeight: FontWeight.w400,
                                    color: appState.isDarkMode
                                        ? Colors.white
                                        : Colors.black),
                              ),
                              Icon(
                                Icons.keyboard_double_arrow_right_outlined,
                                size: dimension.val30,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: dimension.val5),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Wrap(
                                spacing: spacing,
                                runSpacing: runSpacing,
                                children: [
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/C3JKLcf.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/ENfdo1C.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/mathematics1'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/QrlnCgA.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/I4weBwi.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/zNKci5K.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/Lxb5qXz.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/AAgYhf8.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/t82CmYU.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/mathematics1'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/bhWiBqs.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/DUvFS3k.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/3a9Tj3D.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/Ea99ImE.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  SizedBox(height: dimension.val20),
                                ])
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: dimension.val25),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          bigText(
                            text: 'Fourth Year',
                            size: dimension.font20,
                            color: appState.isDarkMode
                                ? Colors.white
                                : Colors.black,
                          ),
                          Row(
                            children: [
                              Text(
                                'Swipe',
                                style: TextStyle(
                                    fontSize: dimension.font20,
                                    fontWeight: FontWeight.w400,
                                    color: appState.isDarkMode
                                        ? Colors.white
                                        : Colors.black),
                              ),
                              Icon(
                                Icons.keyboard_double_arrow_right_outlined,
                                size: dimension.val30,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: dimension.val5),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Wrap(
                                spacing: spacing,
                                runSpacing: runSpacing,
                                children: [
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/flObCX0.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/nF5658T.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/mathematics1'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/KTMONeL.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/SvvzhpN.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/DLUPQC1.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/7EoavfN.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/5x6xuoV.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/91Wb97D.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/mUtbZiW.jpg',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  SizedBox(height: dimension.val20),
                                ])
                          ],
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
        ));
  }

  Widget _buildFeatureContainer({
    required String imageAsset,
    required VoidCallback onTap,
  }) {
    final appState = Provider.of<AppState>(context);
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
            color: appState.isDarkMode ? AppColors.primaryColor : Colors.white,
            borderRadius: BorderRadius.circular(borderRadius),
            boxShadow: [
              BoxShadow(
                color: AppColors.shadowColor,
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
