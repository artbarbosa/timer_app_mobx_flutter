
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:timer_app/components/timer_button.dart';
import 'package:timer_app/store/app.store.dart';

class Timer extends StatelessWidget {
  const Timer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<AppStore>(context);

    return Observer(
      builder: (_) {
        return Container(
          color: store.isWorking() ? Colors.red : Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                store.isWorking()
                    ? 'Time to Work'
                    : 'Time to Rest',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                '${store.minutes.toString().padLeft(2, '0')}:${store.seconds.toString().padLeft(2, '0')}',
                style: TextStyle(
                  fontSize: 120,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (!store.started)
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: TimerButton(
                        text: 'Start',
                        icon: Icons.play_arrow,
                        click: store.start,
                      ),
                    ),
                  if (store.started)
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: TimerButton(
                        text: 'Stop',
                        icon: Icons.stop,
                        click: store.stop,
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TimerButton(
                      text: 'Restart',
                      icon: Icons.refresh,
                      click: store.restart,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
