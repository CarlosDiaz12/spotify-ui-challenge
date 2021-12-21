import 'package:flutter/material.dart';

class CustomGridWidget extends StatelessWidget {
  final List<Widget> gridChildren;
  const CustomGridWidget({
    required this.gridChildren,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      childAspectRatio: 7 / 4,
      crossAxisCount: 2,
      mainAxisSpacing: 20.0,
      crossAxisSpacing: 20.0,
      physics: NeverScrollableScrollPhysics(),
      children: gridChildren,
    );
  }
}
