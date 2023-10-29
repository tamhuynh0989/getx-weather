import 'dart:async';

class EventBus {
  EventBus({
    bool sync = false,
  }) : _streamController = StreamController.broadcast(sync: sync);
  EventBus.customController(
    StreamController controller,
  ) : _streamController = controller;

  factory EventBus._() {
    if (_instance == null) {
      _instance = EventBus();
    }
    return _instance!;
  }

  static EventBus? _instance;

  static EventBus get instance {
    return EventBus._();
  }

  StreamController _streamController;

  StreamController get streamController => _streamController;
  Stream<T> on<T>() {
    if (T == dynamic) {
      return streamController.stream as Stream<T>;
    }
    return streamController.stream.where((dynamic e) => e is T).cast<T>();
  }

  void fire(dynamic event) {
    streamController.add(event);
  }

  void destroy() {
    _streamController.close();
  }
}

EventBus eventBus = EventBus();
