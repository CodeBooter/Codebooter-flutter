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
  final double imageHeight = dimension.height85;
  final double imageWidth = dimension.width180;
  final double containerWidth = dimension.width180;
  final double containerHeight = dimension.height130;
  final double borderRadius = dimension.val5;
  final double spacing = dimension.val15;
  final double runSpacing = dimension.val15;
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
          ),
          SizedBox(height: dimension.val20),
          Wrap(
            spacing: spacing,
            runSpacing: runSpacing,
            children: [
              _buildFeatureContainer(
                imageAsset: 'assets/images/dsa.jpg',
                title: 'DSA',
                subtitle: 'Complete DSA',
                onTap: () => _navigateTo('/dsa'),
              ),
              _buildFeatureContainer(
                imageAsset: 'assets/images/playlist1.png',
                title: 'Full Stack Course',
                subtitle: 'Free and verified course',
                onTap: () => _navigateTo('/courses'),
              ),
              _buildFeatureContainer(
                imageAsset: 'assets/images/interview.png',
                title: 'Interview Gems',
                subtitle: 'TnP verified Interview preparation',
                onTap: () => _navigateTo('/interview'),
              ),
              _buildFeatureContainer(
                imageAsset: 'assets/images/shivani.png',
                title: 'Examination notes',
                subtitle: 'University and college notes',
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
    required String title,
    required String subtitle,
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
                    image: AssetImage(imageAsset),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(borderRadius),
                  color: appColors.maincolor,
                ),
              ),
              bigText(
                text: title,
                size: dimension.font16,
                overFlow: TextOverflow.ellipsis,
              ),
              smallText(
                text: subtitle,
                overFlow: TextOverflow.ellipsis,
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
