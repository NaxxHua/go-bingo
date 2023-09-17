import 'package:flutter/material.dart';
import 'package:go_bingo/views/select_board_view.dart';
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SelectBoardView(),
                      ),
                    );
                  },
                  child: const Text("Sign up"),
                ),
                const SizedBox(
                  width: 18,
                ),
                FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SelectBoardView(),
                      ),
                    );
                  },
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
