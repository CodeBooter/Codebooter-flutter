import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:flutter/material.dart';
import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/AppState.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:codebooter_study_app/AppState.dart';
import 'package:provider/provider.dart';
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
  final Duration tapDelay = const Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          bigText(
            text: 'DashBoard',
            size: dimension.font24,
            color: appState.isDarkMode
                ? AppColors.lightModePrimary
                : AppColors.primaryColor,
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
    final appState = Provider.of<AppState>(context);
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
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(borderRadius),
            boxShadow: [
              const BoxShadow(
                color: AppColors.shadowColor,
                blurRadius: 10.0,
                spreadRadius: 5.0,
                offset: Offset(-1, 0),
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
                  color: AppColors.primaryColor,
                ),
              ),
              bigText(text: title, size: dimension.font16,color: appState.isDarkMode
              ? AppColors.lightModePrimary
                  : AppColors.primaryColor,),
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
