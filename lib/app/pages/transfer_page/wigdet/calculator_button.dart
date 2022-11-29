import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    Key? key,
    required this.item,
    required this.controller,
  }) : super(key: key);
  final String item;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (item == 'x') {
          controller.text = '';
        } else {
          controller.text += item;
        }
      },
      child: SizedBox(
        child: Center(
          child: item != 'x'
              ? Text(
                  item,
                  style: const TextStyle(color: Colors.white, fontSize: 35),
                )
              : const Icon(
                  Icons.cancel,
                  color: Colors.white,
                ),
        ),
      ),
    );
  }
}
