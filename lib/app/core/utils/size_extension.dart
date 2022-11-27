import 'package:flutter/cupertino.dart';

extension SizeExtension on BuildContext {
  double get heigth => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
}
