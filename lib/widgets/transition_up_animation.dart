import 'package:flutter/material.dart';

class TransitionUpAnimation extends StatelessWidget {
  final Widget widget;
  final Duration? duration;

  const TransitionUpAnimation({
    super.key,
    required this.widget,
    this.duration,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 1, end: 0),
      duration: duration ?? const Duration(milliseconds: 1500),
      curve: Curves.fastOutSlowIn,
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(0, height * value),
          child: widget,
        );
      },
    );
  }
}
