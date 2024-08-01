import 'package:flutter/material.dart';
import 'package:playground/controllers/scaffold_controller.dart';

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  const MyCustomAppBar({
    super.key,
    this.title = '',
    this.actions,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    var controller =
        context.dependOnInheritedWidgetOfExactType<ScaffoldController>()!;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(),
      height: kToolbarHeight,
      child: Row(
        children: [
          if (controller.drawer)
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      controller.handleDrawer();
                    },
                    icon: const Icon(Icons.menu),
                  ),
                ],
              ),
            ),
          if (title.isNotEmpty)
            Expanded(
              flex: actions != null ? 5 : 6,
              child: Row(
                children: [
                  Text(title),
                ],
              ),
            ),
          if (actions != null)
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: actions!.map((action) {
                  return action;
                }).toList(),
              ),
            ),
        ],
      ),
    );
  }
}
