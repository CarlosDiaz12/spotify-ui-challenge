import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final double fontSize;
  final String text;
  const TitleWidget({
    Key? key,
    required this.fontSize,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline2?.copyWith(
            fontSize: fontSize,
            color: Colors.white,
          ),
    );
  }
}
