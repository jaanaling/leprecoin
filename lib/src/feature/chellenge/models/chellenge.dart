import 'dart:convert';

class Challenge {
  final String challenge;
  String status;

  Challenge({
    required this.challenge,
    required this.status,
  });

  

  Challenge copyWith({
    String? challenge,
    String? status,
  }) {
    return Challenge(
      challenge: challenge ?? this.challenge,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'challenge': challenge,
      'status': status,
    };
  }

  factory Challenge.fromMap(Map<String, dynamic> map) {
    return Challenge(
      challenge: map['challenge'] as String,
      status: map['status'] as String? ?? 'not started',
    );
  }

  String toJson() => json.encode(toMap());

  factory Challenge.fromJson(String source) => Challenge.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Chellenge(chellenge: $challenge, status: $status)';

  @override
  bool operator ==(covariant Challenge other) {
    if (identical(this, other)) return true;
  
    return 
      other.challenge == challenge &&
      other.status == status;
  }

  @override
  int get hashCode => challenge.hashCode ^ status.hashCode;
}
