// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ros_bool_msg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RosBoolMsg _$RosBoolMsgFromJson(Map<String, dynamic> json) {
  return _RosBoolMsg.fromJson(json);
}

/// @nodoc
mixin _$RosBoolMsg {
  bool? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RosBoolMsgCopyWith<RosBoolMsg> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RosBoolMsgCopyWith<$Res> {
  factory $RosBoolMsgCopyWith(
          RosBoolMsg value, $Res Function(RosBoolMsg) then) =
      _$RosBoolMsgCopyWithImpl<$Res>;
  $Res call({bool? data});
}

/// @nodoc
class _$RosBoolMsgCopyWithImpl<$Res> implements $RosBoolMsgCopyWith<$Res> {
  _$RosBoolMsgCopyWithImpl(this._value, this._then);

  final RosBoolMsg _value;
  // ignore: unused_field
  final $Res Function(RosBoolMsg) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_RosBoolMsgCopyWith<$Res>
    implements $RosBoolMsgCopyWith<$Res> {
  factory _$$_RosBoolMsgCopyWith(
          _$_RosBoolMsg value, $Res Function(_$_RosBoolMsg) then) =
      __$$_RosBoolMsgCopyWithImpl<$Res>;
  @override
  $Res call({bool? data});
}

/// @nodoc
class __$$_RosBoolMsgCopyWithImpl<$Res> extends _$RosBoolMsgCopyWithImpl<$Res>
    implements _$$_RosBoolMsgCopyWith<$Res> {
  __$$_RosBoolMsgCopyWithImpl(
      _$_RosBoolMsg _value, $Res Function(_$_RosBoolMsg) _then)
      : super(_value, (v) => _then(v as _$_RosBoolMsg));

  @override
  _$_RosBoolMsg get _value => super._value as _$_RosBoolMsg;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_RosBoolMsg(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RosBoolMsg implements _RosBoolMsg {
  _$_RosBoolMsg({this.data});

  factory _$_RosBoolMsg.fromJson(Map<String, dynamic> json) =>
      _$$_RosBoolMsgFromJson(json);

  @override
  final bool? data;

  @override
  String toString() {
    return 'RosBoolMsg(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RosBoolMsg &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_RosBoolMsgCopyWith<_$_RosBoolMsg> get copyWith =>
      __$$_RosBoolMsgCopyWithImpl<_$_RosBoolMsg>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RosBoolMsgToJson(this);
  }
}

abstract class _RosBoolMsg implements RosBoolMsg {
  factory _RosBoolMsg({final bool? data}) = _$_RosBoolMsg;

  factory _RosBoolMsg.fromJson(Map<String, dynamic> json) =
      _$_RosBoolMsg.fromJson;

  @override
  bool? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RosBoolMsgCopyWith<_$_RosBoolMsg> get copyWith =>
      throw _privateConstructorUsedError;
}
