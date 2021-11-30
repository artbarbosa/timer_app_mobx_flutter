// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppStore on _AppStore, Store {
  final _$startedAtom = Atom(name: '_AppStore.started');

  @override
  bool get started {
    _$startedAtom.reportRead();
    return super.started;
  }

  @override
  set started(bool value) {
    _$startedAtom.reportWrite(value, super.started, () {
      super.started = value;
    });
  }

  final _$minutesAtom = Atom(name: '_AppStore.minutes');

  @override
  int get minutes {
    _$minutesAtom.reportRead();
    return super.minutes;
  }

  @override
  set minutes(int value) {
    _$minutesAtom.reportWrite(value, super.minutes, () {
      super.minutes = value;
    });
  }

  final _$secondsAtom = Atom(name: '_AppStore.seconds');

  @override
  int get seconds {
    _$secondsAtom.reportRead();
    return super.seconds;
  }

  @override
  set seconds(int value) {
    _$secondsAtom.reportWrite(value, super.seconds, () {
      super.seconds = value;
    });
  }

  final _$timeWorkAtom = Atom(name: '_AppStore.timeWork');

  @override
  int get timeWork {
    _$timeWorkAtom.reportRead();
    return super.timeWork;
  }

  @override
  set timeWork(int value) {
    _$timeWorkAtom.reportWrite(value, super.timeWork, () {
      super.timeWork = value;
    });
  }

  final _$timeRestAtom = Atom(name: '_AppStore.timeRest');

  @override
  int get timeRest {
    _$timeRestAtom.reportRead();
    return super.timeRest;
  }

  @override
  set timeRest(int value) {
    _$timeRestAtom.reportWrite(value, super.timeRest, () {
      super.timeRest = value;
    });
  }

  final _$intervalTypeAtom = Atom(name: '_AppStore.intervalType');

  @override
  IntervalType get intervalType {
    _$intervalTypeAtom.reportRead();
    return super.intervalType;
  }

  @override
  set intervalType(IntervalType value) {
    _$intervalTypeAtom.reportWrite(value, super.intervalType, () {
      super.intervalType = value;
    });
  }

  final _$_AppStoreActionController = ActionController(name: '_AppStore');

  @override
  void start() {
    final _$actionInfo =
        _$_AppStoreActionController.startAction(name: '_AppStore.start');
    try {
      return super.start();
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void stop() {
    final _$actionInfo =
        _$_AppStoreActionController.startAction(name: '_AppStore.stop');
    try {
      return super.stop();
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void restart() {
    final _$actionInfo =
        _$_AppStoreActionController.startAction(name: '_AppStore.restart');
    try {
      return super.restart();
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void workTimeIncrement() {
    final _$actionInfo = _$_AppStoreActionController.startAction(
        name: '_AppStore.workTimeIncrement');
    try {
      return super.workTimeIncrement();
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void workTimeDecrement() {
    final _$actionInfo = _$_AppStoreActionController.startAction(
        name: '_AppStore.workTimeDecrement');
    try {
      return super.workTimeDecrement();
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void restTimeIncrement() {
    final _$actionInfo = _$_AppStoreActionController.startAction(
        name: '_AppStore.restTimeIncrement');
    try {
      return super.restTimeIncrement();
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void restTimeDecrement() {
    final _$actionInfo = _$_AppStoreActionController.startAction(
        name: '_AppStore.restTimeDecrement');
    try {
      return super.restTimeDecrement();
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
started: ${started},
minutes: ${minutes},
seconds: ${seconds},
timeWork: ${timeWork},
timeRest: ${timeRest},
intervalType: ${intervalType}
    ''';
  }
}
