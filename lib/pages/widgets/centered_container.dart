import 'package:flutter/material.dart';

class CenteredContainer extends StatelessWidget {
  final Widget child;
  final double maxWidth;

  const CenteredContainer({Key key, this.maxWidth, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 40),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1200),
        child: child,
      ),
    );
  }
}
