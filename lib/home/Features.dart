import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:codebooter_study_app/widgets/SmallText.dart';
import 'package:flutter/material.dart';
import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';

class features extends StatefulWidget {
  const features({super.key});

  @override
  State<features> createState() => _featuresState();
}

class _featuresState extends State<features> {
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
              text: "Features",
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
                GestureDetector(
                  onTap: () {
                    setState(() {
                      print("hello");
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: dimension.width180,
                    height: dimension.height132,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 136, 136, 136)
                              .withOpacity(0.2),
                          blurRadius: 10.0,
                          spreadRadius: 5.0,
                          offset: const Offset(-1, 0),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(dimension.val5),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
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
                            //add a image
                            image: const DecorationImage(
                              image: AssetImage('assets/images/dsa.jpg'),
                              // put image
                              fit: BoxFit.fill,
                              //border color
                            ),

                            borderRadius: BorderRadius.circular(dimension.val5),
                            color: appColors.BoxColor,
                          ),
                        ),
                        bigText(text: "DSA", size: dimension.font16),
                        smallText(text: "Complete DSA")
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      print("hello");
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: dimension.width180,
                    height: dimension.height132,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 136, 136, 136)
                              .withOpacity(0.2),
                          blurRadius: 10.0,
                          spreadRadius: 5.0,
                          offset: const Offset(-1, 0),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(dimension.val5),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
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
                            //add a image
                            image: const DecorationImage(
                              image: AssetImage('assets/images/playlist1.png'),
                              // put image
                              fit: BoxFit.fill,
                              //border color
                            ),

                            borderRadius: BorderRadius.circular(dimension.val5),
                            color: appColors.BoxColor,
                          ),
                        ),
                        bigText(
                            text: "Full stack course", size: dimension.font16),
                        smallText(text: "complete and verified playlist")
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      print("hello");
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: dimension.width180,
                    height: dimension.height132,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 136, 136, 136)
                              .withOpacity(0.2),
                          blurRadius: 10.0,
                          spreadRadius: 5.0,
                          offset: const Offset(-1, 0),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(dimension.val5),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
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
                            //add a image
                            image: const DecorationImage(
                              image: AssetImage('assets/images/interview.png'),
                              // put image
                              fit: BoxFit.fill,
                              //border color
                            ),

                            borderRadius: BorderRadius.circular(dimension.val5),
                            color: appColors.BoxColor,
                          ),
                        ),
                        bigText(text: "Interview Gem", size: dimension.font16),
                        smallText(text: "Complete interview preparation")
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      print("hello");
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: dimension.width180,
                    height: dimension.height132,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 136, 136, 136)
                              .withOpacity(0.2),
                          blurRadius: 10.0,
                          spreadRadius: 5.0,
                          offset: const Offset(-1, 0),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(dimension.val5),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
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
                            //add a image
                            image: const DecorationImage(
                              image: AssetImage('assets/images/shivani.png'),
                              // put image
                              fit: BoxFit.fill,
                              //border color
                            ),

                            borderRadius: BorderRadius.circular(dimension.val5),
                            color: appColors.BoxColor,
                          ),
                        ),
                        bigText(text: "Exam Notes", size: dimension.font16),
                        smallText(text: "Shivani and compressed notes")
                      ],
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
