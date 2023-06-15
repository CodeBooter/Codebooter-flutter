import 'package:flutter/cupertino.dart';

class smallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  TextStyle? style;
  TextAlign? textAlign;

  smallText({
    Key? key,
    this.color = const Color.fromARGB(255, 53, 53, 53),
    required this.text,
    this.size = 12,
    this.overFlow = TextOverflow.ellipsis,
    this.textAlign = TextAlign.left,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        overflow: overFlow,
        fontSize: size,
        color: color,
        fontFamily: 'Poppins',
      ),
      textAlign: textAlign,
    );
  }
}
