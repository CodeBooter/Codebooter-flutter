import 'package:codebooter_study_app/AppState.dart';
import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class DsaInterview extends StatelessWidget {
  const DsaInterview({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    const Duration tapDelay = Duration(milliseconds: 200);
    return Container(
        decoration: BoxDecoration(
          color: appState.isDarkMode
              ? AppColors.primaryColor
              : AppColors.lightModePrimary,
          borderRadius: BorderRadius.circular(dimension.val2),
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
        child: Container(
          height: dimension.height150,
          width: dimension.width150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(dimension.val2),
            color: appState.isDarkMode
                ? AppColors.primaryColor
                : AppColors.lightModePrimary,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("DSA",
                  style: TextStyle(
                      color: appState.isDarkMode
                          ? AppColors.lightModePrimary
                          : AppColors.primaryColor,
                      fontSize: dimension.font24,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: dimension.val10),
              Row(
                children: [
                  SizedBox(width: dimension.width10),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: dimension.font12,
                    color: appState.isDarkMode
                        ? AppColors.lightModePrimary
                        : AppColors.primaryColor,
                  ),
                  SizedBox(
                    width: dimension.width10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Future.delayed(tapDelay, () {
                        context.go("/c");
                      });
                    },
                    child: Text(
                      "C Questions",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: appState.isDarkMode
                            ? AppColors.lightModePrimary
                            : AppColors.primaryColor,
                        fontSize: dimension.font14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: dimension.val10),
              Row(
                children: [
                  SizedBox(width: dimension.width10),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: dimension.font12,
                    color: appState.isDarkMode
                        ? AppColors.lightModePrimary
                        : AppColors.primaryColor,
                  ),
                  SizedBox(
                    width: dimension.width10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Future.delayed(tapDelay, () {
                        GoRouter.of(context).go("/c");
                      });
                    },
                    child: Text(
                      "DSA Problems",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: appState.isDarkMode
                            ? AppColors.lightModePrimary
                            : AppColors.primaryColor,
                        fontSize: dimension.font14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: dimension.val10),
            ],
          ),
        ));
  }
}
