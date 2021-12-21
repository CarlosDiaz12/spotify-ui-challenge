import 'package:flutter/material.dart';
import 'package:spotify_ui_challenge/pages/widgets/title_widget.dart';
import 'dart:math' as math;

class CustomItemCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final Color backgroundColor;
  const CustomItemCard({
    required this.title,
    required this.imageUrl,
    required this.backgroundColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 15,
            left: 10,
            child: TitleWidget(
              fontSize: 20,
              text: title,
            ),
          ),
          Positioned(
            top: 25,
            right: -15,
            child: Transform.rotate(
              angle: math.pi / 8,
              child: Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[700]!,
                      blurRadius: 1.0,
                      spreadRadius: 1.0,
                      offset:
                          Offset(2.0, 2.0), // shadow direction: bottom right
                    )
                  ],
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
