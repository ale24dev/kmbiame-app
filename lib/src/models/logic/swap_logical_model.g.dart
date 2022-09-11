// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swap_logical_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SwapLogicalModel _$$_SwapLogicalModelFromJson(Map<String, dynamic> json) =>
    _$_SwapLogicalModel(
      swap: json['swap'] == null
          ? null
          : SwapBaseModel.fromJson(json['swap'] as Map<String, dynamic>),
      articles: json['articles'] == null
          ? null
          : ArticlesLogicalModel.fromJson(
              json['articles'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SwapLogicalModelToJson(_$_SwapLogicalModel instance) =>
    <String, dynamic>{
      'swap': instance.swap?.toJson(),
      'articles': instance.articles?.toJson(),
    };
