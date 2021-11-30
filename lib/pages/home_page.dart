import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:timer_app/components/input_time.dart';
import 'package:timer_app/components/timer.dart';
import 'package:timer_app/store/app.store.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<AppStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Timer(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InputTime(
                    title: 'Work',
                    value: store.timeWork,
                    inc: store.started && store.isWorking()
                        ? null
                        : store.workTimeIncrement,
                    dec: store.started && store.isWorking()
                        ? null
                        : store.workTimeDecrement,
                  ),
                  InputTime(
                    title: 'Rest',
                    value: store.timeRest,
                    inc: store.started && store.isResting()
                        ? null
                        : store.restTimeIncrement,
                    dec: store.started && store.isResting()
                        ? null
                        : store.restTimeDecrement,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
