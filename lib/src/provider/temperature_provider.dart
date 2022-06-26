
import 'package:flutter_riverpod/flutter_riverpod.dart';


final cpuTempData = StateProvider<double>((ref) => 0.0);
final gpuTempData = StateProvider<double>((ref) => 0.0);

final cpuDateTime = StateProvider<int>((ref) => 0);
