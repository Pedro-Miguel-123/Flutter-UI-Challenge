import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final ButtonStyle? style;
  final Gradient? gradient;
  final double thickness;

  const GradientButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.style,
    this.gradient,
    this.thickness = 2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Container(
        height: 40,
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: TextButton(
            onPressed: onPressed,
            style: style,
            child: child,
          ),
        ),
      ),
    );
  }
}