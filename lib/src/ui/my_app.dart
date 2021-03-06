import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_io_extended_2022/src/provider/button_provider.dart';
import 'package:flutter_io_extended_2022/src/provider/ros_cli_manager.dart';
import 'package:flutter_io_extended_2022/src/provider/temperature_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_gauge/pretty_gauge.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter IO Extended 2022',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter IO Extended 2022'),
    );
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Platform.isLinux) {
      ref.read(rosCliManager).initRos();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),

      ),
      body: Consumer(builder: (context, ref, _) {
        final btnState = ref.watch(buttonStateProvider);
        return Container(
          color: btnState ? Colors.white : Colors.red[200],
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Consumer(builder: (context, ref, _) {
                    final cpu = ref.watch(cpuTempData);
                    final time = ref.watch(cpuDateTime);
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "CPU ??????",
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          "$cpu C",
                          style: const TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "$time nano second",
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        PrettyGauge(
                          gaugeSize: 200,
                          segments: [
                            GaugeSegment('Low', 30, Colors.green),
                            GaugeSegment('Medium', 50, Colors.orange),
                            GaugeSegment('High', 20, Colors.red),
                          ],
                          currentValue: 40,
                          displayWidget: const Text(
                            'Jetson CPU',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                ),
                const SizedBox(
                  width: 24,
                ),
                Expanded(
                  child: Consumer(builder: (context, ref, _) {
                    final gpu = ref.watch(gpuTempData);
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "GPU ??????",
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          "$gpu ???",
                          style: const TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        PrettyGauge(
                          gaugeSize: 200,
                          segments: [
                            GaugeSegment('Low', 30, Colors.green),
                            GaugeSegment('Medium', 50, Colors.orange),
                            GaugeSegment('High', 20, Colors.red),
                          ],
                          currentValue: gpu,
                          displayWidget: const Text(
                            'Jetson GPU',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ],
            ),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
