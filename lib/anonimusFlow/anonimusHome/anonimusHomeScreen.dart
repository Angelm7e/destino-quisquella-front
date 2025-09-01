import 'package:flutter/material.dart';

class AnonimusHomeScreen extends StatefulWidget {
  const AnonimusHomeScreen({super.key});

  static const String routeName = '/AnonimusHomeScreen';

  @override
  State<AnonimusHomeScreen> createState() => _AnonimusHomeScreenState();
}

class _AnonimusHomeScreenState extends State<AnonimusHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Anonimus Home Screen"),
      ),
    );
  }
}
