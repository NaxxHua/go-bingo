import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "GOBINGO",
              style: GoogleFonts.koulen(
                fontSize: 64,
              ),
            ),
            const SizedBox(
              height: 152,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Sign up"),
                ),
                const SizedBox(
                  width: 18,
                ),
                FilledButton(
                  onPressed: () {},
                  child: const Text("Log in"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
