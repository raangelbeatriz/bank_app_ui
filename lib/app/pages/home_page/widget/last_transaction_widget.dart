import 'package:bank_app_ui/app/core/utils/size_extension.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';

class LastTransactionWidget extends StatelessWidget {
  const LastTransactionWidget({
    Key? key,
    required this.label,
    required this.image,
    required this.date,
    required this.value,
    required this.moneySaved,
  }) : super(key: key);
  final String label;
  final String image;
  final String date;
  final double value;
  final bool moneySaved;
  @override
  Widget build(BuildContext context) {
    String symbol = moneySaved ? '+' : '-';
    return Padding(
      padding:
          const EdgeInsets.only(right: 20.0, left: 20.0, top: 5, bottom: 5),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              height: context.heigth * 0.065,
              width: context.width * 0.12,
              fit: BoxFit.cover,
              image: NetworkImage(image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text(
                  date,
                  style: TextStyle(color: grey),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            '$symbol\$ $value',
            style: TextStyle(
                color: moneySaved ? Colors.green : Colors.red, fontSize: 17),
          )
        ],
      ),
    );
  }
}
