// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDetails _$$_UserDetailsFromJson(Map<String, dynamic> json) =>
    _$_UserDetails(
      fullName: json['fullName'] as String,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      birthdayDate: DateTime.parse(json['birthdayDate'] as String),
      kidsCount: json['kidsCount'] as int,
      email: json['email'] as String,
      relationshipStatus: $enumDecodeNullable(
          _$RelationshipStatusEnumMap, json['relationshipStatus']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_UserDetailsToJson(_$_UserDetails instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'gender': _$GenderEnumMap[instance.gender]!,
      'birthdayDate': instance.birthdayDate.toIso8601String(),
      'kidsCount': instance.kidsCount,
      'email': instance.email,
      'relationshipStatus':
          _$RelationshipStatusEnumMap[instance.relationshipStatus],
      'runtimeType': instance.$type,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.other: 'other',
};

const _$RelationshipStatusEnumMap = {
  RelationshipStatus.single: 'single',
  RelationshipStatus.inRelationship: 'inRelationship',
  RelationshipStatus.married: 'married',
};

_$UserDetailsWithCredentials _$$UserDetailsWithCredentialsFromJson(
        Map<String, dynamic> json) =>
    _$UserDetailsWithCredentials(
      fullName: json['fullName'] as String,
      userCredentials: UserCredentials.fromJson(
          json['userCredentials'] as Map<String, dynamic>),
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      birthdayDate: DateTime.parse(json['birthdayDate'] as String),
      kidsCount: json['kidsCount'] as int,
      relationshipStatus: $enumDecodeNullable(
          _$RelationshipStatusEnumMap, json['relationshipStatus']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserDetailsWithCredentialsToJson(
        _$UserDetailsWithCredentials instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'userCredentials': instance.userCredentials,
      'gender': _$GenderEnumMap[instance.gender]!,
      'birthdayDate': instance.birthdayDate.toIso8601String(),
      'kidsCount': instance.kidsCount,
      'relationshipStatus':
          _$RelationshipStatusEnumMap[instance.relationshipStatus],
      'runtimeType': instance.$type,
    };
