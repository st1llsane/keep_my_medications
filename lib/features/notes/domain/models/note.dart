import 'package:freezed_annotation/freezed_annotation.dart';

part 'note.freezed.dart';
part 'note.g.dart';

@Freezed(copyWith: true, fromJson: true, toJson: true)
sealed class Note with _$Note {
  const factory Note({
    required String id,
    required String title,
    required String? content,
  }) = _Note;

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}
