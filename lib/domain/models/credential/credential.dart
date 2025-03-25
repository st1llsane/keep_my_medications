import 'package:freezed_annotation/freezed_annotation.dart';

// abstract interface class CredentialSignature

// abstract interface class Credential {
//   // void validateBy () {
//   // }
// }

part 'credential.freezed.dart';
part 'credential.g.dart';

@freezed
class Credential with _$Credential {
  const factory Credential({
    required String name,
    @Default('') String username,
    @Default('') String password,
  }) = _Credential;

  factory Credential.fromJson(Map<String, Object?> json) => _$CredentialFromJson(json);
}
