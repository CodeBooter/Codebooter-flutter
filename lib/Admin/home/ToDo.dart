import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:codebooter_study_app/widgets/SmallText.dart';
import 'package:flutter/material.dart';
import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:go_router/go_router.dart';

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  List<bool> isTappedList = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: bigText(
              text: "ToDo",
              size: dimension.font24,
            ),
          ),
          SizedBox(
            height: dimension.val20,
          ),
          Container(
            child: Wrap(
              spacing: dimension.val10,
              runSpacing: dimension.val10,
              children: [
                InkWell(
                  child: Container(
                    alignment: Alignment.center,
                    width: dimension.width180,
                    height: dimension.height132,
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(dimension.val5),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 136, 136, 136)
                                .withOpacity(0.2),
                            blurRadius: 10.0,
                            spreadRadius: 5.0,
                            offset: const Offset(-1, 0),
                          ),
                        ],
                      ),
                      child: InkWell(
                        onTap: () {
                          Future.delayed(Duration(milliseconds: 200), () {
                            context.go('/admin/home/jobpost');
                          });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: dimension.val2,
                            ),
                            Container(
                              height: dimension.height85,
                              width: dimension.width165,
                              decoration: BoxDecoration(
                                // Add an image
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      'https://www.latestlaws.com/media/2018/09/Job-Post.jpg'),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius:
                                    BorderRadius.circular(dimension.val5),
                                color: appColors.BoxColor,
                              ),
                            ),
                            bigText(text: "Post a Job", size: dimension.font16),
                            smallText(text: "job", size: dimension.font12),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    alignment: Alignment.center,
                    width: dimension.width180,
                    height: dimension.height132,
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(dimension.val5),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 136, 136, 136)
                                .withOpacity(0.2),
                            blurRadius: 10.0,
                            spreadRadius: 5.0,
                            offset: const Offset(-1, 0),
                          ),
                        ],
                      ),
                      child: InkWell(
                        onTap: () {
                          Future.delayed(Duration(milliseconds: 200), () {
                            context.go('/courses');
                          });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: dimension.val2,
                            ),
                            Container(
                              height: dimension.height85,
                              width: dimension.width165,
                              decoration: BoxDecoration(
                                // Add an image
                                image: const DecorationImage(
                                  image:
                                      AssetImage('assets/images/playlist1.png'),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius:
                                    BorderRadius.circular(dimension.val5),
                                color: appColors.BoxColor,
                              ),
                            ),
                            bigText(
                                text: "Full Stack Course",
                                size: dimension.font16),
                            smallText(text: "Free and verfied course"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Future.delayed(Duration(milliseconds: 200), () {
                      context.go('/interview');
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: dimension.width180,
                    height: dimension.height132,
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(dimension.val5),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 136, 136, 136)
                                .withOpacity(0.2),
                            blurRadius: 10.0,
                            spreadRadius: 5.0,
                            offset: const Offset(-1, 0),
                          ),
                        ],
                      ),
                      child: InkWell(
                        onTap: () {
                          Future.delayed(Duration(milliseconds: 200), () {
                            context.go('/interview');
                          });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: dimension.val2,
                            ),
                            Container(
                              height: dimension.height85,
                              width: dimension.width165,
                              decoration: BoxDecoration(
                                // Add an image
                                image: const DecorationImage(
                                  image:
                                      AssetImage('assets/images/interview.png'),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius:
                                    BorderRadius.circular(dimension.val5),
                                color: appColors.BoxColor,
                              ),
                            ),
                            bigText(
                                text: "Interview Gems", size: dimension.font16),
                            smallText(
                                text: "TnP verified Interview preparation"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Future.delayed(Duration(milliseconds: 200), () {
                      context.go('/notes');
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: dimension.width180,
                    height: dimension.height132,
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(dimension.val5),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 136, 136, 136)
                                .withOpacity(0.2),
                            blurRadius: 10.0,
                            spreadRadius: 5.0,
                            offset: const Offset(-1, 0),
                          ),
                        ],
                      ),
                      child: InkWell(
                        onTap: () {
                          Future.delayed(Duration(milliseconds: 200), () {
                            context.go('/notes');
                          });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: dimension.val2,
                            ),
                            Container(
                              height: dimension.height85,
                              width: dimension.width165,
                              decoration: BoxDecoration(
                                // Add an image
                                image: const DecorationImage(
                                  image:
                                      AssetImage('assets/images/shivani.png'),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius:
                                    BorderRadius.circular(dimension.val5),
                                color: appColors.BoxColor,
                              ),
                            ),
                            bigText(
                                text: "Examination notes",
                                size: dimension.font16),
                            smallText(text: "University and college notes"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
