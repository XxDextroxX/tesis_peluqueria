import 'package:app_peluqueria/src/widgets/widget_options_header.dart';
import 'package:flutter/material.dart';

class WidgetHeader extends StatelessWidget {
  WidgetHeader({Key? key, required this.isLogin}) : super(key: key);
  bool isLogin;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.1,
        width: size.width * 1,
        color: Colors.black,
        child: isLogin
            ? WidgetOption(
                isLogin: isLogin,
              )
            : WidgetOptions());
  }
}

class WidgetHeaderRegister extends StatelessWidget {
  WidgetHeaderRegister({Key? key, required this.isLogin}) : super(key: key);
  bool isLogin;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.1,
        width: size.width * 1,
        color: Colors.black,
        child: WidgetOptionRegister());
  }
}
