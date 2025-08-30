import 'package:destino_quisquella/widgets/scaffold.widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  static const String routeName = '/profileScreen';

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DTScaffoldWidget(
      currentIndex: 3,
      body: Column(children: const [Text("Profile Screen")]),
    );
  }
}
