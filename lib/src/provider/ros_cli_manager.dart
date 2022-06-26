import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:roslibdart/roslibdart.dart';

class RosCliManager {
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
    ros.connect();
    await cpuTemperatureTopic?.subscribe(cpuSubscribeHandler);
  }

  Future<void> cpuSubscribeHandler(Map<String, dynamic> msg) async {
    final msgReceived = json.encode(msg);
    debugPrint(msgReceived);
    // setState(() {});
  }

  close() {
    ros.close();
    cpuTemperatureTopic?.unsubscribe();
  }
}
