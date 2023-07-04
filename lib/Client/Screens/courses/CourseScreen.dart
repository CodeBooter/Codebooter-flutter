import 'package:cached_network_image/cached_network_image.dart';
import 'package:codebooter_study_app/AppState.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../utils/Colors.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  final double imageHeight = dimension.height90;
  final double imageWidth = dimension.width100;
  final double containerWidth = dimension.width100;
  final double containerHeight = dimension.height92;
  final double borderRadius = dimension.val5;
  final double spacing = dimension.val30;
  final double runSpacing = dimension.val30;
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
          text: "Courses",
          color: appState.isDarkMode
              ? AppColors.mainTextColor
              : const Color.fromARGB(255, 0, 0, 0),
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
                  SizedBox(height: dimension.val10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      bigText(
                        text: 'Programming Languages',
                        size: dimension.font18,
                        color: appState.isDarkMode
                            ? AppColors.mainTextColor
                            : const Color.fromARGB(255, 0, 0, 0),
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
                            // C

                            imageAsset: 'https://i.imgur.com/0MJHztR.png',
                            onTap: () => _navigateTo('/courses/clang')),
                        _buildFeatureContainer(
                          //c++
                          imageAsset: 'https://i.imgur.com/Rmw00BF.png',
                          onTap: () => _navigateTo('/courses/cpp'),
                        ),
                        _buildFeatureContainer(
                          // java
                          imageAsset: 'https://i.imgur.com/a8bEmNa.png',
                          onTap: () => _navigateTo('/courses/java'),
                        ),
                        _buildFeatureContainer(
                          // python
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/NNrSkna.png"
                              : "https://i.imgur.com/nZfIpGq.png",
                          onTap: () => _navigateTo('/courses/python'),
                        ),
                        _buildFeatureContainer(
                          // go
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/0P3aNqN.png"
                              : "https://i.imgur.com/35AviEe.png",
                          onTap: () => _navigateTo('/courses/go'),
                        ),
                        _buildFeatureContainer(
                          imageAsset:
                              //typescript
                              'https://i.imgur.com/wd3NbjV.png',
                          onTap: () => _navigateTo('/courses/typescript'),
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
                        color: appState.isDarkMode
                            ? AppColors.mainTextColor
                            : const Color.fromARGB(255, 0, 0, 0),
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
                          // cyber security
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/6XrlmlN.png"
                              : "https://i.imgur.com/3dgawDo.png",
                          onTap: () => _navigateTo('/courses/cybersecurity'),
                        ),
                        _buildFeatureContainer(
                          //kali
                          imageAsset: 'https://i.imgur.com/DSmu89K.png',
                          onTap: () => _navigateTo('/courses/kali'),
                        ),
                        _buildFeatureContainer(
                          // info gathering
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/r7CQKHx.png"
                              : "https://i.imgur.com/AtHKHOK.png",
                          onTap: () =>
                              _navigateTo('/courses/informationgathering'),
                        ),
                        _buildFeatureContainer(
                          // CCNA
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/wm3jxlu.png"
                              : "https://i.imgur.com/FkFLCaT.png",
                          onTap: () => _navigateTo('/courses/ccna'),
                        ),
                        _buildFeatureContainer(
                          // network security
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/RZF2b7h.png"
                              : "https://i.imgur.com/BSv6qzL.png",
                          onTap: () => _navigateTo('/courses/networksecurity'),
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
                        color: appState.isDarkMode
                            ? AppColors.mainTextColor
                            : const Color.fromARGB(255, 0, 0, 0),
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
                          // basic
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/i2ttYut.png"
                              : "https://i.imgur.com/yiEDQfY.png",
                          onTap: () => _navigateTo('/courses/basicstarting'),
                        ),
                        _buildFeatureContainer(
                          // artificial intelligence
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/zzpBGm6.png"
                              : "https://i.imgur.com/HTIopm8.png",
                          onTap: () =>
                              _navigateTo('/courses/artificialintelligence'),
                        ),
                        _buildFeatureContainer(
                          // machine learning
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/MNjeZQ3.png"
                              : "https://i.imgur.com/mJ5N0KN.png",
                          onTap: () => _navigateTo('/courses/machinelearning'),
                        ),
                        _buildFeatureContainer(
                          // deep learning
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/CPdKqdb.png"
                              : "https://i.imgur.com/mdIajrE.png",
                          onTap: () => _navigateTo('/courses/deeplearning'),
                        ),
                        _buildFeatureContainer(
                          // data science
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/350fUz4.png"
                              : "https://i.imgur.com/fLdB7Ca.png",
                          onTap: () => _navigateTo('/courses/datascience'),
                        ),
                        _buildFeatureContainer(
                          // project
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/dD7jVdP.png"
                              : "https://i.imgur.com/ymXnkOI.png",
                          onTap: () => _navigateTo('/courses/project'),
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
                        color: appState.isDarkMode
                            ? AppColors.mainTextColor
                            : const Color.fromARGB(255, 0, 0, 0),
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
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/1Ip31wl.png"
                              : "https://i.imgur.com/GThFukt.png",
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
                          // React
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/tWYDndX.png"
                              : "https://i.imgur.com/ykbNj29.png",
                          onTap: () => _navigateTo('/courses/reactjs'),
                        ),
                        _buildFeatureContainer(
                          //  Angular
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/UBHe9fb.png"
                              : "https://i.imgur.com/HwljCot.png",
                          onTap: () => _navigateTo('/courses/angular'),
                        ),
                        _buildFeatureContainer(
                          //  Node
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/oZNOTZo.png"
                              : "https://i.imgur.com/yLH0B6j.png",
                          onTap: () => _navigateTo('/courses/nodejs'),
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
                        text: 'Application Development',
                        size: dimension.font18,
                        color: appState.isDarkMode
                            ? AppColors.mainTextColor
                            : const Color.fromARGB(255, 0, 0, 0),
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
                          // java
                          imageAsset: 'https://i.imgur.com/WYCnqoD.png',
                          onTap: () => _navigateTo('/courses/javaapp'),
                        ),
                        _buildFeatureContainer(
                          //flutter
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/nGpY6aF.png"
                              : "https://i.imgur.com/4pABgqQ.png",
                          onTap: () => _navigateTo('/courses/flutterapp'),
                        ),
                        _buildFeatureContainer(
                          // react native
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/RFIHxQ5.png"
                              : "https://i.imgur.com/liye8uO.png",
                          onTap: () => _navigateTo('/courses/reactnative'),
                        ),
                        _buildFeatureContainer(
                          // firebase
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/YTDu9Wb.png"
                              : "https://i.imgur.com/HIU0kNl.png",
                          onTap: () => _navigateTo('/courses/firebasebackend'),
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
                        text: 'WEB 3',
                        size: dimension.font18,
                        color: appState.isDarkMode
                            ? AppColors.mainTextColor
                            : const Color.fromARGB(255, 0, 0, 0),
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
                          //intro to web 3
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/bXiJWRC.png"
                              : "https://i.imgur.com/D6nVovW.png",
                          onTap: () => _navigateTo('/courses/introtoweb3'),
                        ),
                        _buildFeatureContainer(
                          // Decentralized
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/nnv8pV3.png"
                              : "https://i.imgur.com/1i9IfI2.png",
                          onTap: () =>
                              _navigateTo('/courses/decentralizedapplication'),
                        ),
                        _buildFeatureContainer(
                          // tokenization
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/BnUpwX3.png"
                              : "https://i.imgur.com/tvyJheX.png",
                          onTap: () => _navigateTo('/courses/tokenization'),
                        ),
                        _buildFeatureContainer(
                          // ethereum
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/ppgPbNv.png"
                              : "https://i.imgur.com/coFJl9t.png",
                          onTap: () => _navigateTo('/courses/etherium'),
                        ),
                        _buildFeatureContainer(
                          // solidity
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/BXQUslb.png"
                              : "https://i.imgur.com/t39Dvu5.png",
                          onTap: () => _navigateTo('/courses/solidity'),
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
                        color: appState.isDarkMode
                            ? AppColors.mainTextColor
                            : const Color.fromARGB(255, 0, 0, 0),
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
                          // computer networks
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/npJqp9J.png"
                              : "https://i.imgur.com/dBG8Scr.png",
                          onTap: () => _navigateTo('/courses/computernetwork'),
                        ),
                        _buildFeatureContainer(
                          // operating system
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/wpG8va6.png"
                              : "https://i.imgur.com/9oaWPpu.png",
                          onTap: () => _navigateTo('/courses/operatingsystem'),
                        ),
                        _buildFeatureContainer(
                          // DBMS
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/2TEeMxj.png"
                              : "https://i.imgur.com/UpmpoIR.png",
                          onTap: () => _navigateTo('/courses/dbms'),
                        ),
                        _buildFeatureContainer(
                          // compiler design
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/Xo7sH9V.png"
                              : "https://i.imgur.com/BlSc20T.png",
                          onTap: () => _navigateTo('/courses/compilerdesign'),
                        ),
                        _buildFeatureContainer(
                          // theory of computation
                          imageAsset: appState.isDarkMode
                              ? "https://i.imgur.com/IRAKwtr.png"
                              : "https://i.imgur.com/mgBo1bM.png",
                          onTap: () => _navigateTo('/courses/toc'),
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
            color: appState.isDarkMode
                ? AppColors.primaryColor
                : AppColors.lightModePrimary,
            borderRadius: BorderRadius.circular(borderRadius),
            boxShadow: const [
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
                    color: appState.isDarkMode
                        ? AppColors.primaryColor
                        : AppColors.lightModePrimary,
                  ),
                ),
                // placeholder: (context, url) => CircularProgressIndicator(),
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
