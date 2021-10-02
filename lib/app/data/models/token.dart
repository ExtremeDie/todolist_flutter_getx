import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.freezed.dart';
part 'token.g.dart';

@freezed
class Token with _$Token {
  const factory Token({
    required String token,
    @JsonKey(fromJson: _dateTimeFromTimestamp, toJson: _dateTimeAsIs)
        required DateTime expires,
  }) = _Token;
  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);

  static DateTime _dateTimeAsIs(DateTime dateTime) => dateTime;
  static DateTime _dateTimeFromTimestamp(dynamic timeStamp) {
    return DateTime.parse(timeStamp);
  }
}
