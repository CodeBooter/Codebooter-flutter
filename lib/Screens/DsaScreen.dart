import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:flutter/material.dart';

class DsaScreen extends StatefulWidget {
  const DsaScreen({super.key});

  @override
  State<DsaScreen> createState() => _DsaScreenState();
}

class _DsaScreenState extends State<DsaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        toolbarHeight: dimension.val70,
        centerTitle: true,
        title: bigText(
          text: "DSA",
        ),
      ),
      body: const Center(
        child: Text('Manav'),
      ),
    );
  }
}
