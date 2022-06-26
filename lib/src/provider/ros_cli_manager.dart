import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_io_extended_2022/src/model/ros_temperature_msg.dart';
import 'package:flutter_io_extended_2022/src/provider/temperature_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roslibdart/roslibdart.dart';

final rosCliManager = Provider((ref) => RosCliManager(ref.read));

class RosCliManager {
  Reader ref;

  RosCliManager(this.ref);

  final ros = Ros(url: 'ws://127.0.0.1:9090');
  Topic? cpuTemperatureTopic;
  Topic? gpuTemperatureTopic;

  initRos() async {
    cpuTemperatureTopic = Topic(
      ros: ros,
      name: '/topic/temp/cpu',
      type: "sensor_msgs/Temperature",
      reconnectOnClose: true,
      queueLength: 10,
      queueSize: 10,
    );

    gpuTemperatureTopic = Topic(
      ros: ros,
      name: '/topic/temp/gpu',
      type: "sensor_msgs/Temperature",
      reconnectOnClose: true,
      queueLength: 10,
      queueSize: 10,
    );
    ros.connect();
    await Future.delayed(const Duration(seconds: 1));
    await cpuTemperatureTopic?.subscribe(cpuSubscribeHandler);
    await gpuTemperatureTopic?.subscribe(gpuSubscribeHandler);
  }

  Future<void> cpuSubscribeHandler(Map<String, dynamic> msg) async {
    final msgReceived = json.encode(msg);
    debugPrint(msgReceived);
    final tempMsg = RosTemperatureMsg.fromJson(msg);
    ref(cpuTempData.notifier).state = tempMsg.temperature ?? 0.0;
    // setState(() {});
  }

  Future<void> gpuSubscribeHandler(Map<String, dynamic> msg) async {
    final msgReceived = json.encode(msg);
    debugPrint(msgReceived);
    final tempMsg = RosTemperatureMsg.fromJson(msg);
    ref(gpuTempData.notifier).state = tempMsg.temperature ?? 0.0;
    // setState(() {});
  }

  close() {
    ros.close();
    cpuTemperatureTopic?.unsubscribe();
  }
}
