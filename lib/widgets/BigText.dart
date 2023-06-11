import 'package:flutter/cupertino.dart';

class bigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  FontWeight? fontWeight;

  bigText({
    Key? key,
    this.color = const Color.fromARGB(255, 0, 0, 0),
    required this.text,
    this.size = 20,
    this.overFlow = TextOverflow.ellipsis,
    this.fontWeight = FontWeight.w500,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: color,
        fontFamily: 'Poppins',
      ),
    );
  }
}
