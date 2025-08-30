import 'package:destino_quisquella/widgets/scaffold.widget.dart';
import 'package:flutter/material.dart';

class CloseToYouScreen extends StatefulWidget {
  const CloseToYouScreen({super.key});

  static const String routeName = '/closeToYouScreen';

  @override
  State<CloseToYouScreen> createState() => _CloseToYouScreenState();
}

class _CloseToYouScreenState extends State<CloseToYouScreen> {
  @override
  Widget build(BuildContext context) {
    return DTScaffoldWidget(
        currentIndex: 1,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text("Close To You Screen")],
        ));
  }
}
