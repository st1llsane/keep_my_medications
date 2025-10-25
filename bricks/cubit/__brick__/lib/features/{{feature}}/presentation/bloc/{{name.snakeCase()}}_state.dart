part of '{{name.snakeCase()}}_cubit.dart';

enum {{name.pascalCase()}}StateStatus { loading, success, failure }

@Freezed(copyWith: true)
abstract class {{name.pascalCase()}}State with _${{name.pascalCase()}}State {
  const {{name.pascalCase()}}State._();

  const factory {{name.pascalCase()}}State({
    @Default({{name.pascalCase()}}StateStatus.loading) {{name.pascalCase()}}StateStatus status,
  }) = _{{name.pascalCase()}}State;

  bool get isFailure => status == {{name.pascalCase()}}StateStatus.failure;

  bool get isSuccess => status == {{name.pascalCase()}}StateStatus.success;
}
