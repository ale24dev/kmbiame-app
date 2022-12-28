// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_swap_logical_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResultSwapLogicalModel _$$_ResultSwapLogicalModelFromJson(
        Map<String, dynamic> json) =>
    _$_ResultSwapLogicalModel(
      SwapBaseModel.fromJson(json['swapBaseModel'] as Map<String, dynamic>),
      ArticlesLogicalModel.fromJson(
          json['articlesLogicalModel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResultSwapLogicalModelToJson(
        _$_ResultSwapLogicalModel instance) =>
    <String, dynamic>{
      'swapBaseModel': instance.swapBaseModel.toJson(),
      'articlesLogicalModel': instance.articlesLogicalModel.toJson(),
    };
