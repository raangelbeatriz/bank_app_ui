import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';

class DotWidget extends StatelessWidget {
  const DotWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: const Color(0xFF1D1D1D),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: green, width: 2),
        ),
        child: Center(
          child: Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
                color: green, borderRadius: BorderRadius.circular(8)),
          ),
        ),
      ),
    );
  }
}
