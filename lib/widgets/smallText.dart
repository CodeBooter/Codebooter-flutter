import 'package:flutter/cupertino.dart';

class smallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;

  smallText({
    Key? key,
    this.color = const Color.fromARGB(255, 107, 107, 107),
    required this.text,
    this.size = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontFamily: 'Poppins',
      ),
    );
  }
}
