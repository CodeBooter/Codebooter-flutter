import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:codebooter_study_app/widgets/SmallText.dart';
import 'package:flutter/material.dart';
import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';

import 'package:go_router/go_router.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final List<bool> isTappedList = [false, false, false, false];
  final double imageHeight = dimension.height100;
  final double imageWidth = dimension.width165;
  final double containerWidth = dimension.width180;
  final double containerHeight = dimension.height132;
  final double borderRadius = dimension.val5;
  final double spacing = dimension.val10;
  final double runSpacing = dimension.val10;
  final Duration tapDelay = Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          bigText(
            text: 'DashBoard',
            size: dimension.font24,
          ),
          SizedBox(height: dimension.val20),
          Container(
            child: Wrap(
              spacing: spacing,
              runSpacing: runSpacing,
              children: [
                _buildFeatureContainer(
                  imageAsset:
                      'https://i.pinimg.com/474x/20/4e/e3/204ee372909f732061f897cbf5744531.jpg',
                  title: 'Post a Job/Internship',
                  onTap: () => _navigateTo('/admin/home/jobpost'),
                ),
                _buildFeatureContainer(
                  imageAsset:
                      'https://i.pinimg.com/564x/5d/62/16/5d62163faddba5aead7acf4f51377867.jpg',
                  title: 'Post a webinar',
                  onTap: () => _navigateTo('/admin/jobpost'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureContainer({
    required String imageAsset,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: () {
        Future.delayed(tapDelay, onTap);
      },
      child: Container(
        alignment: Alignment.center,
        width: containerWidth,
        height: containerHeight,
        child: Ink(
          decoration: BoxDecoration(
            color: appColors.maincolor,
            borderRadius: BorderRadius.circular(borderRadius),
            boxShadow: [
              BoxShadow(
                color: appColors.strokeColor.withOpacity(0.2),
                blurRadius: 10.0,
                spreadRadius: 5.0,
                offset: const Offset(-1, 0),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: dimension.val2),
              Container(
                alignment: Alignment.center,
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
              bigText(text: title, size: dimension.font16),
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
