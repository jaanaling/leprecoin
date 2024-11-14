// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

class Goals {
  final int id;
  final String text;
  final double finalsum;
  double nowsum;
  
  Goals({
    required this.id,
    required this.text,
    required this.finalsum,
    required this.nowsum,
  });

  Goals copyWith({
    int? id,
    String? text,
    double? finalsum,
    double? nowsum,
  }) {
    return Goals(
      id: id ?? this.id,
      text: text ?? this.text,
      finalsum: finalsum ?? this.finalsum,
      nowsum: nowsum ?? this.nowsum,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'text': text,
      'finalsum': finalsum,
      'nowsum': nowsum,
    };
  }

  factory Goals.fromMap(Map<String, dynamic> map) {
    return Goals(
      id: map['id'] as int,
      text: map['text'] as String,
      finalsum: map['finalsum'] as double,
      nowsum: map['nowsum'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory Goals.fromJson(String source) =>
      Goals.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Goals(id: $id, text: $text, finalsum: $finalsum, nowsum: $nowsum)';
  }

  @override
  bool operator ==(covariant Goals other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.text == text &&
        other.finalsum == finalsum &&
        other.nowsum == nowsum;
  }

  @override
  int get hashCode {
    return id.hashCode ^ text.hashCode ^ finalsum.hashCode ^ nowsum.hashCode;
  }
}
