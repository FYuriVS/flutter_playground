import 'package:flutter/material.dart';

class CustomBottombar extends StatelessWidget {
  final List<Widget>? actions;
  const CustomBottombar({
    super.key,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Theme.of(context).colorScheme.surfaceBright,
        width: double.infinity,
        height: 56,
        child: actions != null
            ? Row(
                children: actions!.map((action) {
                  return Expanded(child: action);
                }).toList(),
              )
            : SizedBox(),
      ),
    );
  }
}
