import 'package:flutter/material.dart';

void alertMessage(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text("Notice!"),
        content:
            const Text('This is Features is not available at this moment.'),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Ok"),
          ),
        ],
      );
    },
  );
}
