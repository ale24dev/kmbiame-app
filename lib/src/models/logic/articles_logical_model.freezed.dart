// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'articles_logical_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticlesLogicalModel _$ArticlesLogicalModelFromJson(Map<String, dynamic> json) {
  return _ArticlesLogicalModel.fromJson(json);
}

/// @nodoc
mixin _$ArticlesLogicalModel {
  ArticleBaseModel? get give => throw _privateConstructorUsedError;
  ArticleBaseModel? get obtain => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticlesLogicalModelCopyWith<ArticlesLogicalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticlesLogicalModelCopyWith<$Res> {
  factory $ArticlesLogicalModelCopyWith(ArticlesLogicalModel value,
          $Res Function(ArticlesLogicalModel) then) =
      _$ArticlesLogicalModelCopyWithImpl<$Res>;
  $Res call({ArticleBaseModel? give, ArticleBaseModel? obtain});

  $ArticleBaseModelCopyWith<$Res>? get give;
  $ArticleBaseModelCopyWith<$Res>? get obtain;
}

/// @nodoc
class _$ArticlesLogicalModelCopyWithImpl<$Res>
    implements $ArticlesLogicalModelCopyWith<$Res> {
  _$ArticlesLogicalModelCopyWithImpl(this._value, this._then);

  final ArticlesLogicalModel _value;
  // ignore: unused_field
  final $Res Function(ArticlesLogicalModel) _then;

  @override
  $Res call({
    Object? give = freezed,
    Object? obtain = freezed,
  }) {
    return _then(_value.copyWith(
      give: give == freezed
          ? _value.give
          : give // ignore: cast_nullable_to_non_nullable
              as ArticleBaseModel?,
      obtain: obtain == freezed
          ? _value.obtain
          : obtain // ignore: cast_nullable_to_non_nullable
              as ArticleBaseModel?,
    ));
  }

  @override
  $ArticleBaseModelCopyWith<$Res>? get give {
    if (_value.give == null) {
      return null;
    }

    return $ArticleBaseModelCopyWith<$Res>(_value.give!, (value) {
      return _then(_value.copyWith(give: value));
    });
  }

  @override
  $ArticleBaseModelCopyWith<$Res>? get obtain {
    if (_value.obtain == null) {
      return null;
    }

    return $ArticleBaseModelCopyWith<$Res>(_value.obtain!, (value) {
      return _then(_value.copyWith(obtain: value));
    });
  }
}

/// @nodoc
abstract class _$$_ArticlesLogicalModelCopyWith<$Res>
    implements $ArticlesLogicalModelCopyWith<$Res> {
  factory _$$_ArticlesLogicalModelCopyWith(_$_ArticlesLogicalModel value,
          $Res Function(_$_ArticlesLogicalModel) then) =
      __$$_ArticlesLogicalModelCopyWithImpl<$Res>;
  @override
  $Res call({ArticleBaseModel? give, ArticleBaseModel? obtain});

  @override
  $ArticleBaseModelCopyWith<$Res>? get give;
  @override
  $ArticleBaseModelCopyWith<$Res>? get obtain;
}

/// @nodoc
class __$$_ArticlesLogicalModelCopyWithImpl<$Res>
    extends _$ArticlesLogicalModelCopyWithImpl<$Res>
    implements _$$_ArticlesLogicalModelCopyWith<$Res> {
  __$$_ArticlesLogicalModelCopyWithImpl(_$_ArticlesLogicalModel _value,
      $Res Function(_$_ArticlesLogicalModel) _then)
      : super(_value, (v) => _then(v as _$_ArticlesLogicalModel));

  @override
  _$_ArticlesLogicalModel get _value => super._value as _$_ArticlesLogicalModel;

  @override
  $Res call({
    Object? give = freezed,
    Object? obtain = freezed,
  }) {
    return _then(_$_ArticlesLogicalModel(
      give: give == freezed
          ? _value.give
          : give // ignore: cast_nullable_to_non_nullable
              as ArticleBaseModel?,
      obtain: obtain == freezed
          ? _value.obtain
          : obtain // ignore: cast_nullable_to_non_nullable
              as ArticleBaseModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ArticlesLogicalModel implements _ArticlesLogicalModel {
  const _$_ArticlesLogicalModel({this.give, this.obtain});

  factory _$_ArticlesLogicalModel.fromJson(Map<String, dynamic> json) =>
      _$$_ArticlesLogicalModelFromJson(json);

  @override
  final ArticleBaseModel? give;
  @override
  final ArticleBaseModel? obtain;

  @override
  String toString() {
    return 'ArticlesLogicalModel(give: $give, obtain: $obtain)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticlesLogicalModel &&
            const DeepCollectionEquality().equals(other.give, give) &&
            const DeepCollectionEquality().equals(other.obtain, obtain));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(give),
      const DeepCollectionEquality().hash(obtain));

  @JsonKey(ignore: true)
  @override
  _$$_ArticlesLogicalModelCopyWith<_$_ArticlesLogicalModel> get copyWith =>
      __$$_ArticlesLogicalModelCopyWithImpl<_$_ArticlesLogicalModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticlesLogicalModelToJson(
      this,
    );
  }
}

abstract class _ArticlesLogicalModel implements ArticlesLogicalModel {
  const factory _ArticlesLogicalModel(
      {final ArticleBaseModel? give,
      final ArticleBaseModel? obtain}) = _$_ArticlesLogicalModel;

  factory _ArticlesLogicalModel.fromJson(Map<String, dynamic> json) =
      _$_ArticlesLogicalModel.fromJson;

  @override
  ArticleBaseModel? get give;
  @override
  ArticleBaseModel? get obtain;
  @override
  @JsonKey(ignore: true)
  _$$_ArticlesLogicalModelCopyWith<_$_ArticlesLogicalModel> get copyWith =>
      throw _privateConstructorUsedError;
}
