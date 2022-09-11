// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'swap_base_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SwapBaseModel _$SwapBaseModelFromJson(Map<String, dynamic> json) {
  return _SwapBaseModel.fromJson(json);
}

/// @nodoc
mixin _$SwapBaseModel {
  bool get active => throw _privateConstructorUsedError;
  int get idSwap => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get adress => throw _privateConstructorUsedError;
  UserBaseModel? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwapBaseModelCopyWith<SwapBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapBaseModelCopyWith<$Res> {
  factory $SwapBaseModelCopyWith(
          SwapBaseModel value, $Res Function(SwapBaseModel) then) =
      _$SwapBaseModelCopyWithImpl<$Res>;
  $Res call(
      {bool active,
      int idSwap,
      DateTime date,
      String? description,
      String? adress,
      UserBaseModel? user});

  $UserBaseModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$SwapBaseModelCopyWithImpl<$Res>
    implements $SwapBaseModelCopyWith<$Res> {
  _$SwapBaseModelCopyWithImpl(this._value, this._then);

  final SwapBaseModel _value;
  // ignore: unused_field
  final $Res Function(SwapBaseModel) _then;

  @override
  $Res call({
    Object? active = freezed,
    Object? idSwap = freezed,
    Object? date = freezed,
    Object? description = freezed,
    Object? adress = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      idSwap: idSwap == freezed
          ? _value.idSwap
          : idSwap // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      adress: adress == freezed
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserBaseModel?,
    ));
  }

  @override
  $UserBaseModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserBaseModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_SwapBaseModelCopyWith<$Res>
    implements $SwapBaseModelCopyWith<$Res> {
  factory _$$_SwapBaseModelCopyWith(
          _$_SwapBaseModel value, $Res Function(_$_SwapBaseModel) then) =
      __$$_SwapBaseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool active,
      int idSwap,
      DateTime date,
      String? description,
      String? adress,
      UserBaseModel? user});

  @override
  $UserBaseModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_SwapBaseModelCopyWithImpl<$Res>
    extends _$SwapBaseModelCopyWithImpl<$Res>
    implements _$$_SwapBaseModelCopyWith<$Res> {
  __$$_SwapBaseModelCopyWithImpl(
      _$_SwapBaseModel _value, $Res Function(_$_SwapBaseModel) _then)
      : super(_value, (v) => _then(v as _$_SwapBaseModel));

  @override
  _$_SwapBaseModel get _value => super._value as _$_SwapBaseModel;

  @override
  $Res call({
    Object? active = freezed,
    Object? idSwap = freezed,
    Object? date = freezed,
    Object? description = freezed,
    Object? adress = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_SwapBaseModel(
      active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      idSwap == freezed
          ? _value.idSwap
          : idSwap // ignore: cast_nullable_to_non_nullable
              as int,
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      adress: adress == freezed
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserBaseModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SwapBaseModel implements _SwapBaseModel {
  const _$_SwapBaseModel(this.active, this.idSwap, this.date,
      {this.description, this.adress, this.user});

  factory _$_SwapBaseModel.fromJson(Map<String, dynamic> json) =>
      _$$_SwapBaseModelFromJson(json);

  @override
  final bool active;
  @override
  final int idSwap;
  @override
  final DateTime date;
  @override
  final String? description;
  @override
  final String? adress;
  @override
  final UserBaseModel? user;

  @override
  String toString() {
    return 'SwapBaseModel(active: $active, idSwap: $idSwap, date: $date, description: $description, adress: $adress, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SwapBaseModel &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality().equals(other.idSwap, idSwap) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.adress, adress) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(active),
      const DeepCollectionEquality().hash(idSwap),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(adress),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_SwapBaseModelCopyWith<_$_SwapBaseModel> get copyWith =>
      __$$_SwapBaseModelCopyWithImpl<_$_SwapBaseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SwapBaseModelToJson(
      this,
    );
  }
}

abstract class _SwapBaseModel implements SwapBaseModel {
  const factory _SwapBaseModel(
      final bool active, final int idSwap, final DateTime date,
      {final String? description,
      final String? adress,
      final UserBaseModel? user}) = _$_SwapBaseModel;

  factory _SwapBaseModel.fromJson(Map<String, dynamic> json) =
      _$_SwapBaseModel.fromJson;

  @override
  bool get active;
  @override
  int get idSwap;
  @override
  DateTime get date;
  @override
  String? get description;
  @override
  String? get adress;
  @override
  UserBaseModel? get user;
  @override
  @JsonKey(ignore: true)
  _$$_SwapBaseModelCopyWith<_$_SwapBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
