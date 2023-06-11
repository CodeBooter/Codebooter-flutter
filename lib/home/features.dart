import 'package:codebooter_study_app/widgets/bigText.dart';
import 'package:flutter/material.dart';
import 'package:codebooter_study_app/utils/colors.dart';
import 'package:codebooter_study_app/utils/dimensions.dart';

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
                      isTappedList[2] = !isTappedList[2];
                    });
                  },
                  child: Container(
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
                      borderRadius: BorderRadius.circular(10),
                      color: appColors.BoxColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isTappedList[2] = !isTappedList[2];
                    });
                  },
                  child: Container(
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
                      borderRadius: BorderRadius.circular(10),
                      color: appColors.BoxColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isTappedList[2] = !isTappedList[2];
                    });
                  },
                  child: Container(
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
                      borderRadius: BorderRadius.circular(10),
                      color: appColors.BoxColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isTappedList[2] = !isTappedList[2];
                    });
                  },
                  child: Container(
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
                      borderRadius: BorderRadius.circular(10),
                      color: appColors.BoxColor,
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
