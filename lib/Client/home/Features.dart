import 'package:cached_network_image/cached_network_image.dart';
import 'package:codebooter_study_app/AppState.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:flutter/material.dart';
import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';

import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class Features extends StatefulWidget {
  const Features({Key? key}) : super(key: key);

  @override
  _FeaturesState createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {
  final double imageHeight = dimension.height180;
  final double imageWidth = dimension.width170;
  final double containerWidth = dimension.width170;
  final double containerHeight = dimension.height185;
  final double borderRadius = dimension.val5;
  final double spacing = dimension.val25;
  final double runSpacing = dimension.val25;
  final Duration tapDelay = const Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    return Padding(
      padding:  EdgeInsets.only(left: dimension.val2, right: dimension.val2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          bigText(
            text: 'Features',
            size: dimension.font24,
            color: appState.isDarkMode ? Colors.white : Colors.black,
          ),
          SizedBox(height: dimension.val10),
          Wrap(
            spacing: spacing,
            runSpacing: runSpacing,
            children: [
              _buildFeatureContainer(
                imageAsset: appState.isDarkMode
                    ? 'https://i.imgur.com/O0AYLFY.png'
                    : 'https://i.imgur.com/ZM3HoSa.png',
                onTap: () => _navigateTo('/dsa'),
              ),
              _buildFeatureContainer(
                imageAsset: appState.isDarkMode
                    ? 'https://i.imgur.com/psroZPx.png'
                    : 'https://i.imgur.com/chVM8es.png',
                onTap: () => _navigateTo('/courses'),
              ),
              _buildFeatureContainer(
                imageAsset: appState.isDarkMode
                    ? 'https://i.imgur.com/tsmGrpX.png'
                    : 'https://i.imgur.com/Ijyh2AC.png',
                onTap: () => _navigateTo('/interview'),
              ),
              _buildFeatureContainer(
                imageAsset: appState.isDarkMode
                    ? 'https://i.imgur.com/ThdpOTH.png'
                    : 'https://i.imgur.com/eFqgEZp.png',
                onTap: () => _navigateTo('/notes'),
              ),
            ],
          ),
        ],
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
