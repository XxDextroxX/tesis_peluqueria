import 'package:flutter/material.dart';

class WidgetSlider extends StatelessWidget {
  WidgetSlider({super.key, required this.url, required this.title});
  String url;
  String title;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.35,
      width: size.width * 1,
      child: Image.network(
        url,
        fit: BoxFit.cover,
      ),
    );
  }
}
