import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';
part 'result.g.dart';

@freezed
sealed class Result with _$Result {
  const Result._();

  const factory Result.success(dynamic data, {bool? isBinary}) = _Success;
  const factory Result.error(int code, String error) = _Error;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
