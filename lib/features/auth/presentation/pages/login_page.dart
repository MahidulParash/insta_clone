import 'package:flutter/material.dart';
import 'package:insta_clone/features/auth/presentation/components/custom_inputfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            // logo
            Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 50),
            // welcome back msg
            Text(
              "Welcome back, you've been missed!",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 25),
            // email textfield
            CustomInputfield(
              controller: emailController,
              hintText: 'Email',
            ),
            // pass textfield
            CustomInputfield(
              controller: passwordController,
              hintText: 'Password',
            )
            // login button
            // register
          ],
        ),
      )),
    );
  }
}
