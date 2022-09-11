// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserBaseModel _$$_UserBaseModelFromJson(Map<String, dynamic> json) =>
    _$_UserBaseModel(
      idUser: json['idUser'] as int?,
      username: json['username'] as String?,
      image: json['image'] as String?,
      phone: json['phone'] as String?,
      adress: json['adress'] as String?,
    );

Map<String, dynamic> _$$_UserBaseModelToJson(_$_UserBaseModel instance) =>
    <String, dynamic>{
      'idUser': instance.idUser,
      'username': instance.username,
      'image': instance.image,
      'phone': instance.phone,
      'adress': instance.adress,
    };
