import 'package:flutter/material.dart';
import 'package:playground/controllers/scaffold_controller.dart';
import 'package:playground/widgets/custom_body.dart';
import 'package:playground/widgets/custom_bottombar.dart';

class CustomScaffold extends StatelessWidget {
  final Widget? body;
  final Widget? drawer;
  final Widget? bottomBar;
  final Widget? floatingActionButton;
  final PreferredSizeWidget? appBar;

  const CustomScaffold({
    super.key,
    required this.body,
    this.appBar,
    this.drawer,
    this.bottomBar,
    this.floatingActionButton,
  });

  @override
  Widget build(BuildContext context) {
    var controller =
        context.dependOnInheritedWidgetOfExactType<ScaffoldController>()!;
    Widget hasDrawer() {
      if (drawer != null) {
        controller.scaffoldHasDrawer(true);
      } else {
        controller.scaffoldHasDrawer(false);
      }
      return drawer ?? const SizedBox();
    }

    return Material(
      child: Stack(
        children: [
          CustomBody(
            body: body ?? const SizedBox(),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: appBar ?? const SizedBox(),
          ),
          Positioned(
              right: 0,
              left: 0,
              bottom: 0,
              child: bottomBar ?? const SizedBox()),
          Positioned(
              right: 15,
              bottom: kToolbarHeight + 10,
              child: floatingActionButton ?? const SizedBox()),
          Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            child: hasDrawer(),
          ),
        ],
      ),
    );
  }
}
