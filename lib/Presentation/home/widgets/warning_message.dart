import 'package:flutter/material.dart';

class WarningMessage extends StatelessWidget {
  final String warningMessage;
  final double messageViewHeight;

  const WarningMessage({
    super.key,
    required this.warningMessage,
    this.messageViewHeight = 180,
  });

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Center(
      child: SizedBox(
        height: messageViewHeight,
        child: Center(
          child: Text(
            warningMessage,
            style: textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
