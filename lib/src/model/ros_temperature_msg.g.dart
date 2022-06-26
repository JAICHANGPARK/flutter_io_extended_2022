// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ros_temperature_msg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HeaderStamp _$$_HeaderStampFromJson(Map<String, dynamic> json) =>
    _$_HeaderStamp(
      sec: json['sec'] as int?,
      nanosec: json['nanosec'] as int?,
    );

Map<String, dynamic> _$$_HeaderStampToJson(_$_HeaderStamp instance) =>
    <String, dynamic>{
      'sec': instance.sec,
      'nanosec': instance.nanosec,
    };

_$_Header _$$_HeaderFromJson(Map<String, dynamic> json) => _$_Header(
      stamp: json['stamp'] == null
          ? null
          : HeaderStamp.fromJson(json['stamp'] as Map<String, dynamic>),
      frameId: json['frame_id'] as String?,
    );

Map<String, dynamic> _$$_HeaderToJson(_$_Header instance) => <String, dynamic>{
      'stamp': instance.stamp,
      'frame_id': instance.frameId,
    };

_$_RosTemperatureMsg _$$_RosTemperatureMsgFromJson(Map<String, dynamic> json) =>
    _$_RosTemperatureMsg(
      header: json['header'] == null
          ? null
          : Header.fromJson(json['header'] as Map<String, dynamic>),
      temperature: (json['temperature'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_RosTemperatureMsgToJson(
        _$_RosTemperatureMsg instance) =>
    <String, dynamic>{
      'header': instance.header,
      'temperature': instance.temperature,
    };
