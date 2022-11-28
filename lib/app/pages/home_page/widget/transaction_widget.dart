import 'package:bank_app_ui/app/core/utils/size_extension.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.heigth * 0.12,
      width: context.width * 0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: context.heigth * 0.09,
            decoration: BoxDecoration(
                color: darkGrey, borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
          ),
          Text(
            label,
            style: const TextStyle(color: Colors.white),
            maxLines: 2,
            overflow: TextOverflow.visible,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
