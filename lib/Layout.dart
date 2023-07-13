import 'package:flutter/material.dart';
import 'package:study_flutter_11_codingchef01_firebase/responsive/breakpoint.dart';
import 'package:study_flutter_11_codingchef01_firebase/responsive/responsive_center.dart';
import 'package:study_flutter_11_codingchef01_firebase/signin.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Center responsive')),
      body: const SingleChildScrollView(
        child: ResponsiveCenter(
          maxContentWidth: BreakPoint.tablet,
          padding: EdgeInsets.all(16),
          child: SignIn(),
        ),
      ),
    );
  }
}
