import 'package:flutter/material.dart';



class CustomButton extends StatelessWidget {

  final VoidCallback onPressed;
  final String buttonText;
  final Color color;
  final Color textColor;
  final Color borderColor;


CustomButton({
  @required  this.onPressed,
  @required this.buttonText,
  @required this.color,
  @required this.textColor,
  @required this.borderColor = Colors.transparent,
});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderColor),
        borderRadius: BorderRadius.all(Radius.circular(3)),
      ),
      color: color,
      textColor: textColor,
      onPressed: onPressed,
      child: Text(buttonText),
      padding: const EdgeInsets.all(14),
    );
  }
}
