import 'package:flutter/material.dart';

class SliderItem extends StatelessWidget {
  const SliderItem({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Container(
        width: size.width,
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Text('text', style: TextStyle(fontSize: 16.0),)
    );
  }
}