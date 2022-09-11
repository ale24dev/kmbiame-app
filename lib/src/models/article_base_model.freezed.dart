// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_base_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleBaseModel _$ArticleBaseModelFromJson(Map<String, dynamic> json) {
  return _ArticleBaseModel.fromJson(json);
}

/// @nodoc
mixin _$ArticleBaseModel {
  int? get idArticle => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get give => throw _privateConstructorUsedError;
  ArticleType? get articleType => throw _privateConstructorUsedError;
  SwapBaseModel? get swap => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleBaseModelCopyWith<ArticleBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleBaseModelCopyWith<$Res> {
  factory $ArticleBaseModelCopyWith(
          ArticleBaseModel value, $Res Function(ArticleBaseModel) then) =
      _$ArticleBaseModelCopyWithImpl<$Res>;
  $Res call(
      {int? idArticle,
      String? name,
      String? image,
      String? description,
      bool? give,
      ArticleType? articleType,
      SwapBaseModel? swap});

  $SwapBaseModelCopyWith<$Res>? get swap;
}

/// @nodoc
class _$ArticleBaseModelCopyWithImpl<$Res>
    implements $ArticleBaseModelCopyWith<$Res> {
  _$ArticleBaseModelCopyWithImpl(this._value, this._then);

  final ArticleBaseModel _value;
  // ignore: unused_field
  final $Res Function(ArticleBaseModel) _then;

  @override
  $Res call({
    Object? idArticle = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? give = freezed,
    Object? articleType = freezed,
    Object? swap = freezed,
  }) {
    return _then(_value.copyWith(
      idArticle: idArticle == freezed
          ? _value.idArticle
          : idArticle // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      give: give == freezed
          ? _value.give
          : give // ignore: cast_nullable_to_non_nullable
              as bool?,
      articleType: articleType == freezed
          ? _value.articleType
          : articleType // ignore: cast_nullable_to_non_nullable
              as ArticleType?,
      swap: swap == freezed
          ? _value.swap
          : swap // ignore: cast_nullable_to_non_nullable
              as SwapBaseModel?,
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
}

/// @nodoc
abstract class _$$_ArticleBaseModelCopyWith<$Res>
    implements $ArticleBaseModelCopyWith<$Res> {
  factory _$$_ArticleBaseModelCopyWith(
          _$_ArticleBaseModel value, $Res Function(_$_ArticleBaseModel) then) =
      __$$_ArticleBaseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? idArticle,
      String? name,
      String? image,
      String? description,
      bool? give,
      ArticleType? articleType,
      SwapBaseModel? swap});

  @override
  $SwapBaseModelCopyWith<$Res>? get swap;
}

/// @nodoc
class __$$_ArticleBaseModelCopyWithImpl<$Res>
    extends _$ArticleBaseModelCopyWithImpl<$Res>
    implements _$$_ArticleBaseModelCopyWith<$Res> {
  __$$_ArticleBaseModelCopyWithImpl(
      _$_ArticleBaseModel _value, $Res Function(_$_ArticleBaseModel) _then)
      : super(_value, (v) => _then(v as _$_ArticleBaseModel));

  @override
  _$_ArticleBaseModel get _value => super._value as _$_ArticleBaseModel;

  @override
  $Res call({
    Object? idArticle = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? give = freezed,
    Object? articleType = freezed,
    Object? swap = freezed,
  }) {
    return _then(_$_ArticleBaseModel(
      idArticle: idArticle == freezed
          ? _value.idArticle
          : idArticle // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      give: give == freezed
          ? _value.give
          : give // ignore: cast_nullable_to_non_nullable
              as bool?,
      articleType: articleType == freezed
          ? _value.articleType
          : articleType // ignore: cast_nullable_to_non_nullable
              as ArticleType?,
      swap: swap == freezed
          ? _value.swap
          : swap // ignore: cast_nullable_to_non_nullable
              as SwapBaseModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ArticleBaseModel implements _ArticleBaseModel {
  const _$_ArticleBaseModel(
      {this.idArticle,
      this.name,
      this.image,
      this.description,
      this.give,
      this.articleType,
      this.swap});

  factory _$_ArticleBaseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleBaseModelFromJson(json);

  @override
  final int? idArticle;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? description;
  @override
  final bool? give;
  @override
  final ArticleType? articleType;
  @override
  final SwapBaseModel? swap;

  @override
  String toString() {
    return 'ArticleBaseModel(idArticle: $idArticle, name: $name, image: $image, description: $description, give: $give, articleType: $articleType, swap: $swap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleBaseModel &&
            const DeepCollectionEquality().equals(other.idArticle, idArticle) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.give, give) &&
            const DeepCollectionEquality()
                .equals(other.articleType, articleType) &&
            const DeepCollectionEquality().equals(other.swap, swap));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idArticle),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(give),
      const DeepCollectionEquality().hash(articleType),
      const DeepCollectionEquality().hash(swap));

  @JsonKey(ignore: true)
  @override
  _$$_ArticleBaseModelCopyWith<_$_ArticleBaseModel> get copyWith =>
      __$$_ArticleBaseModelCopyWithImpl<_$_ArticleBaseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleBaseModelToJson(
      this,
    );
  }
}

abstract class _ArticleBaseModel implements ArticleBaseModel {
  const factory _ArticleBaseModel(
      {final int? idArticle,
      final String? name,
      final String? image,
      final String? description,
      final bool? give,
      final ArticleType? articleType,
      final SwapBaseModel? swap}) = _$_ArticleBaseModel;

  factory _ArticleBaseModel.fromJson(Map<String, dynamic> json) =
      _$_ArticleBaseModel.fromJson;

  @override
  int? get idArticle;
  @override
  String? get name;
  @override
  String? get image;
  @override
  String? get description;
  @override
  bool? get give;
  @override
  ArticleType? get articleType;
  @override
  SwapBaseModel? get swap;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleBaseModelCopyWith<_$_ArticleBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
