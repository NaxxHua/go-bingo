import 'package:flutter/material.dart';

class InviteView extends StatelessWidget {
  const InviteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.share),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: const Center(
        child: Text("Invite friends"),
      ),
    );
  }
}
