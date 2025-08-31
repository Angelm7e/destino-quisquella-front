import 'package:destino_quisquella/screens/addPlacesScreen/addPlacesScreen.dart';
import 'package:destino_quisquella/utilites/app_colors.dart';
import 'package:destino_quisquella/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class DQScaffoldWidget extends StatefulWidget {
  DQScaffoldWidget({super.key, required this.currentIndex, required this.body});
  late final int currentIndex;
  final Widget body;

  @override
  State<DQScaffoldWidget> createState() => _DQScaffoldWidgetState();
}

class _DQScaffoldWidgetState extends State<DQScaffoldWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.body,
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: widget.currentIndex,
        onTabSelected: (index) => setState(() => widget.currentIndex = index),
        onFabPressed: () {},
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {
          Navigator.pushNamed(context, AddPlacesScreen.routeName);
        },
        backgroundColor: AppColors.lightPrimary,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
