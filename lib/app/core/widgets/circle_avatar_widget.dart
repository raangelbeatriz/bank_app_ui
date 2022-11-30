import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({
    Key? key,
    required this.radiusBorder,
    required this.radiusInnerCircle,
    required this.image,
  }) : super(key: key);
  final double radiusBorder;
  final double radiusInnerCircle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: darkGreen,
      radius: radiusBorder,
      child: CircleAvatar(
        radius: radiusInnerCircle,
        backgroundImage: NetworkImage(
          image,
        ),
      ),
    );
  }
}
