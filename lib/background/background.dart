import 'package:flutter/material.dart';
import 'package:portfolio/background/bezier_clippers.dart';

class MyBackground extends StatelessWidget {
  final Widget? child;
  const MyBackground({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(children: [
          Container(color: Theme.of(context).backgroundColor),
          ClipPath(
            clipper: CustomBezierClipper(),
            child: Container(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ]),
        child ?? Container(),
      ],
    );
  }
}
