import 'package:destino_quisquella/widgets/scaffold.widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = '/homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DTScaffoldWidget(
      currentIndex: currentIndex,
      body: Column(
        children: [Text("Home screen")],
      ),
    );
  }
}
