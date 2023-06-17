import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:flutter/material.dart';

class SavedItem extends StatefulWidget {
  const SavedItem({super.key});

  @override
  State<SavedItem> createState() => _DsaScreenState();
}

class _DsaScreenState extends State<SavedItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        toolbarHeight: dimension.val70,
        centerTitle: true,
        title: bigText(
          text: "Saved Items",
        ),
      ),
      body: const Center(
        child: Text('Manav'),
      ),
    );
  }
}
