import 'package:flutter/material.dart';
import 'package:flutter_io_extended_2022/src/ui/my_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
