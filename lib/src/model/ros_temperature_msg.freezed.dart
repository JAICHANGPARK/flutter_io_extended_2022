// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ros_temperature_msg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HeaderStamp _$HeaderStampFromJson(Map<String, dynamic> json) {
  return _HeaderStamp.fromJson(json);
}

/// @nodoc
mixin _$HeaderStamp {
  @JsonKey(name: "sec")
  int? get sec => throw _privateConstructorUsedError;
  @JsonKey(name: "nanosec")
  int? get nanosec => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeaderStampCopyWith<HeaderStamp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeaderStampCopyWith<$Res> {
  factory $HeaderStampCopyWith(
          HeaderStamp value, $Res Function(HeaderStamp) then) =
      _$HeaderStampCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "sec") int? sec, @JsonKey(name: "nanosec") int? nanosec});
}

/// @nodoc
class _$HeaderStampCopyWithImpl<$Res> implements $HeaderStampCopyWith<$Res> {
  _$HeaderStampCopyWithImpl(this._value, this._then);

  final HeaderStamp _value;
  // ignore: unused_field
  final $Res Function(HeaderStamp) _then;

  @override
  $Res call({
    Object? sec = freezed,
    Object? nanosec = freezed,
  }) {
    return _then(_value.copyWith(
      sec: sec == freezed
          ? _value.sec
          : sec // ignore: cast_nullable_to_non_nullable
              as int?,
      nanosec: nanosec == freezed
          ? _value.nanosec
          : nanosec // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_HeaderStampCopyWith<$Res>
    implements $HeaderStampCopyWith<$Res> {
  factory _$$_HeaderStampCopyWith(
          _$_HeaderStamp value, $Res Function(_$_HeaderStamp) then) =
      __$$_HeaderStampCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "sec") int? sec, @JsonKey(name: "nanosec") int? nanosec});
}

/// @nodoc
class __$$_HeaderStampCopyWithImpl<$Res> extends _$HeaderStampCopyWithImpl<$Res>
    implements _$$_HeaderStampCopyWith<$Res> {
  __$$_HeaderStampCopyWithImpl(
      _$_HeaderStamp _value, $Res Function(_$_HeaderStamp) _then)
      : super(_value, (v) => _then(v as _$_HeaderStamp));

  @override
  _$_HeaderStamp get _value => super._value as _$_HeaderStamp;

  @override
  $Res call({
    Object? sec = freezed,
    Object? nanosec = freezed,
  }) {
    return _then(_$_HeaderStamp(
      sec: sec == freezed
          ? _value.sec
          : sec // ignore: cast_nullable_to_non_nullable
              as int?,
      nanosec: nanosec == freezed
          ? _value.nanosec
          : nanosec // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HeaderStamp implements _HeaderStamp {
  _$_HeaderStamp(
      {@JsonKey(name: "sec") this.sec, @JsonKey(name: "nanosec") this.nanosec});

  factory _$_HeaderStamp.fromJson(Map<String, dynamic> json) =>
      _$$_HeaderStampFromJson(json);

  @override
  @JsonKey(name: "sec")
  final int? sec;
  @override
  @JsonKey(name: "nanosec")
  final int? nanosec;

  @override
  String toString() {
    return 'HeaderStamp(sec: $sec, nanosec: $nanosec)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HeaderStamp &&
            const DeepCollectionEquality().equals(other.sec, sec) &&
            const DeepCollectionEquality().equals(other.nanosec, nanosec));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sec),
      const DeepCollectionEquality().hash(nanosec));

  @JsonKey(ignore: true)
  @override
  _$$_HeaderStampCopyWith<_$_HeaderStamp> get copyWith =>
      __$$_HeaderStampCopyWithImpl<_$_HeaderStamp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HeaderStampToJson(this);
  }
}

abstract class _HeaderStamp implements HeaderStamp {
  factory _HeaderStamp(
      {@JsonKey(name: "sec") final int? sec,
      @JsonKey(name: "nanosec") final int? nanosec}) = _$_HeaderStamp;

  factory _HeaderStamp.fromJson(Map<String, dynamic> json) =
      _$_HeaderStamp.fromJson;

  @override
  @JsonKey(name: "sec")
  int? get sec => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "nanosec")
  int? get nanosec => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HeaderStampCopyWith<_$_HeaderStamp> get copyWith =>
      throw _privateConstructorUsedError;
}

