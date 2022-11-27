import 'package:flutter/material.dart';
import 'package:bank_app_ui/app/core/utils/size_extension.dart';

class SlideTileWidget extends StatelessWidget {
  final String image;
  final bool activePage;
  const SlideTileWidget({
    Key? key,
    required this.image,
    required this.activePage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double top = activePage ? 50 : 90;
    return AnimatedContainer(
      curve: Curves.easeOutQuint,
      margin: EdgeInsets.only(top: top),
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
