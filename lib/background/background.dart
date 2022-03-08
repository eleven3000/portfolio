import 'package:flutter/material.dart';
import 'package:portfolio/background/bezier_clippers.dart';

class MyBackground extends StatefulWidget {
  final Widget? child;
  const MyBackground({Key? key, this.child}) : super(key: key);

  @override
  State<MyBackground> createState() => _MyBackgroundState();
}

class _MyBackgroundState extends State<MyBackground> {
  bool _selected = false;

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        _selected = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(children: [
          Container(color: Theme.of(context).backgroundColor),
          AnimatedPadding(
            padding: EdgeInsets.only(top: _selected ? 25 : 1),
            curve: Curves.easeOutQuad,
            duration: const Duration(seconds: 1),
            child: ClipPath(
              clipper: CustomBezierClipper(),
              child: Container(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          ClipPath(
            clipper: CustomBezierClipper(),
            child: Container(
              color: Theme.of(context).backgroundColor,
            ),
          ),
        ]),
        widget.child ?? Container(),
      ],
    );
  }
}
