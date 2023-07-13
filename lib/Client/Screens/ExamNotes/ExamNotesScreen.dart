import 'package:cached_network_image/cached_network_image.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';
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
  final Duration tapDelay = const Duration(milliseconds: 200);
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
            color: appState.isDarkMode ? Colors.white : Colors.black,
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
                                    fontSize: dimension.font16,
                                    fontWeight: FontWeight.w400,
                                    color: appState.isDarkMode
                                        ? Colors.white
                                        : Colors.black),
                              ),
                              Icon(
                                Icons.keyboard_double_arrow_right_outlined,
                                size: dimension.val20,
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
                                        'https://i.imgur.com/0ynwxkk.png',
                                    onTap: () =>
                                        _navigateTo('/notes/chemistry'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/p2ISCuN.png',
                                    onTap: () =>
                                        _navigateTo('/notes/communication'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/kN8Xt6s.png',
                                    onTap: () => _navigateTo('/notes/physics'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/sSOFHcx.png',
                                    onTap: () => _navigateTo('/notes/beee'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/MdzP9Ej.png',
                                    onTap: () =>
                                        _navigateTo('/notes/mathematics1'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/DfgTj4x.png',
                                    onTap: () =>
                                        _navigateTo('/notes/mathematics2'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/7gskHgQ.png',
                                    onTap: () => _navigateTo('/notes/Bce'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/F5J90nL.png',
                                    onTap: () => _navigateTo('/notes/eg'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/rfdrIER.png',
                                    onTap: () => _navigateTo('/notes/bme'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/Fa2XGpM.png',
                                    onTap: () => _navigateTo('/notes/bcm'),
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
                                    fontSize: dimension.font16,
                                    fontWeight: FontWeight.w400,
                                    color: appState.isDarkMode
                                        ? Colors.white
                                        : Colors.black),
                              ),
                              Icon(
                                Icons.keyboard_double_arrow_right_outlined,
                                size: dimension.val20,
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
                                        'https://i.imgur.com/Yi33pXj.png',
                                    onTap: () => _navigateTo('/notes/eees'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/39uZewz.png',
                                    onTap: () => _navigateTo('/notes/discrete'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/Ni4oUim.png',
                                    onTap: () =>
                                        _navigateTo('/notes/datastructure'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/GhCMeWH.png',
                                    onTap: () =>
                                        _navigateTo('/notes/digitalsystems'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/2jdijEa.png',
                                    onTap: () => _navigateTo('/notes/oopm'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/LujVNUR.png',
                                    onTap: () =>
                                        _navigateTo('/notes/mathematics3'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/idB0p7h.png',
                                    onTap: () => _navigateTo('/notes/coa'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/1qd91O5.png',
                                    onTap: () => _navigateTo('/notes/se'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/NLC1f8N.png',
                                    onTap: () => _navigateTo('/notes/ada'),
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
                                    fontSize: dimension.font16,
                                    fontWeight: FontWeight.w400,
                                    color: appState.isDarkMode
                                        ? Colors.white
                                        : Colors.black),
                              ),
                              Icon(
                                Icons.keyboard_double_arrow_right_outlined,
                                size: dimension.val20,
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
                                        'https://i.imgur.com/CuFgtHw.png',
                                    onTap: () => _navigateTo('/notes/iwt'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/0yxfeu6.png',
                                    onTap: () =>
                                        _navigateTo('/notes/operatingsystem'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/8yhxXSU.png',
                                    onTap: () => _navigateTo('/notes/toc'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/jy3sTvU.png',
                                    onTap: () => _navigateTo('/notes/dbms'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/ZX92jTA.png',
                                    onTap: () => _navigateTo('/notes/oop'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/510QXjE.png',
                                    onTap: () =>
                                        _navigateTo('/notes/dataanalysis'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/JS68ZWT.png',
                                    onTap: () =>
                                        _navigateTo('/notes/cybersecurity'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/556gmxj.png',
                                    onTap: () => _navigateTo('/notes/ml'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/avKWZJB.png',
                                    onTap: () =>
                                        _navigateTo('/notes/computerNetwork'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/KCvRgCQ.png',
                                    onTap: () => _navigateTo('/notes/cd'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/WVMF5n5.png',
                                    onTap: () => _navigateTo('/notes/pm'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/j45j6yq.png',
                                    onTap: () => _navigateTo('/notes/km'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/v7xOSY7.png',
                                    onTap: () => _navigateTo('/notes/advarch'),
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
                                    fontSize: dimension.font16,
                                    fontWeight: FontWeight.w400,
                                    color: appState.isDarkMode
                                        ? Colors.white
                                        : Colors.black),
                              ),
                              Icon(
                                Icons.keyboard_double_arrow_right_outlined,
                                size: dimension.val20,
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
                                        'https://i.imgur.com/UxlaZzQ.png',
                                    onTap: () => _navigateTo('/notes/dmw'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/1r8BEEB.png',
                                    onTap: () => _navigateTo('/notes/sa'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/Dvdk0MX.png',
                                    onTap: () => _navigateTo('/notes/ipcv'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/LX6jwOn.png',
                                    onTap: () => _navigateTo('/notes/oose'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/uAIWeXe.png',
                                    onTap: () => _navigateTo('/notes/iot'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/mLz4R45.png',
                                    onTap: () => _navigateTo('/notes/cis'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/Rsyv0LC.png',
                                    onTap: () => _navigateTo('/notes/cc'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/VoV3wKu.png',
                                    onTap: () => _navigateTo('/notes/bigdata'),
                                  ),
                                  _buildFeatureContainer(
                                    imageAsset:
                                        'https://i.imgur.com/xqBH5EP.png',
                                    onTap: () => _navigateTo('/notes/wmc'),
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
            boxShadow: const [
              BoxShadow(
                color: AppColors.shadowColor,

                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(
                  0,
                  0,
                ), // changes position of shadow
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
                errorWidget: (context, url, error) => const Icon(Icons.error),
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
