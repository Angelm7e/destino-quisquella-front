import 'package:destino_quisquella/generated/l10n.dart';
import 'package:destino_quisquella/utilites/constants.dart';
import 'package:destino_quisquella/widgets/texFiel.widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const String routeName = '/loginScreen';

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    Size base = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Column(
          children: [
            SizedBox(height: base.height * 0.10),
            Image.asset(
              'assets/mainLogo.png',
              scale: 4,
            ),
            DQTextField(
              controller: emailController,
              hintText: '',
              labelText: '',
              prefixIcon: const Icon(Icons.email_outlined),
            ),
            const SizedBox(height: 15),
            DQTextField(
              controller: passwordController,
              hintText: '',
              labelText: '',
              prefixIcon: const Icon(Icons.person),
              suffixIcon: const Icon(Icons.remove_red_eye_outlined),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                S.of(context).forgotPassword,
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
