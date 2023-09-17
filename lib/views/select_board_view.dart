import 'package:flutter/material.dart';
import 'package:go_bingo/views/game_board_view.dart';

const List<String> list = <String>[
  "Classic mode",
  "Blind mode",
  "Endless mode"
];

class SelectBoardView extends StatefulWidget {
  const SelectBoardView({super.key});

  @override
  State<SelectBoardView> createState() => _SelectBoardViewState();
}

class _SelectBoardViewState extends State<SelectBoardView> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            children: [
              const Center(
                child: Text("Select board and rules"),
              ),
              const SizedBox(
                height: 22,
              ),
              const Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      OwnedCard(),
                      SizedBox(
                        height: 16,
                      ),
                      OwnedCard(),
                      SizedBox(
                        height: 16,
                      ),
                      OwnedCard(),
                      SizedBox(
                        height: 16,
                      ),
                      UnownedCard(),
                      SizedBox(
                        height: 16,
                      ),
                      UnownedCard(),
                      SizedBox(
                        height: 16,
                      ),
                      UnownedCard(),
                      SizedBox(
                        height: 16,
                      ),
                      UnownedCard(),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 54,
              ),
              Row(
                children: [
                  DropdownMenu<String>(
                    label: const Text("Select game mode"),
                    initialSelection: list.first,
                    onSelected: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    dropdownMenuEntries:
                        list.map<DropdownMenuEntry<String>>((String value) {
                      return DropdownMenuEntry<String>(
                          value: value, label: value);
                    }).toList(),
                  ),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  FloatingActionButton(
                    child: const Icon(Icons.play_arrow),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const GameBoardView(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OwnedCard extends StatelessWidget {
  const OwnedCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 10, 10.5, 14),
              child: Row(
                children: [
                  const Text(
                    "American city highway",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Apply"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: const Color(0xffd9d9d9),
                    width: 30,
                    height: 28,
                    child: const Icon(Icons.surfing),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    color: const Color(0xffd9d9d9),
                    width: 30,
                    height: 28,
                    child: const Icon(Icons.electric_bike),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    color: const Color(0xffd9d9d9),
                    width: 30,
                    height: 28,
                    child: const Icon(Icons.electric_car),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    color: const Color(0xffd9d9d9),
                    width: 30,
                    height: 28,
                    child: const Icon(Icons.grass),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UnownedCard extends StatelessWidget {
  const UnownedCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 10, 10.5, 14),
              child: Row(
                children: [
                  const Text(
                    "American city highway",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  FilledButton(
                    onPressed: () {},
                    child: const Text("Apply"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: const Color(0xffd9d9d9),
                    width: 30,
                    height: 28,
                    child: const Icon(Icons.surfing),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    color: const Color(0xffd9d9d9),
                    width: 30,
                    height: 28,
                    child: const Icon(Icons.electric_bike),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    color: const Color(0xffd9d9d9),
                    width: 30,
                    height: 28,
                    child: const Icon(Icons.electric_car),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    color: const Color(0xffd9d9d9),
                    width: 30,
                    height: 28,
                    child: const Icon(Icons.grass),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
