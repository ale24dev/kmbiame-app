// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articles_logical_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticlesLogicalModel _$$_ArticlesLogicalModelFromJson(
        Map<String, dynamic> json) =>
    _$_ArticlesLogicalModel(
      give: json['give'] == null
          ? null
          : ArticleBaseModel.fromJson(json['give'] as Map<String, dynamic>),
      obtain: json['obtain'] == null
          ? null
          : ArticleBaseModel.fromJson(json['obtain'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ArticlesLogicalModelToJson(
        _$_ArticlesLogicalModel instance) =>
    <String, dynamic>{
      'give': instance.give?.toJson(),
      'obtain': instance.obtain?.toJson(),
    };
