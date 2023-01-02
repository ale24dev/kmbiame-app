// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_register_logical_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserRegisterLogicalModel _$UserRegisterLogicalModelFromJson(
    Map<String, dynamic> json) {
  return _UserRegisterLogicalModel.fromJson(json);
}

/// @nodoc
mixin _$UserRegisterLogicalModel {
  @JsonKey(name: "user")
  UserBaseModel get userBaseModel => throw _privateConstructorUsedError;
  @JsonKey(name: "accessToken")
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRegisterLogicalModelCopyWith<UserRegisterLogicalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegisterLogicalModelCopyWith<$Res> {
  factory $UserRegisterLogicalModelCopyWith(UserRegisterLogicalModel value,
          $Res Function(UserRegisterLogicalModel) then) =
      _$UserRegisterLogicalModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "user") UserBaseModel userBaseModel,
      @JsonKey(name: "accessToken") String token});

  $UserBaseModelCopyWith<$Res> get userBaseModel;
}

/// @nodoc
class _$UserRegisterLogicalModelCopyWithImpl<$Res>
    implements $UserRegisterLogicalModelCopyWith<$Res> {
  _$UserRegisterLogicalModelCopyWithImpl(this._value, this._then);

  final UserRegisterLogicalModel _value;
  // ignore: unused_field
  final $Res Function(UserRegisterLogicalModel) _then;

  @override
  $Res call({
    Object? userBaseModel = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      userBaseModel: userBaseModel == freezed
          ? _value.userBaseModel
          : userBaseModel // ignore: cast_nullable_to_non_nullable
              as UserBaseModel,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $UserBaseModelCopyWith<$Res> get userBaseModel {
    return $UserBaseModelCopyWith<$Res>(_value.userBaseModel, (value) {
      return _then(_value.copyWith(userBaseModel: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserRegisterLogicalModelCopyWith<$Res>
    implements $UserRegisterLogicalModelCopyWith<$Res> {
  factory _$$_UserRegisterLogicalModelCopyWith(
          _$_UserRegisterLogicalModel value,
          $Res Function(_$_UserRegisterLogicalModel) then) =
      __$$_UserRegisterLogicalModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "user") UserBaseModel userBaseModel,
      @JsonKey(name: "accessToken") String token});

  @override
  $UserBaseModelCopyWith<$Res> get userBaseModel;
}

/// @nodoc
class __$$_UserRegisterLogicalModelCopyWithImpl<$Res>
    extends _$UserRegisterLogicalModelCopyWithImpl<$Res>
    implements _$$_UserRegisterLogicalModelCopyWith<$Res> {
  __$$_UserRegisterLogicalModelCopyWithImpl(_$_UserRegisterLogicalModel _value,
      $Res Function(_$_UserRegisterLogicalModel) _then)
      : super(_value, (v) => _then(v as _$_UserRegisterLogicalModel));

  @override
  _$_UserRegisterLogicalModel get _value =>
      super._value as _$_UserRegisterLogicalModel;

  @override
  $Res call({
    Object? userBaseModel = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_UserRegisterLogicalModel(
      userBaseModel: userBaseModel == freezed
          ? _value.userBaseModel
          : userBaseModel // ignore: cast_nullable_to_non_nullable
              as UserBaseModel,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UserRegisterLogicalModel implements _UserRegisterLogicalModel {
  const _$_UserRegisterLogicalModel(
      {@JsonKey(name: "user") required this.userBaseModel,
      @JsonKey(name: "accessToken") required this.token});

  factory _$_UserRegisterLogicalModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserRegisterLogicalModelFromJson(json);

  @override
  @JsonKey(name: "user")
  final UserBaseModel userBaseModel;
  @override
  @JsonKey(name: "accessToken")
  final String token;

  @override
  String toString() {
    return 'UserRegisterLogicalModel(userBaseModel: $userBaseModel, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserRegisterLogicalModel &&
            const DeepCollectionEquality()
                .equals(other.userBaseModel, userBaseModel) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userBaseModel),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_UserRegisterLogicalModelCopyWith<_$_UserRegisterLogicalModel>
      get copyWith => __$$_UserRegisterLogicalModelCopyWithImpl<
          _$_UserRegisterLogicalModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserRegisterLogicalModelToJson(
      this,
    );
  }
}

abstract class _UserRegisterLogicalModel implements UserRegisterLogicalModel {
  const factory _UserRegisterLogicalModel(
          {@JsonKey(name: "user") required final UserBaseModel userBaseModel,
          @JsonKey(name: "accessToken") required final String token}) =
      _$_UserRegisterLogicalModel;

  factory _UserRegisterLogicalModel.fromJson(Map<String, dynamic> json) =
      _$_UserRegisterLogicalModel.fromJson;

  @override
  @JsonKey(name: "user")
  UserBaseModel get userBaseModel;
  @override
  @JsonKey(name: "accessToken")
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_UserRegisterLogicalModelCopyWith<_$_UserRegisterLogicalModel>
      get copyWith => throw _privateConstructorUsedError;
}
