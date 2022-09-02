import 'package:flutter/material.dart';

import '../routes/constant_route.dart';

class WidgetOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
            left: size.width * 0.03,
            top: size.height * 0,
            child: Container(
              height: size.height * 0.1,
              width: size.width * 0.4,
              child: const Image(
                image: AssetImage('assets/img/logo.jpeg'),
                fit: BoxFit.contain,
              ),
            )),
        Positioned(
            left: size.width * 0.5,
            top: size.height * 0.02,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.register.toString());
              },
              child: Text(
                'Registrarse',
                style: TextStyle(
                  fontSize: size.width * 0.035,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFD4AF37),
                ),
              ),
            )),
        Positioned(
            left: size.width * 0.71,
            top: size.height * 0.03,
            child: Text('|',
                style: TextStyle(
                    fontSize: size.width * 0.06,
                    fontWeight: FontWeight.bold,
                    color: Colors.white))),
        Positioned(
            left: size.width * 0.72,
            top: size.height * 0.02,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.login.toString());
              },
              child: Text(
                'Iniciar Sesión',
                style: TextStyle(
                  fontSize: size.width * 0.035,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFD4AF37),
                ),
              ),
            )),
      ],
    );
  }
}

class WidgetOption extends StatelessWidget {
  WidgetOption({Key? key, required this.isLogin}) : super(key: key);
  bool isLogin;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
            left: size.width * 0.03,
            top: size.height * 0,
            child: Container(
              height: size.height * 0.1,
              width: size.width * 0.4,
              child: const Image(
                image: AssetImage('assets/img/logo.jpeg'),
                fit: BoxFit.contain,
              ),
            )),
        Positioned(
            left: size.width * 0.6,
            top: size.height * 0.02,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.register.toString());
              },
              child: Text(
                isLogin ? 'Registrarse' : 'Iniciar Sesión',
                style: TextStyle(
                  fontSize: size.width * 0.04,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFD4AF37),
                ),
              ),
            )),
      ],
    );
  }
}

class WidgetOptionRegister extends StatelessWidget {
  WidgetOptionRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
            left: size.width * 0.03,
            top: size.height * 0,
            child: Container(
              height: size.height * 0.1,
              width: size.width * 0.4,
              child: const Image(
                image: AssetImage('assets/img/logo.jpeg'),
                fit: BoxFit.contain,
              ),
            )),
        Positioned(
            left: size.width * 0.6,
            top: size.height * 0.02,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.login.toString());
              },
              child: Text(
                'Iniciar Sesión',
                style: TextStyle(
                  fontSize: size.width * 0.04,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFD4AF37),
                ),
              ),
            )),
      ],
    );
  }
}
