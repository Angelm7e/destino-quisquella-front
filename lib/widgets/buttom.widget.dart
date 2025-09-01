import 'package:flutter/material.dart';

class DQButtom extends StatelessWidget {
  const DQButtom({
    super.key,
    this.isLoading = false,
    required this.onTap,
    this.isPrimary = true,
    required this.labeltext,
  });

  final bool isLoading;
  final bool isPrimary;
  final VoidCallback onTap;
  final String labeltext;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: isPrimary
            ? BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(30),
              )
            : BoxDecoration(
                border:
                    Border.all(color: Theme.of(context).primaryColor, width: 2),
                // color
                borderRadius: BorderRadius.circular(30),
              ),
        child: Center(
            child: isLoading
                ? CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      isPrimary ? Colors.white : Theme.of(context).primaryColor,
                    ),
                  )
                : Text(
                    labeltext,
                    style: isPrimary
                        ? const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )
                        : TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                  )),
      ),
    );
  }
}