Header _$HeaderFromJson(Map<String, dynamic> json) {
  return _Header.fromJson(json);
}

/// @nodoc
mixin _$Header {
  @JsonKey(name: "stamp")
  HeaderStamp? get stamp => throw _privateConstructorUsedError;
  @JsonKey(name: "frame_id")
  String? get frameId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeaderCopyWith<Header> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeaderCopyWith<$Res> {
  factory $HeaderCopyWith(Header value, $Res Function(Header) then) =
      _$HeaderCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "stamp") HeaderStamp? stamp,
      @JsonKey(name: "frame_id") String? frameId});

  $HeaderStampCopyWith<$Res>? get stamp;
}

/// @nodoc
class _$HeaderCopyWithImpl<$Res> implements $HeaderCopyWith<$Res> {
  _$HeaderCopyWithImpl(this._value, this._then);

  final Header _value;
  // ignore: unused_field
  final $Res Function(Header) _then;

  @override
  $Res call({
    Object? stamp = freezed,
    Object? frameId = freezed,
  }) {
    return _then(_value.copyWith(
      stamp: stamp == freezed
          ? _value.stamp
          : stamp // ignore: cast_nullable_to_non_nullable
              as HeaderStamp?,
      frameId: frameId == freezed
          ? _value.frameId
          : frameId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $HeaderStampCopyWith<$Res>? get stamp {
    if (_value.stamp == null) {
      return null;
    }

    return $HeaderStampCopyWith<$Res>(_value.stamp!, (value) {
      return _then(_value.copyWith(stamp: value));
    });
  }
}

/// @nodoc
abstract class _$$_HeaderCopyWith<$Res> implements $HeaderCopyWith<$Res> {
  factory _$$_HeaderCopyWith(_$_Header value, $Res Function(_$_Header) then) =
      __$$_HeaderCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "stamp") HeaderStamp? stamp,
      @JsonKey(name: "frame_id") String? frameId});

  @override
  $HeaderStampCopyWith<$Res>? get stamp;
}

/// @nodoc
class __$$_HeaderCopyWithImpl<$Res> extends _$HeaderCopyWithImpl<$Res>
    implements _$$_HeaderCopyWith<$Res> {
  __$$_HeaderCopyWithImpl(_$_Header _value, $Res Function(_$_Header) _then)
      : super(_value, (v) => _then(v as _$_Header));

  @override
  _$_Header get _value => super._value as _$_Header;

  @override
  $Res call({
    Object? stamp = freezed,
    Object? frameId = freezed,
  }) {
    return _then(_$_Header(
      stamp: stamp == freezed
          ? _value.stamp
          : stamp // ignore: cast_nullable_to_non_nullable
              as HeaderStamp?,
      frameId: frameId == freezed
          ? _value.frameId
          : frameId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Header implements _Header {
  _$_Header(
      {@JsonKey(name: "stamp") this.stamp,
      @JsonKey(name: "frame_id") this.frameId});

  factory _$_Header.fromJson(Map<String, dynamic> json) =>
      _$$_HeaderFromJson(json);

  @override
  @JsonKey(name: "stamp")
  final HeaderStamp? stamp;
  @override
  @JsonKey(name: "frame_id")
  final String? frameId;

  @override
  String toString() {
    return 'Header(stamp: $stamp, frameId: $frameId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Header &&
            const DeepCollectionEquality().equals(other.stamp, stamp) &&
            const DeepCollectionEquality().equals(other.frameId, frameId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stamp),
      const DeepCollectionEquality().hash(frameId));

  @JsonKey(ignore: true)
  @override
  _$$_HeaderCopyWith<_$_Header> get copyWith =>
      __$$_HeaderCopyWithImpl<_$_Header>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HeaderToJson(this);
  }
}

abstract class _Header implements Header {
  factory _Header(
      {@JsonKey(name: "stamp") final HeaderStamp? stamp,
      @JsonKey(name: "frame_id") final String? frameId}) = _$_Header;

  factory _Header.fromJson(Map<String, dynamic> json) = _$_Header.fromJson;

  @override
  @JsonKey(name: "stamp")
  HeaderStamp? get stamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "frame_id")
  String? get frameId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HeaderCopyWith<_$_Header> get copyWith =>
      throw _privateConstructorUsedError;
}

RosTemperatureMsg _$RosTemperatureMsgFromJson(Map<String, dynamic> json) {
  return _RosTemperatureMsg.fromJson(json);
}

/// @nodoc
mixin _$RosTemperatureMsg {
  @JsonKey(name: "header")
  Header? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "temperature")
  double? get temperature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RosTemperatureMsgCopyWith<RosTemperatureMsg> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RosTemperatureMsgCopyWith<$Res> {
  factory $RosTemperatureMsgCopyWith(
          RosTemperatureMsg value, $Res Function(RosTemperatureMsg) then) =
      _$RosTemperatureMsgCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "header") Header? header,
      @JsonKey(name: "temperature") double? temperature});

  $HeaderCopyWith<$Res>? get header;
}

