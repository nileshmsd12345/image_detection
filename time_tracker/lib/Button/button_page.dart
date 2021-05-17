import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage(
      {this.color, this.text, @required this.onPressed, this.style, this.image });

  final Color color;
  final String text;
  final VoidCallback onPressed;
  final TextStyle style;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Row(
          children: [
            Image.asset(
              image,
              height: 35.0,
              width: 35.0,
            ),
            SizedBox(width: 50),
            Text(text, style: style),
          ],
        ),
        onPressed: onPressed,
        color: color,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(6.0))),
      ),
      height: 50,
      width: MediaQuery.of(context).size.width,
    );
  }
}
