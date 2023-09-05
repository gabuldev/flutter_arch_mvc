import 'dart:convert';

// Model
// De um nome
// Atributos

class CountModel {
  final int value;
  CountModel({
    required this.value,
  });

  CountModel copyWith({
    int? value,
  }) {
    return CountModel(
      value: value ?? this.value,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory CountModel.fromMap(Map<String, dynamic> map) {
    return CountModel(
      value: map['value'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory CountModel.fromJson(String source) =>
      CountModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CountModel(value: $value)';

  @override
  bool operator ==(covariant CountModel other) {
    if (identical(this, other)) return true;

    return other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