/// @nodoc
class _$RosTemperatureMsgCopyWithImpl<$Res>
    implements $RosTemperatureMsgCopyWith<$Res> {
  _$RosTemperatureMsgCopyWithImpl(this._value, this._then);

  final RosTemperatureMsg _value;
  // ignore: unused_field
  final $Res Function(RosTemperatureMsg) _then;

  @override
  $Res call({
    Object? header = freezed,
    Object? temperature = freezed,
  }) {
    return _then(_value.copyWith(
      header: header == freezed
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as Header?,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  @override
  $HeaderCopyWith<$Res>? get header {
    if (_value.header == null) {
      return null;
    }

    return $HeaderCopyWith<$Res>(_value.header!, (value) {
      return _then(_value.copyWith(header: value));
    });
  }
}

/// @nodoc
abstract class _$$_RosTemperatureMsgCopyWith<$Res>
    implements $RosTemperatureMsgCopyWith<$Res> {
  factory _$$_RosTemperatureMsgCopyWith(_$_RosTemperatureMsg value,
          $Res Function(_$_RosTemperatureMsg) then) =
      __$$_RosTemperatureMsgCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "header") Header? header,
      @JsonKey(name: "temperature") double? temperature});

  @override
  $HeaderCopyWith<$Res>? get header;
}

/// @nodoc
class __$$_RosTemperatureMsgCopyWithImpl<$Res>
    extends _$RosTemperatureMsgCopyWithImpl<$Res>
    implements _$$_RosTemperatureMsgCopyWith<$Res> {
  __$$_RosTemperatureMsgCopyWithImpl(
      _$_RosTemperatureMsg _value, $Res Function(_$_RosTemperatureMsg) _then)
      : super(_value, (v) => _then(v as _$_RosTemperatureMsg));

  @override
  _$_RosTemperatureMsg get _value => super._value as _$_RosTemperatureMsg;

  @override
  $Res call({
    Object? header = freezed,
    Object? temperature = freezed,
  }) {
    return _then(_$_RosTemperatureMsg(
      header: header == freezed
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as Header?,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RosTemperatureMsg implements _RosTemperatureMsg {
  _$_RosTemperatureMsg(
      {@JsonKey(name: "header") this.header,
      @JsonKey(name: "temperature") this.temperature});

  factory _$_RosTemperatureMsg.fromJson(Map<String, dynamic> json) =>
      _$$_RosTemperatureMsgFromJson(json);

  @override
  @JsonKey(name: "header")
  final Header? header;
  @override
  @JsonKey(name: "temperature")
  final double? temperature;

  @override
  String toString() {
    return 'RosTemperatureMsg(header: $header, temperature: $temperature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RosTemperatureMsg &&
            const DeepCollectionEquality().equals(other.header, header) &&
            const DeepCollectionEquality()
                .equals(other.temperature, temperature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(header),
      const DeepCollectionEquality().hash(temperature));

  @JsonKey(ignore: true)
  @override
  _$$_RosTemperatureMsgCopyWith<_$_RosTemperatureMsg> get copyWith =>
      __$$_RosTemperatureMsgCopyWithImpl<_$_RosTemperatureMsg>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RosTemperatureMsgToJson(this);
  }
}

abstract class _RosTemperatureMsg implements RosTemperatureMsg {
  factory _RosTemperatureMsg(
          {@JsonKey(name: "header") final Header? header,
          @JsonKey(name: "temperature") final double? temperature}) =
      _$_RosTemperatureMsg;

  factory _RosTemperatureMsg.fromJson(Map<String, dynamic> json) =
      _$_RosTemperatureMsg.fromJson;

  @override
  @JsonKey(name: "header")
  Header? get header => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "temperature")
  double? get temperature => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RosTemperatureMsgCopyWith<_$_RosTemperatureMsg> get copyWith =>
      throw _privateConstructorUsedError;
}
