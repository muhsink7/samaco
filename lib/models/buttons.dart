import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({required this.text, required this.color, required this.textColor, required this.onPressed});
  final String text;
  final Color color;
  final Color textColor;
  final void Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: SizedBox(
        width: double.infinity,
        height: 70,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shadowColor: Colors.black,
            foregroundColor: textColor,
            backgroundColor: color,
            shape: const RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.black,
                width: 1,
              ),
              borderRadius: BorderRadius.all(Radius.circular(30),
              ),
            ),
          ),
          onPressed: onPressed,
          child:  Text(text,
              style: TextStyle(
                color: textColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
        ),
      ),
    );
  }
}
