// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_base_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserBaseModel _$UserBaseModelFromJson(Map<String, dynamic> json) {
  return _UserBaseModel.fromJson(json);
}

/// @nodoc
mixin _$UserBaseModel {
  int? get idUser => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get adress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserBaseModelCopyWith<UserBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBaseModelCopyWith<$Res> {
  factory $UserBaseModelCopyWith(
          UserBaseModel value, $Res Function(UserBaseModel) then) =
      _$UserBaseModelCopyWithImpl<$Res>;
  $Res call(
      {int? idUser,
      String? username,
      String? image,
      String? phone,
      String? adress});
}

/// @nodoc
class _$UserBaseModelCopyWithImpl<$Res>
    implements $UserBaseModelCopyWith<$Res> {
  _$UserBaseModelCopyWithImpl(this._value, this._then);

  final UserBaseModel _value;
  // ignore: unused_field
  final $Res Function(UserBaseModel) _then;

  @override
  $Res call({
    Object? idUser = freezed,
    Object? username = freezed,
    Object? image = freezed,
    Object? phone = freezed,
    Object? adress = freezed,
  }) {
    return _then(_value.copyWith(
      idUser: idUser == freezed
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      adress: adress == freezed
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_UserBaseModelCopyWith<$Res>
    implements $UserBaseModelCopyWith<$Res> {
  factory _$$_UserBaseModelCopyWith(
          _$_UserBaseModel value, $Res Function(_$_UserBaseModel) then) =
      __$$_UserBaseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? idUser,
      String? username,
      String? image,
      String? phone,
      String? adress});
}

/// @nodoc
class __$$_UserBaseModelCopyWithImpl<$Res>
    extends _$UserBaseModelCopyWithImpl<$Res>
    implements _$$_UserBaseModelCopyWith<$Res> {
  __$$_UserBaseModelCopyWithImpl(
      _$_UserBaseModel _value, $Res Function(_$_UserBaseModel) _then)
      : super(_value, (v) => _then(v as _$_UserBaseModel));

  @override
  _$_UserBaseModel get _value => super._value as _$_UserBaseModel;

  @override
  $Res call({
    Object? idUser = freezed,
    Object? username = freezed,
    Object? image = freezed,
    Object? phone = freezed,
    Object? adress = freezed,
  }) {
    return _then(_$_UserBaseModel(
      idUser: idUser == freezed
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      adress: adress == freezed
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UserBaseModel implements _UserBaseModel {
  const _$_UserBaseModel(
      {this.idUser, this.username, this.image, this.phone, this.adress});

  factory _$_UserBaseModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserBaseModelFromJson(json);

  @override
  final int? idUser;
  @override
  final String? username;
  @override
  final String? image;
  @override
  final String? phone;
  @override
  final String? adress;

  @override
  String toString() {
    return 'UserBaseModel(idUser: $idUser, username: $username, image: $image, phone: $phone, adress: $adress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserBaseModel &&
            const DeepCollectionEquality().equals(other.idUser, idUser) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.adress, adress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idUser),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(adress));

  @JsonKey(ignore: true)
  @override
  _$$_UserBaseModelCopyWith<_$_UserBaseModel> get copyWith =>
      __$$_UserBaseModelCopyWithImpl<_$_UserBaseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserBaseModelToJson(
      this,
    );
  }
}

abstract class _UserBaseModel implements UserBaseModel {
  const factory _UserBaseModel(
      {final int? idUser,
      final String? username,
      final String? image,
      final String? phone,
      final String? adress}) = _$_UserBaseModel;

  factory _UserBaseModel.fromJson(Map<String, dynamic> json) =
      _$_UserBaseModel.fromJson;

  @override
  int? get idUser;
  @override
  String? get username;
  @override
  String? get image;
  @override
  String? get phone;
  @override
  String? get adress;
  @override
  @JsonKey(ignore: true)
  _$$_UserBaseModelCopyWith<_$_UserBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
