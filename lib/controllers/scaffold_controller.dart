import 'package:flutter/material.dart';

class ScaffoldController extends InheritedNotifier<ValueNotifier<bool>> {
  bool drawer;
  bool openDrawer;

  ScaffoldController({
    super.key,
    required super.child,
    this.drawer = false,
    this.openDrawer = false,
  }) : super(notifier: ValueNotifier(false));

  scaffoldHasDrawer(value) {
    drawer = value;
  }

  bool get isOpenDrawer => notifier!.value;

  handleDrawer() {
    notifier!.value = !notifier!.value;
  }

  closeDrawer() {
    notifier!.value = false;
  }
}
