
import 'dart:convert';

class Transaction {
  final int  id;
  final String title;
  final double sum;
  final String date;
  final String type;
  final bool isIncome;
  
  Transaction({
    required this.id,
    required this.title,
    required this.sum,
    required this.date,
    required this.type,
    required this.isIncome,
  });

  Transaction copyWith({
    int? id,
    String? title,
    double? sum,
    String? date,
    String? type,
    bool? isIncome,
  }) {
    return Transaction(
      id: id ?? this.id,
      title: title ?? this.title,
      sum: sum ?? this.sum,
      date: date ?? this.date,
      type: type ?? this.type,
      isIncome: isIncome ?? this.isIncome,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'sum': sum,
      'date': date,
      'type': type,
      'isIncome': isIncome,
    };
  }

  factory Transaction.fromMap(Map<String, dynamic> map) {
    return Transaction(
      id: map['id'] as int,
      title: map['title'] as String,
      sum: map['sum'] as double,
      date: map['date'] as String,
      type: map['type'] as String,
      isIncome: map['isIncome'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Transaction.fromJson(String source) => Transaction.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Transaction(id: $id, title: $title, sum: $sum, date: $date, type: $type, isIncome: $isIncome)';
  }

  @override
  bool operator ==(covariant Transaction other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.title == title &&
      other.sum == sum &&
      other.date == date &&
      other.type == type &&
      other.isIncome == isIncome;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      sum.hashCode ^
      date.hashCode ^
      type.hashCode ^
      isIncome.hashCode;
  }
}
