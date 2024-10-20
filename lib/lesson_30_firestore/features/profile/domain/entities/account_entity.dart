// ignore_for_file: public_member_api_docs, sort_constructors_first
class AccountEntity {
  final String? userId;
  final String? avatarUrl;
  final String? fullName;
  final DateTime? dob;
  final String? phoneNumber;
  final String? email;
  final int? gender;
  AccountEntity({
    required this.userId,
    required this.avatarUrl,
    required this.fullName,
    required this.dob,
    required this.phoneNumber,
    required this.email,
    required this.gender,
  });

  AccountEntity copyWith({
    String? userId,
    String? avatarUrl,
    String? fullName,
    DateTime? dob,
    String? phoneNumber,
    String? email,
    int? gender,
  }) {
    return AccountEntity(
      userId: userId ?? this.userId,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      fullName: fullName ?? this.fullName,
      dob: dob ?? this.dob,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      gender: gender ?? this.gender,
    );
  }
}
