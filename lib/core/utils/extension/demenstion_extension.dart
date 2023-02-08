import 'package:flutter/material.dart';

extension Dimensions on int {
  Widget getHeightBox() {
    final height = this;
    return SizedBox(height: height.toDouble());
  }

  Widget getWidthBox() {
    final width = this;
    return SizedBox(width: width.toDouble());
  }
}

extension MarginPaddings on int {
  EdgeInsets ss() {
    final val = this;
    return EdgeInsets.symmetric(
        horizontal: val.toDouble(), vertical: val.toDouble());
  }

  EdgeInsets ssh() {
    final val = this;
    return EdgeInsets.symmetric(horizontal: val.toDouble());
  }

  EdgeInsets ssv() {
    final val = this;
    return EdgeInsets.symmetric(vertical: val.toDouble());
  }
}
