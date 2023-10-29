import 'dart:async';

class RestartableTimer implements Timer {
  RestartableTimer(this._duration, this._callback)
      : _timer = Timer(_duration, _callback);

  final Duration _duration;
  final ZoneCallback _callback;
  Timer _timer;

  @override
  bool get isActive => _timer.isActive;
  void reset() {
    _timer.cancel();
    _timer = Timer(_duration, _callback);
  }

  @override
  void cancel() {
    _timer.cancel();
  }

  @override
  int get tick => _timer.tick;
}
