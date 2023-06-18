import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import '../widgets/BigText.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        toolbarHeight: dimension.val70,
        centerTitle: true,
        title: bigText(
          text: "Help Page",
        ),
      ),
      body: const Center(
        child: Text('Manav'),
      ),
    );
  }
}
