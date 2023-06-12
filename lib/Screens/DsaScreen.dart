import 'package:flutter/material.dart';

class DsaScreen extends StatefulWidget {
  const DsaScreen({super.key});

  @override
  State<DsaScreen> createState() => _DsaScreenState();
}

class _DsaScreenState extends State<DsaScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.red,
      child: const Text("DsaScreen"),
    );
  }
}
