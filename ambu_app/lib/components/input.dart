import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final IconData? next;
  const InputWidget({this.next, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          Icon(next),
          const Text(
            "",
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
