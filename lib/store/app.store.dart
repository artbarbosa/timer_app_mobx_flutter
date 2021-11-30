import 'dart:async';

import 'package:mobx/mobx.dart';

part 'app.store.g.dart';

class AppStore = _AppStore with _$AppStore;

enum IntervalType { work, rest }

abstract class _AppStore with Store {
  @observable
  bool started = false;

  @observable
  int minutes = 2;

  @observable
  int seconds = 0;

  @observable
  int timeWork = 2;

  @observable
  int timeRest = 1;

  @observable
  IntervalType intervalType = IntervalType.work;

  Timer? stopwatch;

  @action
  void start() {
    started = true;
    stopwatch = Timer.periodic(Duration(milliseconds: 1000), (timer) {
      if (minutes == 0 && seconds == 0) {
        _trocarTipoIntervalo();
      } else if (seconds == 0) {
        seconds = 59;
        minutes--;
      } else {
        seconds--;
      }
    });
  }

  @action
  void stop() {
    started = false;
    stopwatch?.cancel();
  }

  @action
  void restart() {
    stop();
    minutes = isWorking() ? timeWork : timeRest;
    seconds = 0;
  }

  @action
  void workTimeIncrement() {
    timeWork++;
    if (isWorking()) {
      restart();
    }
  }

  @action
  void workTimeDecrement() {
    if (timeWork > 1) {
      timeWork--;
      if (isWorking()) {
        restart();
      }
    }
  }

  @action
  void restTimeIncrement() {
    timeRest++;
    if (isResting()) {
      restart();
    }
  }

  @action
  void restTimeDecrement() {
    if (timeRest > 1) {
      timeRest--;
      if (isResting()) {
        restart();
      }
    }
  }

  bool isWorking() {
    return intervalType == IntervalType.work;
  }

  bool isResting() {
    return intervalType == IntervalType.rest;
  }

  void _trocarTipoIntervalo() {
    if (isWorking()) {
      intervalType = IntervalType.rest;
      minutes = timeRest;
    } else {
      intervalType = IntervalType.work;
      minutes = timeWork;
    }
    seconds = 0;
  }
}
