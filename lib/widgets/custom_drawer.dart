import 'package:flutter/material.dart';
import 'package:playground/controllers/scaffold_controller.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var controller =
        context.dependOnInheritedWidgetOfExactType<ScaffoldController>()!;
    final size = MediaQuery.sizeOf(context);

    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 300),
      child: Container(
        width: controller.isOpenDrawer ? size.width : 0,
        color: Theme.of(context).colorScheme.surfaceContainer,
        child: Column(
          children: controller.isOpenDrawer
              ? [
                  Text('data'),
                ]
              : [],
        ),
      ),
    );
  }
}
