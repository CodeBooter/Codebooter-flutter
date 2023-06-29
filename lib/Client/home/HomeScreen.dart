import 'package:codebooter_study_app/Client/home/Features.dart';
import 'package:codebooter_study_app/Client/home/animatedScreen.dart';
import 'package:codebooter_study_app/Client/Screens/jobs/JobInternship.dart';
import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../widgets/SmallText.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.maincolor,
      drawer: AnimatedDrawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: appColors.borderColor),
        backgroundColor: appColors.maincolor,
        elevation: 4,
        // shadowColor: appColors.borderColor,

        centerTitle: true,
        title: bigText(text: "Home", color: appColors.mainTextColor),
        actions: <Widget>[
          //dark mode button
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.dark_mode),
            color: appColors.borderColor,
          ),
        ],
      ),
      body: Column(children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Features(),
                Padding(
                  padding: EdgeInsets.only(
                    left: dimension.val20,
                    right: dimension.val20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Job & Internships",
                        style: TextStyle(
                          color: appColors.mainTextColor,
                          fontFamily: 'poppins',
                          fontSize: dimension.font20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextButton(
                        onPressed: () => context.go('/jobinternship'),
                        child: Text(
                          "View All",
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: dimension.font16,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const JobInternships(),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
