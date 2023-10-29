import 'package:demo_getx_flutter/utils/ext/function.dart';

class Tuple2<T1, T2> {
  const Tuple2(this.value1, this.value2);

  factory Tuple2.fromMap(Map<String, dynamic> map) {
    return new Tuple2(
      map['value1'] as T1,
      map['value2'] as T2,
    );
  }

  final T1 value1;
  final T2 value2;

  R apply<R>(Function2<T1, T2, R> f) => f(value1, value2);

  Tuple2<NT1, T2> map1<NT1>(Function1<T1, NT1> f) =>
      new Tuple2(f(value1), value2);

  Tuple2<T1, NT2> map2<NT2>(Function1<T2, NT2> f) =>
      new Tuple2(value1, f(value2));

  T1 get head => value1;

  T2 get tail => value2;

  T1 get init => value1;

  T2 get last => value2;

  Tuple3<T1, T2, T3> append<T3>(T3 value3) => Tuple3(value1, value2, value3);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple2 && value1 == other.value1 && value2 == other.value2);

  @override
  int get hashCode => value1.hashCode ^ value2.hashCode;

  @override
  String toString() => '($value1, $value2)';

  Tuple2<T1, T2> copyWith({
    T1? value1,
    T2? value2,
  }) {
    return new Tuple2(
      value1 ?? this.value1,
      value2 ?? this.value2,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': this.value1,
      'value2': this.value2,
    };
  }
}

class Tuple3<T1, T2, T3> {
  const Tuple3(this.value1, this.value2, this.value3);

  factory Tuple3.fromMap(Map<String, dynamic> map) {
    return new Tuple3(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
    );
  }

  final T1 value1;
  final T2 value2;
  final T3 value3;

  R apply<R>(Function3<T1, T2, T3, R> f) => f(value1, value2, value3);

  T1 get head => value1;

  Tuple2<T2, T3> get tail => Tuple2(value2, value3);

  Tuple2<T1, T2> get init => Tuple2(value1, value2);

  T3 get last => value3;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple3 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3);

  @override
  int get hashCode => value1.hashCode ^ value2.hashCode ^ value3.hashCode;

  @override
  String toString() => '($value1, $value2, $value3)';

  Tuple3<T1, T2, T3> copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
  }) {
    return new Tuple3(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': this.value1,
      'value2': this.value2,
      'value3': this.value3,
    };
  }
}
