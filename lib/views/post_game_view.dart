import 'package:flutter/material.dart';
import 'package:go_bingo/views/select_board_view.dart';

class PostGameView extends StatelessWidget {
  const PostGameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(28, 54, 19, 21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text("Post-game stats"),
            ),
            SizedBox(
              height: 43,
            ),
            Text(
              "Items found: 17",
            ),
            SizedBox(
              height: 19,
            ),
            Text(
              "Time played: ",
            ),
            Spacer(),
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
                  child: Text("Main menu"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
