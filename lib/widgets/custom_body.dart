import 'package:flutter/material.dart';
import 'package:playground/controllers/scaffold_controller.dart';

class CustomBody extends StatelessWidget {
  final Widget body;
  const CustomBody({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    var controller =
        context.dependOnInheritedWidgetOfExactType<ScaffoldController>()!;
    return Material(
      child: GestureDetector(
        onTap: controller.closeDrawer,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Theme.of(context).colorScheme.surface,
          child: Center(
            child: body,
          ),
        ),
      ),
    );
  }
}
