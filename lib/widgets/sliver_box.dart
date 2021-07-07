import 'package:flutter/material.dart';

class SliverCustomBox extends StatelessWidget {
  const SliverCustomBox({Key? key, required this.value}) : super(key: key);

  final double value;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: value,
      ),
    );
  }
}
