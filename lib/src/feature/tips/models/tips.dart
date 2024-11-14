import 'dart:convert';

class Tips {
  final String tips;
  bool isFavorite;

  Tips({
    required this.tips,
    required this.isFavorite,
  });

  Tips copyWith({
    String? tips,
    bool? isFavorite,
  }) {
    return Tips(
      tips: tips ?? this.tips,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tips': tips,
      'isFavorite': isFavorite,
    };
  }

  factory Tips.fromMap(Map<String, dynamic> map) {
    return Tips(
      tips: map['tips'] as String,
      isFavorite: map['isFavorite'] as bool? ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Tips.fromJson(String source) => Tips.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Tips(tips: $tips, isFavorite: $isFavorite)';

  @override
  bool operator ==(covariant Tips other) {
    if (identical(this, other)) return true;
  
    return 
      other.tips == tips &&
      other.isFavorite == isFavorite;
  }

  @override
  int get hashCode => tips.hashCode ^ isFavorite.hashCode;
}
