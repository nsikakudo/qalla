import 'package:flutter/cupertino.dart';

class HorizontalSpacing extends StatelessWidget{
  final double space;

  const HorizontalSpacing({
    super.key,
    required this.space
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: space,
    );
  }

}

class VerticalSpacing extends StatelessWidget{
  final double space;

  const VerticalSpacing({
    super.key,
    required this.space
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: space,
    );
  }

}