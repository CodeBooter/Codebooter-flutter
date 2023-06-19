import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:flutter/material.dart';

class LinkedList extends StatefulWidget {
  const LinkedList({super.key});

  @override
  State<LinkedList> createState() => _DsaScreenState();
}

class _DsaScreenState extends State<LinkedList> {
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
            text: "LinkedList",
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            bigText(text: "Definition"),
          ],
        ));
  }
}
