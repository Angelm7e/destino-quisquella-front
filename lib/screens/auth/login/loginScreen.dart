import 'package:destino_quisquella/generated/l10n.dart';
import 'package:destino_quisquella/screens/auth/signUp/signUpScreenScreen.dart';
import 'package:destino_quisquella/screens/home/homeScreen.dart';
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: base.height * 0.10),
              Image.asset(
                'assets/mainLogo.png',
                scale: 4,
              ),
              DQTextField(
                controller: emailController,
                hintText: S.of(context).emailHint,
                labelText: S.of(context).emailLabel,
                prefixIcon: const Icon(Icons.email_outlined),
              ),
              const SizedBox(height: 15),
              DQTextField(
                controller: passwordController,
                hintText: S.of(context).passwordHint,
                labelText: S.of(context).passwordLabel,
                prefixIcon: const Icon(Icons.lock_outline),
                suffixIcon: const Icon(Icons.remove_red_eye_outlined),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  S.of(context).forgotPassword,
                  style: TextStyle(
                      fontSize: 20, color: Theme.of(context).primaryColor),
                ),
              ),
              SizedBox(
                height: base.height * 0.05,
              ),
              DQButtom(
                labeltext: S.of(context).loginButton,
                // isLoading: true,
                // isPrimary: false,
                onTap: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
              ),
              SizedBox(
                height: base.height * 0.02,
              ),
              DQButtom(
                // isLoading: true,
                labeltext: S.of(context).noAccountPrompt,
                isPrimary: false,
                onTap: () {
                  Navigator.pushNamed(context, SignUpScreen.routeName);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

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
