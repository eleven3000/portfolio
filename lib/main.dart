import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/background/background.dart';
import 'package:portfolio/styles/styles.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jean-Luc Herbst - Developer',
      themeMode: ThemeMode.system,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: Builder(builder: (context) {
        return MyBackground(
          child: Column(
            children: [
              Flexible(flex: 1, child: Container()),
              Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Jean-Luc Herbst",
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Here are a couple of my recent projects:",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                      const BulletPoint(
                        name: "Lanes",
                        urlTarget: "https://jean-luc.dev/lanes",
                        description:
                            "a public transport app with a modern design",
                      ),
                      const BulletPoint(
                        name: "Case Tracker",
                        urlTarget: "https://casetracker.de",
                        description: "a finance app for virtual game items",
                      ),
                    ],
                  ))
            ],
          ),
        );
      }),
    );
  }
}

class BulletPoint extends StatefulWidget {
  final String name;
  final String urlTarget;
  final String description;
  const BulletPoint({
    Key? key,
    required this.name,
    required this.urlTarget,
    required this.description,
  }) : super(key: key);

  @override
  State<BulletPoint> createState() => _BulletPointState();
}

class _BulletPointState extends State<BulletPoint> {
  var _hover = false;

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
        text: "- ",
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      TextSpan(
          text: widget.name,
          style: (_hover)
              ? Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.copyWith(decoration: TextDecoration.underline)
              : Theme.of(context).textTheme.labelMedium,
          onEnter: (_) => setState(() {
                _hover = true;
              }),
          onExit: (_) => setState(() {
                _hover = false;
              }),
          recognizer: TapGestureRecognizer()
            ..onTap = () => launch(widget.urlTarget)),
      TextSpan(
        text: ", ",
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      TextSpan(
        text: widget.description,
        style: Theme.of(context).textTheme.bodyMedium,
      )
    ]));
  }
}
