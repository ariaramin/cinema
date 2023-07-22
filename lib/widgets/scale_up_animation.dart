import 'package:flutter/material.dart';

class ScaleUpAnimation extends StatelessWidget {
  final Widget widget;

  const ScaleUpAnimation({
    super.key,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      duration: const Duration(milliseconds: 2000),
      curve: Curves.easeOut,
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: widget,
        );
      },
    );
  }
}
