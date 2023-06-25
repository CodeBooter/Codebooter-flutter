import 'dart:io';

import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:codebooter_study_app/widgets/SmallText.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class JobInternships extends StatefulWidget {
  const JobInternships({super.key});

  @override
  State<JobInternships> createState() => _JobInternshipsState();
}

class _JobInternshipsState extends State<JobInternships> {
  final double imageHeight = dimension.height125;
  final double imageWidth = dimension.width130;
  final double containerWidth = dimension.width330;
  final double containerHeight = dimension.height150;
  final double borderRadius = dimension.val5;
  final double buttonRadius = dimension.val20;
  final double spacing = dimension.val10;
  final double runSpacing = dimension.val10;
  final Duration tapDelay = Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          bigText(
            text: 'Features',
            size: dimension.font24,
          ),
          SizedBox(height: dimension.val20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFeatureContainer(
                imageAsset:
                    'https://pluspng.com/img-png/barclays-png-barclays-bank-faisal-town-1024.png',
                title: 'Software engineer',
                stipend: '10-15k',
                duration: '2 months',
                location: 'Delhi',
                applyBy: '30th June',
                onTap: () async {
                  const url =
                      'https://apply.jobs.barclays/careersection/2/jobapply.ftl?lang=en-GB&searchExpanded=true&job=90372629';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
              ),
              _buildFeatureContainer(
                imageAsset:
                    'https://i1.wp.com/www.santacruztechbeat.com/wp-content/uploads/2015/04/Amazon_logo-8.png',
                title: 'web developer',
                stipend: '10-15k',
                duration: '2 months',
                location: 'Delhi',
                applyBy: '30th June',
                onTap: () => _navigateTo('/courses'),
              ),
              _buildFeatureContainer(
                imageAsset:
                    'https://cdn.freebiesupply.com/logos/large/2x/mastercard-2-logo-png-transparent.png',
                title: 'web developer',
                stipend: '10-15k',
                duration: '2 months',
                location: 'Delhi',
                applyBy: '30th June',
                onTap: () => _navigateTo('/interview'),
              ),
              _buildFeatureContainer(
                imageAsset:
                    'https://th.bing.com/th/id/OIP.c2llnh52mVSpXif6JVoDlQHaHZ?pid=ImgDet&w=512&h=511&rs=1',
                title: 'web developer',
                stipend: '10-15k',
                duration: '2 months',
                location: 'Delhi',
                applyBy: '30th June',
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
    required String stipend,
    required String duration,
    required String location,
    required String applyBy,
    required VoidCallback onTap,
  }) {
    return InkWell(
      child: Padding(
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
            children: [
              SizedBox(height: dimension.val2),
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
              SizedBox(width: dimension.val20),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: dimension.val5),
                    bigText(
                      text: "Role: $title",
                      size: dimension.font14,
                      overFlow: TextOverflow.clip,
                    ),
                    SizedBox(height: dimension.val2),
                    Text("Stipend: $stipend",
                        style: TextStyle(
                            fontSize: dimension.font14,
                            overflow: TextOverflow.ellipsis)),
                    SizedBox(height: dimension.val2),
                    Text("Duration: $duration",
                        style: TextStyle(
                            fontSize: dimension.font14,
                            overflow: TextOverflow.ellipsis)),
                    SizedBox(height: dimension.val2),
                    Text("Location: $location",
                        style: TextStyle(
                            fontSize: dimension.font14,
                            overflow: TextOverflow.ellipsis)),
                    SizedBox(height: dimension.val2),
                    Text("Apply by: $applyBy",

                        // overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: dimension.font14,
                            overflow: TextOverflow.ellipsis)),
                    SizedBox(height: 0),
                    ElevatedButton(
                      onPressed: () {
                        Future.delayed(tapDelay, onTap);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 255, 255, 255),
                        onPrimary: const Color.fromARGB(255, 0, 0, 0),
                        minimumSize: Size(100, 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(buttonRadius),
                        ),
                      ),
                      child: Text('Apply',
                          style: TextStyle(
                              fontSize: dimension.font12,
                              fontWeight: FontWeight.w400)),
                    )
                  ],
                ),
              )
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
