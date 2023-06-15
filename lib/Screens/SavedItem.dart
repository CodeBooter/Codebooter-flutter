import 'package:flutter/material.dart';

class SavedItem extends StatefulWidget {
  const SavedItem({super.key});

  @override
  State<SavedItem> createState() => _SavedItemState();
}

class _SavedItemState extends State<SavedItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: const Text("SavedItem"),
    );
  }
}
