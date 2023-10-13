import 'package:cached_network_image/cached_network_image.dart';
import 'package:codebooter_study_app/AppState.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/DsaInterview/DsaInterview.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/Programming/ProgrammingInterview.dart';
import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class InterviewPrepScreen extends StatefulWidget {
  const InterviewPrepScreen({super.key});

  @override
  State<InterviewPrepScreen> createState() => _DsaScreenState();
}

class _DsaScreenState extends State<InterviewPrepScreen> {
  final double borderRadius = Dimension.val2;
  final double spacing = Dimension.val25;
  final double runSpacing = Dimension.val25;
  final Duration tapDelay = const Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);

    return Scaffold(
        backgroundColor: appState.isDarkMode
            ? AppColors.primaryColor
            : AppColors.lightModePrimary,
        appBar: AppBar(
          elevation: 2,
          backgroundColor: appState.isDarkMode
              ? AppColors.primaryColor
              : AppColors.lightModePrimary,
          iconTheme: IconThemeData(
            color: appState.isDarkMode ? Colors.white : Colors.black,
          ),
          // toolbarHeight: Dimension.val70,
          centerTitle: true,
          title: Text("Interview Preparation",
              style: TextStyle(
                  color: appState.isDarkMode ? Colors.white : Colors.black)),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: Dimension.width35,
              right: Dimension.width30,
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    const ProgrammingInterview(),
                    SizedBox(height: Dimension.val20),
                    _buildFeatureContainer(
                      imageHeight: Dimension.height155,
                      imageWidth: Dimension.width170,
                      containerHeight: Dimension.height160,
                      containerWidth: Dimension.width170,
                      imageAsset: appState.isDarkMode
                          ? 'https://i.imgur.com/SZdYtgU.png'
                          : 'https://i.imgur.com/ZKFP2go.png',
                      onTap: () => _navigateTo('/interview/hr'),
                    ),
                    SizedBox(height: Dimension.val20),
                    _buildFeatureContainer(
                      imageHeight: Dimension.height145,
                      containerHeight: Dimension.height150,
                      imageWidth: Dimension.width170,
                      containerWidth: Dimension.width170,
                      imageAsset: appState.isDarkMode
                          ? "https://i.imgur.com/wpG8va6.png"
                          : "https://i.imgur.com/9oaWPpu.png",
                      onTap: () => _navigateTo('/interview/os'),
                    ),
                    SizedBox(height: Dimension.val20),
                    _buildFeatureContainer(
                      imageHeight: Dimension.height165,
                      containerHeight: Dimension.height170,
                      imageWidth: Dimension.width170,
                      containerWidth: Dimension.width170,
                      imageAsset: appState.isDarkMode
                          ? 'https://i.imgur.com/gMQ17eB.png'
                          : 'https://i.imgur.com/PVLhC57.png',
                      onTap: () => _navigateTo('/interview/resumes'),
                    ),
                  ],
                ),
                SizedBox(width: Dimension.val20),
                Column(
                  children: [
                    const DsaInterview(),
                    SizedBox(height: Dimension.val20),
                    _buildFeatureContainer(
                      imageHeight: Dimension.height140,
                      imageWidth: Dimension.width150,
                      containerHeight: Dimension.height145,
                      containerWidth: Dimension.width150,
                      imageAsset: appState.isDarkMode
                          ? 'https://i.imgur.com/hpKh71m.png'
                          : 'https://i.imgur.com/mpN9h5e.png',
                      onTap: () => _navigateTo('/interview/mockinterview'),
                    ),
                    SizedBox(height: Dimension.val20),
                    _buildFeatureContainer(
                      imageHeight: Dimension.height115,
                      containerHeight: Dimension.height120,
                      imageWidth: Dimension.width150,
                      containerWidth: Dimension.width150,
                      imageAsset: appState.isDarkMode
                          ? 'https://i.imgur.com/Vmkv1ma.png'
                          : 'https://i.imgur.com/SAciE64.png',
                      onTap: () => _navigateTo('/interview/dbms'),
                    ),
                    SizedBox(height: Dimension.val20),
                    _buildFeatureContainer(
                      imageHeight: Dimension.height125,
                      containerHeight: Dimension.height130,
                      imageWidth: Dimension.width150,
                      containerWidth: Dimension.width150,
                      imageAsset: appState.isDarkMode
                          ? 'https://i.imgur.com/CUX05LH.png'
                          : 'https://i.imgur.com/mMzZwcG.png',
                      onTap: () => _navigateTo('/interview/cn'),
                    ),
                    SizedBox(height: Dimension.val20),
                    _buildFeatureContainer(
                      imageHeight: Dimension.height140,
                      containerHeight: Dimension.height145,
                      imageWidth: Dimension.width150,
                      containerWidth: Dimension.width150,
                      imageAsset: appState.isDarkMode
                          ? 'https://i.imgur.com/MBF0Yvc.png'
                          : 'https://i.imgur.com/P7knNPh.png',
                      onTap: () => _navigateTo('/interview/aptitude'),
                    ),
                    SizedBox(height: Dimension.val20),
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
              SizedBox(height: Dimension.val2),
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
