import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int sections;
  final double width;

  const AppLayoutBuilderWidget({
    super.key,
    required this.sections,
    this.isColor,
    this.width = 3,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (
        BuildContext context,
        BoxConstraints constraints,
      ) =>
          Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: List.generate(
          (constraints.constrainWidth() / sections).floor(),
          (index) => SizedBox(
            width: width,
            height: 1,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: isColor == null ? Colors.white : Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
