import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:roslibdart/roslibdart.dart';

class RosCliManager {
  final ros = Ros(url: 'ws://127.0.0.1:9090');
  Topic? temperatureTopic;

  initRos() async {
    temperatureTopic = Topic(
      ros: ros,
      name: '/topic',
      type: "sensor_msgs/Temperature",
      reconnectOnClose: true,
      queueLength: 10,
      queueSize: 10,
    );
    ros.connect();
    await temperatureTopic?.subscribe(subscribeHandler);
  }

  Future<void> subscribeHandler(Map<String, dynamic> msg) async {
    final msgReceived = json.encode(msg);
    debugPrint(msgReceived);
    // setState(() {});
  }

  close() {
    ros.close();
    temperatureTopic?.unsubscribe();
  }
}
