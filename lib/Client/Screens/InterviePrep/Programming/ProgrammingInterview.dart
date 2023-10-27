import 'package:codebooter_study_app/AppState.dart';
import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ProgrammingInterview extends StatelessWidget {
  const ProgrammingInterview({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    const Duration tapDelay = Duration(milliseconds: 200);
    return Container(
        decoration: BoxDecoration(
          color: appState.isDarkMode
              ? AppColors.primaryColor
              : AppColors.lightModePrimary,
          borderRadius: BorderRadius.circular(Dimension.val2),
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
        child: Container(
          height: Dimension.height200,
          width: Dimension.width180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimension.val2),
            color: appState.isDarkMode
                ? AppColors.primaryColor
                : AppColors.lightModePrimary,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Programming",
                  style: TextStyle(
                      color: appState.isDarkMode
                          ? AppColors.lightModePrimary
                          : AppColors.primaryColor,
                      fontSize: Dimension.font24,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: Dimension.val10),
              Row(
                children: [
                  SizedBox(width: Dimension.width10),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: Dimension.font12,
                    color: appState.isDarkMode
                        ? AppColors.lightModePrimary
                        : AppColors.primaryColor,
                  ),
                  SizedBox(
                    width: Dimension.width10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Future.delayed(tapDelay, () {
                        context.go("/interview/cprogramming");
                      });
                    },
                    child: Text(
                      "C Programming",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: appState.isDarkMode
                            ? AppColors.lightModePrimary
                            : AppColors.primaryColor,
                        fontSize: Dimension.font14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Dimension.val10),
              Row(
                children: [
                  SizedBox(width: Dimension.width10),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: Dimension.font12,
                    color: appState.isDarkMode
                        ? AppColors.lightModePrimary
                        : AppColors.primaryColor,
                  ),
                  SizedBox(
                    width: Dimension.width10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Future.delayed(tapDelay, () {
                        GoRouter.of(context).go("/interview/c++programming");
                      });
                    },
                    child: Text(
                      "C++ Programming",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: appState.isDarkMode
                            ? AppColors.lightModePrimary
                            : AppColors.primaryColor,
                        fontSize: Dimension.font14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Dimension.val10),
              Row(
                children: [
                  SizedBox(width: Dimension.width10),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: Dimension.font12,
                    color: appState.isDarkMode
                        ? AppColors.lightModePrimary
                        : AppColors.primaryColor,
                  ),
                  SizedBox(
                    width: Dimension.width10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Future.delayed(tapDelay, () {
                        GoRouter.of(context).go("/interview/pythonprogramming");
                      });
                    },
                    child: Text(
                      "python Programming",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: appState.isDarkMode
                            ? AppColors.lightModePrimary
                            : AppColors.primaryColor,
                        fontSize: Dimension.font14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Dimension.val10),
              Row(
                children: [
                  SizedBox(width: Dimension.width10),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: Dimension.font12,
                    color: appState.isDarkMode
                        ? AppColors.lightModePrimary
                        : AppColors.primaryColor,
                  ),
                  SizedBox(
                    width: Dimension.width10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Future.delayed(tapDelay, () {
                        GoRouter.of(context).go("/interview/javaprogramming");
                      });
                    },
                    child: Text(
                      "Java Programming",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: appState.isDarkMode
                            ? AppColors.lightModePrimary
                            : AppColors.primaryColor,
                        fontSize: Dimension.font14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Dimension.val10),
              Row(
                children: [
                  SizedBox(width: Dimension.width10),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: Dimension.font12,
                    color: appState.isDarkMode
                        ? AppColors.lightModePrimary
                        : AppColors.primaryColor,
                  ),
                  SizedBox(
                    width: Dimension.width10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Future.delayed(tapDelay, () {
                        GoRouter.of(context).go("/interview/jsprogramming");
                      });
                    },
                    child: Text(
                      "JS Programming",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: appState.isDarkMode
                            ? AppColors.lightModePrimary
                            : AppColors.primaryColor,
                        fontSize: Dimension.font14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Dimension.val10),
              Row(
                children: [
                  SizedBox(width: Dimension.width10),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: Dimension.font12,
                    color: appState.isDarkMode
                        ? AppColors.lightModePrimary
                        : AppColors.primaryColor,
                  ),
                  SizedBox(
                    width: Dimension.width10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Future.delayed(tapDelay, () {
                        GoRouter.of(context).go("/interview/sqlprogramming");
                      });
                    },
                    child: Text(
                      "SQL Programming",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: appState.isDarkMode
                            ? AppColors.lightModePrimary
                            : AppColors.primaryColor,
                        fontSize: Dimension.font14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
