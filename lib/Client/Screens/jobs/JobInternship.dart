import 'package:codebooter_study_app/AppState.dart';
import 'package:codebooter_study_app/Client/Screens/jobs/FetchApi.dart';
import 'package:codebooter_study_app/Client/Screens/jobs/JobBloc/JobBloc.dart';
import 'package:codebooter_study_app/Client/Screens/jobs/JobBloc/JobEvent.dart';
import 'package:codebooter_study_app/Client/Screens/jobs/JobBloc/JobState.dart';
import 'package:codebooter_study_app/Client/Screens/jobs/JobModel.dart';
import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class JobInternships extends StatefulWidget {
  const JobInternships({Key? key}) : super(key: key);

  @override
  State<JobInternships> createState() => _JobInternshipsState();
}

class _JobInternshipsState extends State<JobInternships> {
  final double imageHeight = Dimension.height100;
  final double imageWidth = Dimension.width100;
  final double containerWidth = Dimension.width360;
  final double containerHeight = Dimension.height110;
  final double borderRadius = Dimension.val5;
  final double buttonRadius = Dimension.val5;
  final double spacing = Dimension.val10;
  final double runSpacing = Dimension.val10;

  final Duration tapDelay = const Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => FetchJobApi(),
      child: BlocProvider(
        create: (context) => JobBloc(
          RepositoryProvider.of<FetchJobApi>(context),
        )..add(LoadJobEvent()),
        child: BlocBuilder<JobBloc, JobState>(
          builder: (context, state) {
            if (state is JobLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is JobLoadedState) {
              List<JobModel> jobList = state.jobs;
              // print(jobList[1].imageAsset);

              return Column(
                children: [
                  ...jobList.map((job) => _buildFeatureContainer(
                        title: job.title,
                        imageAsset: job.imageAsset,
                        stipend: job.stipend,
                        duration: job.duration,
                        location: job.location,
                        deadline: job.deadline,
                        onTap: () async {
                          final url = job.applyLink;

                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                      )),
                ],
              );
            }
            return Container(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }

  Widget _buildFeatureContainer({
    required String imageAsset,
    required String title,
    required String stipend,
    required String duration,
    required String location,
    required String deadline,
    required VoidCallback onTap,
  }) {
    final appState = Provider.of<AppState>(context);
    return Padding(
      padding: EdgeInsets.all(Dimension.val10),
      child: InkWell(
        onTap: onTap,
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(color: AppColors.shadowColor, width: 2.0),
            color: appState.isDarkMode
                ? AppColors.mainColor
                : AppColors.lightModePrimary,
          ),
          child: InkWell(
            onTap: onTap,
            splashColor: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(borderRadius),
            child: Container(
              width: containerWidth,
              height: containerHeight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: Dimension.val5,
                  ),
                  Container(
                    width: imageWidth,
                    height: imageHeight,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(borderRadius),
                      image: DecorationImage(
                        image: NetworkImage(imageAsset),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: Dimension.val10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: Dimension.val5),
                      Text(
                        "$title",
                        style: TextStyle(
                          color: appState.isDarkMode
                              ? AppColors.mainTextColor
                              : const Color.fromARGB(255, 0, 0, 0),
                          fontFamily: 'poppins',
                          fontSize: Dimension.font16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: Dimension.val5),
                      Row(
                        children: [
                          Container(
                            height: Dimension.height80,
                            width: Dimension.width68,
                            child: Column(
                              children: [
                                Icon(
                                  Icons.monetization_on_outlined,
                                  size: Dimension.val20,
                                  color: appState.isDarkMode
                                      ? AppColors.mainTextColor
                                      : const Color.fromARGB(255, 0, 0, 0),
                                ),
                                SizedBox(height: Dimension.val10),
                                Text(
                                  "$stipend ",
                                  style: TextStyle(
                                    color: appState.isDarkMode
                                        ? AppColors.mainTextColor
                                        : const Color.fromARGB(255, 0, 0, 0),
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: Dimension.font14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: Dimension.val5),
                                SizedBox(
                                  height: Dimension.val20,
                                  child: ElevatedButton(
                                    onPressed: onTap,
                                    style: ElevatedButton.styleFrom(
                                      primary: appState.isDarkMode
                                          ? AppColors.primaryColor
                                          : AppColors.lightModePrimary,
                                      elevation: Dimension.val5,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: appState.isDarkMode
                                                ? AppColors.mainTextColor
                                                : const Color.fromARGB(
                                                    255, 0, 0, 0),
                                            width: 1,
                                            style: BorderStyle.solid),
                                        borderRadius: BorderRadius.circular(
                                            Dimension.val5),
                                      ),
                                    ),
                                    child: Text(
                                      'Apply',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: Dimension.val10,
                                        color: appState.isDarkMode
                                            ? AppColors.mainTextColor
                                            : const Color.fromARGB(
                                                255, 0, 0, 0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: Dimension.val5),
                          Container(
                            height: Dimension.height80,
                            width: Dimension.width68,
                            child: Column(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  size: Dimension.val20,
                                  color: appState.isDarkMode
                                      ? AppColors.mainTextColor
                                      : const Color.fromARGB(255, 0, 0, 0),
                                ),
                                SizedBox(height: Dimension.val10),
                                Text(
                                  "$location ",
                                  style: TextStyle(
                                    color: appState.isDarkMode
                                        ? AppColors.mainTextColor
                                        : const Color.fromARGB(255, 0, 0, 0),
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: Dimension.font14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: Dimension.height80,
                            width: Dimension.width68,
                            child: Column(
                              children: [
                                Icon(
                                  Icons.access_time_outlined,
                                  size: Dimension.val20,
                                  color: appState.isDarkMode
                                      ? AppColors.mainTextColor
                                      : const Color.fromARGB(255, 0, 0, 0),
                                ),
                                SizedBox(height: Dimension.val10),
                                Text(
                                  "$duration ",
                                  style: TextStyle(
                                    color: appState.isDarkMode
                                        ? AppColors.mainTextColor
                                        : const Color.fromARGB(255, 0, 0, 0),
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: Dimension.font14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: Dimension.height80,
                            width: Dimension.width68,
                            child: Column(
                              children: [
                                Icon(
                                  Icons.hourglass_bottom_outlined,
                                  size: Dimension.val20,
                                  color: appState.isDarkMode
                                      ? AppColors.mainTextColor
                                      : const Color.fromARGB(255, 0, 0, 0),
                                ),
                                SizedBox(height: Dimension.val10),
                                Text(
                                  "${deadline.substring(5, 10)}",
                                  style: TextStyle(
                                    color: appState.isDarkMode
                                        ? AppColors.mainTextColor
                                        : const Color.fromARGB(255, 0, 0, 0),
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: Dimension.font14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: Dimension.val10),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _navigateTo(String route) {
    context.go(route);
  }
}
