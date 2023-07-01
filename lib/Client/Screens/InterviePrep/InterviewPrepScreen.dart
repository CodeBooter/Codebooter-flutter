import 'package:cached_network_image/cached_network_image.dart';
import 'package:codebooter_study_app/AppState.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/DsaInterview/DsaInterview.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/ProgrammingInterview.dart';
import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class InterviewPrepScreen extends StatefulWidget {
  const InterviewPrepScreen({super.key});

  @override
  State<InterviewPrepScreen> createState() => _DsaScreenState();
}

class _DsaScreenState extends State<InterviewPrepScreen> {
  final double borderRadius = dimension.val2;
  final double spacing = dimension.val25;
  final double runSpacing = dimension.val25;
  final Duration tapDelay = Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);

    return Scaffold(
        backgroundColor: appState.isDarkMode
            ? AppColors.primaryColor
            : AppColors.lightModePrimary,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: appState.isDarkMode ? Colors.white : Colors.black,
          ),
          toolbarHeight: dimension.val70,
          centerTitle: true,
          title: Text("Interview Preparation",
              style: TextStyle(
                  color: appState.isDarkMode ? Colors.white : Colors.black)),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: dimension.width35,
              right: dimension.width30,
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    const ProgrammingInterview(),
                    SizedBox(height: dimension.val20),
                    _buildFeatureContainer(
                      imageHeight: dimension.height155,
                      imageWidth: dimension.width170,
                      containerHeight: dimension.height160,
                      containerWidth: dimension.width170,
                      imageAsset: appState.isDarkMode
                          ? 'https://i.imgur.com/SZdYtgU.png'
                          : 'https://i.imgur.com/ZKFP2go.png',
                      onTap: () => _navigateTo('/interview/hr'),
                    ),
                    SizedBox(height: dimension.val20),
                    _buildFeatureContainer(
                      imageHeight: dimension.height145,
                      containerHeight: dimension.height150,
                      imageWidth: dimension.width170,
                      containerWidth: dimension.width170,
                      imageAsset: appState.isDarkMode
                          ? "https://i.imgur.com/wpG8va6.png"
                          : "https://i.imgur.com/9oaWPpu.png",
                      onTap: () => _navigateTo('/interview'),
                    ),
                    SizedBox(height: dimension.val20),
                    _buildFeatureContainer(
                      imageHeight: dimension.height165,
                      containerHeight: dimension.height170,
                      imageWidth: dimension.width170,
                      containerWidth: dimension.width170,
                      imageAsset: appState.isDarkMode
                          ? 'https://i.imgur.com/gMQ17eB.png'
                          : 'https://i.imgur.com/PVLhC57.png',
                      onTap: () => _navigateTo('/interview'),
                    ),
                  ],
                ),
                SizedBox(width: dimension.val20),
                Column(
                  children: [
                    DsaInterview(),
                    SizedBox(height: dimension.val20),
                    _buildFeatureContainer(
                      imageHeight: dimension.height140,
                      imageWidth: dimension.width150,
                      containerHeight: dimension.height145,
                      containerWidth: dimension.width150,
                      imageAsset: appState.isDarkMode
                          ? 'https://i.imgur.com/hpKh71m.png'
                          : 'https://i.imgur.com/mpN9h5e.png',
                      onTap: () => _navigateTo('/interview/mockinterview'),
                    ),
                    SizedBox(height: dimension.val20),
                    _buildFeatureContainer(
                      imageHeight: dimension.height115,
                      containerHeight: dimension.height120,
                      imageWidth: dimension.width150,
                      containerWidth: dimension.width150,
                      imageAsset: appState.isDarkMode
                          ? 'https://i.imgur.com/Vmkv1ma.png'
                          : 'https://i.imgur.com/SAciE64.png',
                      onTap: () => _navigateTo('/interview'),
                    ),
                    SizedBox(height: dimension.val20),
                    _buildFeatureContainer(
                      imageHeight: dimension.height125,
                      containerHeight: dimension.height130,
                      imageWidth: dimension.width150,
                      containerWidth: dimension.width150,
                      imageAsset: appState.isDarkMode
                          ? 'https://i.imgur.com/CUX05LH.png'
                          : 'https://i.imgur.com/mMzZwcG.png',
                      onTap: () => _navigateTo('/interview'),
                    ),
                    SizedBox(height: dimension.val20),
                    _buildFeatureContainer(
                      imageHeight: dimension.height140,
                      containerHeight: dimension.height145,
                      imageWidth: dimension.width150,
                      containerWidth: dimension.width150,
                      imageAsset: appState.isDarkMode
                          ? 'https://i.imgur.com/MBF0Yvc.png'
                          : 'https://i.imgur.com/P7knNPh.png',
                      onTap: () => _navigateTo('/interview'),
                    ),
                    SizedBox(height: dimension.val20),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  Widget _buildFeatureContainer({
    String? imageAsset,
    VoidCallback? onTap,
    required double containerWidth,
    required double containerHeight,
    required double imageHeight,
    required double imageWidth,
    String? title,
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
            boxShadow: [
              BoxShadow(
                color: AppColors.shadowColor,

                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(
                  2,
                  5,
                ), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: dimension.val2),
              CachedNetworkImage(
                imageUrl: imageAsset!,
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
