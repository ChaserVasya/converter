import 'package:flutter/material.dart';

class Underline extends StatelessWidget {
  const Underline({
    super.key,
    required this.child,
    this.color,
  });

  final Widget child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: child,
        ),
        Container(
          height: 1,
          color: color,
        ),
      ],
    );
  }
}
