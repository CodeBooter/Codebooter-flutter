import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:codebooter_study_app/widgets/SmallText.dart';
import 'package:flutter/material.dart';
import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';

import 'package:go_router/go_router.dart';

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
  final Duration tapDelay = Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2, right: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          bigText(
            text: 'Features',
            size: dimension.font24,
            color: appColors.mainTextColor,
          ),
          SizedBox(height: dimension.val10),
          Wrap(
            spacing: spacing,
            runSpacing: runSpacing,
            children: [
              _buildFeatureContainer(
                imageAsset: 'https://i.imgur.com/hVwC04e.png',
                onTap: () => _navigateTo('/dsa'),
              ),
              _buildFeatureContainer(
                imageAsset: 'https://i.imgur.com/UlQacov.png',
                onTap: () => _navigateTo('/courses'),
              ),
              _buildFeatureContainer(
                imageAsset: 'https://i.imgur.com/MLjoIQM.png',
                onTap: () => _navigateTo('/interview'),
              ),
              _buildFeatureContainer(
                imageAsset: 'https://i.imgur.com/uZ2Yw1f.png',
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
            color: appColors.maincolor,
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
                    image: NetworkImage(imageAsset),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(borderRadius),
                  color: appColors.maincolor,
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
