import 'package:cached_network_image/cached_network_image.dart';
import 'package:codebooter_study_app/AppState.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../../utils/Colors.dart';

class AptitudeMain extends StatefulWidget {
  const AptitudeMain({Key? key}) : super(key: key);

  @override
  State<AptitudeMain> createState() => _AptitudeMain();
}

class _AptitudeMain extends State<AptitudeMain> {
  final double imageHeight = Dimension.height90;
  final double imageWidth = Dimension.width100;
  final double containerWidth = Dimension.width100;
  final double containerHeight = Dimension.height92;
  final double borderRadius = Dimension.val5;
  final double spacing = Dimension.val30;
  final double runSpacing = Dimension.val30;
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
          centerTitle: true,
          title: Text("Aptitude and Reasoning",
              style: TextStyle(
                  color: appState.isDarkMode ? Colors.white : Colors.black)),
        ),
        body: Column(
          children: [
            ListTile(
              title: Text("Numbers"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () => _navigateTo('/interview/aptitude/numbers'),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Percentage"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () => _navigateTo('/interview/aptitude/percentage'),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Profit And Loss"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () => _navigateTo('/interview/aptitude/profit'),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Average"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () => _navigateTo('/interview/aptitude/average'),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Mixture And Alligation"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () => _navigateTo('/interview/aptitude/mixture'),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Time and Work"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () => _navigateTo('/interview/aptitude/time1'),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Time , Distance and Speed"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () => _navigateTo('/interview/aptitude/time2'),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Ratio and Proportion"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () => _navigateTo('/interview/aptitude/ratio'),
            ),
          ],
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
