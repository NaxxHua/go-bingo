import 'package:flutter/material.dart';
import 'package:go_bingo/views/post_game_view.dart';

class GameBoardView extends StatefulWidget {
  const GameBoardView({super.key});

  @override
  State<GameBoardView> createState() => _GameBoardViewState();
}

class _GameBoardViewState extends State<GameBoardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(17, 30, 17, 25),
          child: Column(
            children: [
              const Center(
                child: Text("Game board"),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  const Chip(
                    label: Text("Classic mode"),
                  ),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  Chip(
                    label: const Text("4:11"),
                    side: BorderSide.none,
                    color: MaterialStatePropertyAll(
                      Theme.of(context).colorScheme.secondaryContainer,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 13,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Table(
                    children: const [
                      TableRow(
                        children: [
                          BoardItem(),
                          BoardItem(),
                          BoardItem(),
                          BoardItem(),
                        ],
                      ),
                      TableRow(
                        children: [
                          BoardItem(),
                          BoardItem(),
                          BoardItem(),
                          BoardItem(),
                        ],
                      ),
                      TableRow(
                        children: [
                          BoardItem(),
                          BoardItem(),
                          BoardItem(),
                          BoardItem(),
                        ],
                      ),
                      TableRow(
                        children: [
                          BoardItem(),
                          BoardItem(),
                          BoardItem(),
                          BoardItem(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              const Expanded(
                child: Card(
                  child: SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: SingleChildScrollView(
                        child: Text(
                            "Jiahua is almost there! \nSam is one step closer to the finish line! \nSam just finished another row, he is on fire! \nJiahua just found a speed limit sign! \nSam just found a broken car! \nJiahua just noticed a deer! \nSam just found a police car! \nDandan is connecting... \nDandan has disconnected"),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Ink(
                      decoration: ShapeDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        shape: const CircleBorder(),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PostGameView(),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.stop,
                        ),
                        color: Theme.of(context).colorScheme.background,
                      ),
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                    Ink(
                      decoration: ShapeDecoration(
                        color: Theme.of(context).colorScheme.secondaryContainer,
                        shape: const CircleBorder(),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.switch_access_shortcut,
                        ),
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Ink(
                      decoration: ShapeDecoration(
                        color: Theme.of(context).colorScheme.secondaryContainer,
                        shape: const CircleBorder(),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.share,
                        ),
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BoardItem extends StatelessWidget {
  const BoardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        color: const Color(0xffd9d9d9),
        width: 55,
        height: 69.2,
        child: const Icon(Icons.grass),
      ),
    );
  }
}
