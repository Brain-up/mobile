import 'package:json_annotation/json_annotation.dart';

enum UserAccountChangeRequestGender {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('MALE')
  male,
  @JsonValue('FEMALE')
  female
}

const $UserAccountChangeRequestGenderMap = {
  UserAccountChangeRequestGender.male: 'MALE',
  UserAccountChangeRequestGender.female: 'FEMALE',
  UserAccountChangeRequestGender.swaggerGeneratedUnknown:
      'swaggerGeneratedUnknown'
};

enum UserAccountCreateRequestGender {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('MALE')
  male,
  @JsonValue('FEMALE')
  female
}

const $UserAccountCreateRequestGenderMap = {
  UserAccountCreateRequestGender.male: 'MALE',
  UserAccountCreateRequestGender.female: 'FEMALE',
  UserAccountCreateRequestGender.swaggerGeneratedUnknown:
      'swaggerGeneratedUnknown'
};
