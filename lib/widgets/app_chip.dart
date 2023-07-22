import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppChip extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? textColor;
  final bool isBlured;

  const AppChip({
    super.key,
    required this.text,
    this.color,
    this.textColor,
    this.isBlured = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isBlured) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 12,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: color ?? const Color(0xfffec400),
            ),
            child: Text(
              text,
              style: GoogleFonts.roboto(
                color: textColor ?? const Color(0xff131313),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
    }
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: color ?? const Color(0xfffec400),
      ),
      child: Text(
        text,
        style: GoogleFonts.roboto(
          color: textColor ?? const Color(0xff131313),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
