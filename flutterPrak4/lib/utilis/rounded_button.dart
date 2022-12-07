import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedButtonWPadding extends StatelessWidget {
  const RoundedButtonWPadding({
    Key? key,
    this.horizontalPadding,
    this.verticalPadding,
    this.radius,
    this.fontSize,
    this.bgColor,
    this.fgColor,
    this.onPressed,
    this.child, this.text,
  }) : super(key: key);

  final double? horizontalPadding;
  final double? verticalPadding;
  final double? radius;
  final double? fontSize;
  final Color? bgColor;
  final Color? fgColor;
  final Function()? onPressed;
  final Widget? child;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding ?? 20, vertical: verticalPadding ?? 7),
      child: SizedBox(
        width: double.infinity,
        child: OutlinedButton(
          onPressed: () {
            onPressed;
          },
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 15),
            foregroundColor: fgColor ?? Colors.black,
            backgroundColor: bgColor ?? Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(radius ?? 30))),
          ),
          child: child ??
              Text(text ?? '',
                  style: GoogleFonts.lato(
                      fontSize: fontSize ?? 18, fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}
