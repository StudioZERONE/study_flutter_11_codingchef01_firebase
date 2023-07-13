import 'package:flutter/material.dart';
import 'package:study_flutter_11_codingchef01_firebase/responsive/breakpoint.dart';

class ResponsiveCenter extends StatelessWidget {
  const ResponsiveCenter(
      {super.key,
      this.maxContentWidth = BreakPoint.tablet,
      this.padding = EdgeInsets.zero,
      required this.child});
  final double maxContentWidth;
  final EdgeInsetsGeometry padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: maxContentWidth,
        child: Padding(
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
