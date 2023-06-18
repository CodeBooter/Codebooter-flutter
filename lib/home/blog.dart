import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';

import 'package:flutter/material.dart';

class blog extends StatefulWidget {
  const blog({super.key});

  @override
  State<blog> createState() => _blogState();
}

class _blogState extends State<blog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: bigText(
              text: "Job/Internships",
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
                    setState(() {});
                  },
                  child: Container(
                    width: dimension.width355,
                    height: dimension.height115,
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
                    setState(() {});
                  },
                  child: Container(
                    width: dimension.width355,
                    height: dimension.height115,
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
                    setState(() {});
                  },
                  child: Container(
                    width: dimension.width355,
                    height: dimension.height115,
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
                    setState(() {});
                  },
                  child: Container(
                    width: dimension.width355,
                    height: dimension.height115,
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
