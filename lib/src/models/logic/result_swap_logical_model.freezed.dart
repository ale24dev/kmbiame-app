// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'result_swap_logical_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResultSwapLogicalModel _$ResultSwapLogicalModelFromJson(
    Map<String, dynamic> json) {
  return _ResultSwapLogicalModel.fromJson(json);
}

/// @nodoc
mixin _$ResultSwapLogicalModel {
  SwapBaseModel get swapBaseModel => throw _privateConstructorUsedError;
  ArticlesLogicalModel get articlesLogicalModel =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultSwapLogicalModelCopyWith<ResultSwapLogicalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultSwapLogicalModelCopyWith<$Res> {
  factory $ResultSwapLogicalModelCopyWith(ResultSwapLogicalModel value,
          $Res Function(ResultSwapLogicalModel) then) =
      _$ResultSwapLogicalModelCopyWithImpl<$Res>;
  $Res call(
      {SwapBaseModel swapBaseModel, ArticlesLogicalModel articlesLogicalModel});

  $SwapBaseModelCopyWith<$Res> get swapBaseModel;
  $ArticlesLogicalModelCopyWith<$Res> get articlesLogicalModel;
}

/// @nodoc
class _$ResultSwapLogicalModelCopyWithImpl<$Res>
    implements $ResultSwapLogicalModelCopyWith<$Res> {
  _$ResultSwapLogicalModelCopyWithImpl(this._value, this._then);

  final ResultSwapLogicalModel _value;
  // ignore: unused_field
  final $Res Function(ResultSwapLogicalModel) _then;

  @override
  $Res call({
    Object? swapBaseModel = freezed,
    Object? articlesLogicalModel = freezed,
  }) {
    return _then(_value.copyWith(
      swapBaseModel: swapBaseModel == freezed
          ? _value.swapBaseModel
          : swapBaseModel // ignore: cast_nullable_to_non_nullable
              as SwapBaseModel,
      articlesLogicalModel: articlesLogicalModel == freezed
          ? _value.articlesLogicalModel
          : articlesLogicalModel // ignore: cast_nullable_to_non_nullable
              as ArticlesLogicalModel,
    ));
  }

  @override
  $SwapBaseModelCopyWith<$Res> get swapBaseModel {
    return $SwapBaseModelCopyWith<$Res>(_value.swapBaseModel, (value) {
      return _then(_value.copyWith(swapBaseModel: value));
    });
  }

  @override
  $ArticlesLogicalModelCopyWith<$Res> get articlesLogicalModel {
    return $ArticlesLogicalModelCopyWith<$Res>(_value.articlesLogicalModel,
        (value) {
      return _then(_value.copyWith(articlesLogicalModel: value));
    });
  }
}

/// @nodoc
abstract class _$$_ResultSwapLogicalModelCopyWith<$Res>
    implements $ResultSwapLogicalModelCopyWith<$Res> {
  factory _$$_ResultSwapLogicalModelCopyWith(_$_ResultSwapLogicalModel value,
          $Res Function(_$_ResultSwapLogicalModel) then) =
      __$$_ResultSwapLogicalModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {SwapBaseModel swapBaseModel, ArticlesLogicalModel articlesLogicalModel});

  @override
  $SwapBaseModelCopyWith<$Res> get swapBaseModel;
  @override
  $ArticlesLogicalModelCopyWith<$Res> get articlesLogicalModel;
}

/// @nodoc
class __$$_ResultSwapLogicalModelCopyWithImpl<$Res>
    extends _$ResultSwapLogicalModelCopyWithImpl<$Res>
    implements _$$_ResultSwapLogicalModelCopyWith<$Res> {
  __$$_ResultSwapLogicalModelCopyWithImpl(_$_ResultSwapLogicalModel _value,
      $Res Function(_$_ResultSwapLogicalModel) _then)
      : super(_value, (v) => _then(v as _$_ResultSwapLogicalModel));

  @override
  _$_ResultSwapLogicalModel get _value =>
      super._value as _$_ResultSwapLogicalModel;

  @override
  $Res call({
    Object? swapBaseModel = freezed,
    Object? articlesLogicalModel = freezed,
  }) {
    return _then(_$_ResultSwapLogicalModel(
      swapBaseModel == freezed
          ? _value.swapBaseModel
          : swapBaseModel // ignore: cast_nullable_to_non_nullable
              as SwapBaseModel,
      articlesLogicalModel == freezed
          ? _value.articlesLogicalModel
          : articlesLogicalModel // ignore: cast_nullable_to_non_nullable
              as ArticlesLogicalModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ResultSwapLogicalModel implements _ResultSwapLogicalModel {
  const _$_ResultSwapLogicalModel(
      this.swapBaseModel, this.articlesLogicalModel);

  factory _$_ResultSwapLogicalModel.fromJson(Map<String, dynamic> json) =>
      _$$_ResultSwapLogicalModelFromJson(json);

  @override
  final SwapBaseModel swapBaseModel;
  @override
  final ArticlesLogicalModel articlesLogicalModel;

  @override
  String toString() {
    return 'ResultSwapLogicalModel(swapBaseModel: $swapBaseModel, articlesLogicalModel: $articlesLogicalModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultSwapLogicalModel &&
            const DeepCollectionEquality()
                .equals(other.swapBaseModel, swapBaseModel) &&
            const DeepCollectionEquality()
                .equals(other.articlesLogicalModel, articlesLogicalModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(swapBaseModel),
      const DeepCollectionEquality().hash(articlesLogicalModel));

  @JsonKey(ignore: true)
  @override
  _$$_ResultSwapLogicalModelCopyWith<_$_ResultSwapLogicalModel> get copyWith =>
      __$$_ResultSwapLogicalModelCopyWithImpl<_$_ResultSwapLogicalModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultSwapLogicalModelToJson(
      this,
    );
  }
}

abstract class _ResultSwapLogicalModel implements ResultSwapLogicalModel {
  const factory _ResultSwapLogicalModel(final SwapBaseModel swapBaseModel,
          final ArticlesLogicalModel articlesLogicalModel) =
      _$_ResultSwapLogicalModel;

  factory _ResultSwapLogicalModel.fromJson(Map<String, dynamic> json) =
      _$_ResultSwapLogicalModel.fromJson;

  @override
  SwapBaseModel get swapBaseModel;
  @override
  ArticlesLogicalModel get articlesLogicalModel;
  @override
  @JsonKey(ignore: true)
  _$$_ResultSwapLogicalModelCopyWith<_$_ResultSwapLogicalModel> get copyWith =>
      throw _privateConstructorUsedError;
}
