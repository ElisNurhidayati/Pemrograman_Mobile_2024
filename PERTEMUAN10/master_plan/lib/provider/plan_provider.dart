import 'package:flutter/material.dart';
import '../models/data_layer.dart';

// Langkah 1: Membuat PlanProvider sebagai InheritedNotifier
class PlanProvider extends InheritedNotifier<ValueNotifier<List<Plan>>> {
  const PlanProvider({
    super.key,
    required Widget child,
    required ValueNotifier<List<Plan>> notifier,
  }) : super(child: child, notifier: notifier);

  // Mengambil notifier dari InheritedWidget
  static ValueNotifier<List<Plan>> of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<PlanProvider>()!.notifier!;
  }
}
