// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swap_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SwapBaseModel _$$_SwapBaseModelFromJson(Map<String, dynamic> json) =>
    _$_SwapBaseModel(
      json['active'] as bool,
      json['idSwap'] as int,
      DateTime.parse(json['date'] as String),
      description: json['description'] as String?,
      adress: json['adress'] as String?,
      user: json['user'] == null
          ? null
          : UserBaseModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SwapBaseModelToJson(_$_SwapBaseModel instance) =>
    <String, dynamic>{
      'active': instance.active,
      'idSwap': instance.idSwap,
      'date': instance.date.toIso8601String(),
      'description': instance.description,
      'adress': instance.adress,
      'user': instance.user?.toJson(),
    };
