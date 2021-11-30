import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer_app/store/app.store.dart';

class InputTime extends StatelessWidget {
  final String title;
  final int value;
  final void Function()? inc;
  final void Function()? dec;

  const InputTime({
    Key? key,
    required this.title,
    required this.value,
    this.inc,
    this.dec,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<AppStore>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          this.title,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: this.dec,
              child: Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                primary: store.isWorking() ? Colors.red : Colors.green,
              ),
            ),
            Text(
              '${this.value} min',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            ElevatedButton(
              onPressed: this.inc,
              child: Icon(
                Icons.arrow_upward,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                primary: store.isWorking() ? Colors.red : Colors.green,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
