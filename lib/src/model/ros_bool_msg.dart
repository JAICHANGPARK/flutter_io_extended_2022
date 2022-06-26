import 'package:freezed_annotation/freezed_annotation.dart';
part 'ros_bool_msg.freezed.dart';
part 'ros_bool_msg.g.dart';

@freezed
class RosBoolMsg with _$RosBoolMsg {
  factory RosBoolMsg({bool? data}) = _RosBoolMsg;
  factory RosBoolMsg.fromJson(Map<String, dynamic> json) => _$RosBoolMsgFromJson(json);
}
