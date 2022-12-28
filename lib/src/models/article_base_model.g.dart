// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleBaseModel _$$_ArticleBaseModelFromJson(Map<String, dynamic> json) =>
    _$_ArticleBaseModel(
      idArticle: json['idArticle'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      description: json['description'] as String?,
      give: json['give'] as bool?,
      articleType:
          $enumDecodeNullable(_$ArticleTypeEnumMap, json['articleType']),
      swap: json['swap'] == null
          ? null
          : SwapBaseModel.fromJson(json['swap'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ArticleBaseModelToJson(_$_ArticleBaseModel instance) =>
    <String, dynamic>{
      'idArticle': instance.idArticle,
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
      'give': instance.give,
      'articleType': _$ArticleTypeEnumMap[instance.articleType],
      'swap': instance.swap?.toJson(),
    };

const _$ArticleTypeEnumMap = {
  ArticleType.all: 'all',
  ArticleType.food: 'food',
  ArticleType.electronic: 'electronic',
  ArticleType.money: 'money',
  ArticleType.cloth: 'cloth',
  ArticleType.others: 'others',
};
