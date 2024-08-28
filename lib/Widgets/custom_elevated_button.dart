import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String textButton;
  final Color? backgroundcolor;
  final Color? foregroundcolor;
  final void Function() onPressed;

  const CustomElevatedButton({
    super.key,
    required this.textButton,
    this.backgroundcolor,
    required this.onPressed,
    this.foregroundcolor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundcolor ?? Colors.amber,
        foregroundColor: foregroundcolor ?? Colors.white,
      ),
      onPressed: onPressed,  // Ensure the onPressed function is used
      child: Text(textButton),
    );
  }
}
