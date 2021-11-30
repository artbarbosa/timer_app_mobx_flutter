import 'package:flutter/material.dart';

class TimerButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? click;

  const TimerButton({
    Key? key,
    required this.text,
    required this.icon,
    this.click,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        textStyle: TextStyle(
          fontSize: 25,
        ),
      ),
      onPressed: click,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              icon,
              size: 35,
            ),
          ),
          Text(text),
        ],
      ),
    );
  }
}
