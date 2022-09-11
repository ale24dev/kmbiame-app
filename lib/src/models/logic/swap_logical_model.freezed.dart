// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'swap_logical_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SwapLogicalModel _$SwapLogicalModelFromJson(Map<String, dynamic> json) {
  return _SwapLogicalModel.fromJson(json);
}

/// @nodoc
mixin _$SwapLogicalModel {
  SwapBaseModel? get swap => throw _privateConstructorUsedError;
  ArticlesLogicalModel? get articles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwapLogicalModelCopyWith<SwapLogicalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapLogicalModelCopyWith<$Res> {
  factory $SwapLogicalModelCopyWith(
          SwapLogicalModel value, $Res Function(SwapLogicalModel) then) =
      _$SwapLogicalModelCopyWithImpl<$Res>;
  $Res call({SwapBaseModel? swap, ArticlesLogicalModel? articles});

  $SwapBaseModelCopyWith<$Res>? get swap;
  $ArticlesLogicalModelCopyWith<$Res>? get articles;
}

/// @nodoc
class _$SwapLogicalModelCopyWithImpl<$Res>
    implements $SwapLogicalModelCopyWith<$Res> {
  _$SwapLogicalModelCopyWithImpl(this._value, this._then);

  final SwapLogicalModel _value;
  // ignore: unused_field
  final $Res Function(SwapLogicalModel) _then;

  @override
  $Res call({
    Object? swap = freezed,
    Object? articles = freezed,
  }) {
    return _then(_value.copyWith(
      swap: swap == freezed
          ? _value.swap
          : swap // ignore: cast_nullable_to_non_nullable
              as SwapBaseModel?,
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as ArticlesLogicalModel?,
    ));
  }

  @override
  $SwapBaseModelCopyWith<$Res>? get swap {
    if (_value.swap == null) {
      return null;
    }

    return $SwapBaseModelCopyWith<$Res>(_value.swap!, (value) {
      return _then(_value.copyWith(swap: value));
    });
  }

  @override
  $ArticlesLogicalModelCopyWith<$Res>? get articles {
    if (_value.articles == null) {
      return null;
    }

    return $ArticlesLogicalModelCopyWith<$Res>(_value.articles!, (value) {
      return _then(_value.copyWith(articles: value));
    });
  }
}

/// @nodoc
abstract class _$$_SwapLogicalModelCopyWith<$Res>
    implements $SwapLogicalModelCopyWith<$Res> {
  factory _$$_SwapLogicalModelCopyWith(
          _$_SwapLogicalModel value, $Res Function(_$_SwapLogicalModel) then) =
      __$$_SwapLogicalModelCopyWithImpl<$Res>;
  @override
  $Res call({SwapBaseModel? swap, ArticlesLogicalModel? articles});

  @override
  $SwapBaseModelCopyWith<$Res>? get swap;
  @override
  $ArticlesLogicalModelCopyWith<$Res>? get articles;
}

/// @nodoc
class __$$_SwapLogicalModelCopyWithImpl<$Res>
    extends _$SwapLogicalModelCopyWithImpl<$Res>
    implements _$$_SwapLogicalModelCopyWith<$Res> {
  __$$_SwapLogicalModelCopyWithImpl(
      _$_SwapLogicalModel _value, $Res Function(_$_SwapLogicalModel) _then)
      : super(_value, (v) => _then(v as _$_SwapLogicalModel));

  @override
  _$_SwapLogicalModel get _value => super._value as _$_SwapLogicalModel;

  @override
  $Res call({
    Object? swap = freezed,
    Object? articles = freezed,
  }) {
    return _then(_$_SwapLogicalModel(
      swap: swap == freezed
          ? _value.swap
          : swap // ignore: cast_nullable_to_non_nullable
              as SwapBaseModel?,
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as ArticlesLogicalModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SwapLogicalModel implements _SwapLogicalModel {
  const _$_SwapLogicalModel({this.swap, this.articles});

  factory _$_SwapLogicalModel.fromJson(Map<String, dynamic> json) =>
      _$$_SwapLogicalModelFromJson(json);

  @override
  final SwapBaseModel? swap;
  @override
  final ArticlesLogicalModel? articles;

  @override
  String toString() {
    return 'SwapLogicalModel(swap: $swap, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SwapLogicalModel &&
            const DeepCollectionEquality().equals(other.swap, swap) &&
            const DeepCollectionEquality().equals(other.articles, articles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(swap),
      const DeepCollectionEquality().hash(articles));

  @JsonKey(ignore: true)
  @override
  _$$_SwapLogicalModelCopyWith<_$_SwapLogicalModel> get copyWith =>
      __$$_SwapLogicalModelCopyWithImpl<_$_SwapLogicalModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SwapLogicalModelToJson(
      this,
    );
  }
}

abstract class _SwapLogicalModel implements SwapLogicalModel {
  const factory _SwapLogicalModel(
      {final SwapBaseModel? swap,
      final ArticlesLogicalModel? articles}) = _$_SwapLogicalModel;

  factory _SwapLogicalModel.fromJson(Map<String, dynamic> json) =
      _$_SwapLogicalModel.fromJson;

  @override
  SwapBaseModel? get swap;
  @override
  ArticlesLogicalModel? get articles;
  @override
  @JsonKey(ignore: true)
  _$$_SwapLogicalModelCopyWith<_$_SwapLogicalModel> get copyWith =>
      throw _privateConstructorUsedError;
}
