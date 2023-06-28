import 'package:codebooter_study_app/Client/Screens/jobs/FetchApi.dart';
import 'package:codebooter_study_app/Client/Screens/jobs/JobBloc/JobBloc.dart';
import 'package:codebooter_study_app/Client/Screens/jobs/JobBloc/JobEvent.dart';
import 'package:codebooter_study_app/Client/Screens/jobs/JobBloc/JobState.dart';
import 'package:codebooter_study_app/Client/Screens/jobs/JobModel.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class JobInternships extends StatefulWidget {
  const JobInternships({Key? key}) : super(key: key);

  @override
  State<JobInternships> createState() => _JobInternshipsState();
}

class _JobInternshipsState extends State<JobInternships> {
  final double imageHeight = dimension.height95;
  final double imageWidth = dimension.width90;
  final double containerWidth = dimension.width360;
  final double containerHeight = dimension.height110;
  final double borderRadius = dimension.val5;
  final double buttonRadius = dimension.val5;
  final double spacing = dimension.val10;
  final double runSpacing = dimension.val10;

  final Duration tapDelay = Duration(milliseconds: 200);

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
              print(jobList[1].imageAsset);

              return Column(
                children: [
                  Text(
                    "Job & Internships",
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: dimension.font20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: dimension.val10),
                  ...jobList.map((job) => _buildFeatureContainer(
                        title: job.title,
                        imageAsset: job.imageAsset,
                        stipend: job.stipend,
                        duration: job.duration,
                        location: job.location,
                        applyBy: job.applyBy,
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
            return Container(
              child: Text("Error"),
            );
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
    required String applyBy,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: containerWidth,
        height: containerHeight,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(borderRadius),
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: dimension.val5,
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
            SizedBox(width: dimension.val10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: dimension.val5),
                Text(
                  "$title",
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: dimension.font16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: dimension.val5),
                Row(
                  children: [
                    Container(
                      height: dimension.height80,
                      width: dimension.width68,
                      child: Column(
                        children: [
                          Icon(
                            Icons.monetization_on_outlined,
                            size: dimension.val20,
                          ),
                          SizedBox(height: dimension.val10),
                          Text(
                            "$stipend ",
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: dimension.font14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: dimension.val10),
                          SizedBox(
                            height: dimension.val20,
                            child: ElevatedButton(
                              onPressed: onTap,
                              child: Text(
                                'Apply',
                                style: TextStyle(
                                  fontSize: dimension.font12,
                                  color: Colors.black,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary:
                                    const Color.fromARGB(255, 232, 232, 232),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(buttonRadius),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: dimension.val5),
                    Container(
                      height: dimension.height80,
                      width: dimension.width68,
                      child: Column(
                        children: [
                          Icon(Icons.location_on_outlined,
                              size: dimension.val20),
                          SizedBox(height: dimension.val10),
                          Text(
                            "$location ",
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: dimension.font14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: dimension.height80,
                      width: dimension.width68,
                      child: Column(
                        children: [
                          Icon(Icons.access_time_outlined,
                              size: dimension.val20),
                          SizedBox(height: dimension.val10),
                          Text(
                            "$duration ",
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: dimension.font14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: dimension.height80,
                      width: dimension.width68,
                      child: Column(
                        children: [
                          Icon(Icons.calendar_today_outlined,
                              size: dimension.val20),
                          SizedBox(height: dimension.val10),
                          Text(
                            "$applyBy ",
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: dimension.font14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(width: dimension.val10),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _navigateTo(String route) {
    context.go(route);
  }
}
