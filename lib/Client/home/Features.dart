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
  final double imageHeight = Dimension.height180;
  final double imageWidth = Dimension.width170;
  final double containerWidth = Dimension.width170;
  final double containerHeight = Dimension.height190;
  final double borderRadius = Dimension.val5;
  final double spacing = Dimension.val25;
  final double runSpacing = Dimension.val25;
  final Duration tapDelay = const Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 2, right: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            bigText(
              text: 'Features',
              size: Dimension.font24,
              color: appState.isDarkMode ? Colors.white : Colors.black,
            ),
            SizedBox(height: Dimension.val10),
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
                      ? 'https://i.imgur.com/KotHNmf.png'
                      : 'https://i.imgur.com/hSBFz7e.png',
                  onTap: () => _navigateTo('/notes'),
                ),
              ],
            ),
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
                ? AppColors.mainColor
                : AppColors.lightModePrimary,
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(
              color: AppColors.shadowColor,
              width: 2,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Dimension.val2),
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
