// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_register_logical_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserRegisterLogicalModel _$$_UserRegisterLogicalModelFromJson(
        Map<String, dynamic> json) =>
    _$_UserRegisterLogicalModel(
      userBaseModel:
          UserBaseModel.fromJson(json['user'] as Map<String, dynamic>),
      token: json['accessToken'] as String,
    );

Map<String, dynamic> _$$_UserRegisterLogicalModelToJson(
        _$_UserRegisterLogicalModel instance) =>
    <String, dynamic>{
      'user': instance.userBaseModel.toJson(),
      'accessToken': instance.token,
    };
