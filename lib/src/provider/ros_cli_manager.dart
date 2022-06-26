import 'dart:convert';

import 'package:flutter/material.dart';
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
    // setState(() {});
  }

  Future<void> gpuSubscribeHandler(Map<String, dynamic> msg) async {
    final msgReceived = json.encode(msg);
    debugPrint(msgReceived);
    // setState(() {});
  }

  close() {
    ros.close();
    cpuTemperatureTopic?.unsubscribe();
  }
}
