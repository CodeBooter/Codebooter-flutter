import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          toolbarHeight: dimension.val70,
          centerTitle: true,
          title: bigText(
            text: "DSA",
          ),
        ),
        body: Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.data_array_rounded,
                size: dimension.val25,
              ),
              horizontalTitleGap: dimension.val2,
              title: Text('Array',
                  style: TextStyle(
                      fontSize: dimension.font16, fontWeight: FontWeight.w400)),
              onTap: () {
                context.go('/dsa/arrays');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.link_outlined,
                size: dimension.val25,
              ),
              horizontalTitleGap: dimension.val2,
              title: Text('Linked List',
                  style: TextStyle(
                      fontSize: dimension.font16, fontWeight: FontWeight.w400)),
              onTap: () {
                context.go('/dsa/linkedlist');
              },
            ),
          ],
        ));
  }
}
