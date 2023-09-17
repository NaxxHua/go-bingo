import 'package:flutter/material.dart';
import 'package:go_bingo/views/select_board_view.dart';

class PostGameView extends StatelessWidget {
  const PostGameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(28, 54, 19, 21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text("Post-game stats"),
            ),
            const SizedBox(
              height: 43,
            ),
            const Text(
              "Items found: 17",
            ),
            const SizedBox(
              height: 19,
            ),
            const Text(
              "Time played: ",
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SelectBoardView(),
                      ),
                    );
                  },
                  child: const Text("Main menu"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
