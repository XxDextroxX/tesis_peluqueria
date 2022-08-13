import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: _BodyHomePage()));
  }
}

class _BodyHomePage extends StatelessWidget {
  const _BodyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 1,
      width: size.width * 1,
      child: Stack(
        children: [
          Positioned(top: size.height * 0, child: _header(size)),
          Positioned(top: size.height * 0.1, child: _body(size)),
          Positioned(top: size.height * 0.85, child: _footer(size)),
        ],
      ),
    );
  }

  Widget _header(Size size) {
    return Container(
      height: size.height * 0.1,
      width: size.width * 1,
      color: Colors.black,
      child: Stack(
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
                onPressed: () {},
                child: Text(
                  'Registrarse',
                  style: TextStyle(
                      fontSize: size.width * 0.035,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
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
                onPressed: () {},
                child: Text(
                  'Iniciar Sesión',
                  style: TextStyle(
                      fontSize: size.width * 0.035,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              )),
        ],
      ),
    );
  }

  Widget _body(Size size) {
    return Container(
      height: size.height * 0.75,
      width: size.width * 1,
      child: Stack(
        children: [
          Positioned(
              top: size.height * 0.07,
              left: size.width * 0.3,
              child: Text(
                '¿Qué ofrecemos ?',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: size.width * 0.05,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
              top: size.height * 0.15,
              left: size.width * 0.05,
              child: _information(size, Icons.calendar_month, 'Agendar citas',
                  'Admimistre y acepte facilmente las reservas en linea')),
          Positioned(
              top: size.height * 0.15,
              left: size.width * 0.52,
              child: _information(
                  size,
                  Icons.notifications,
                  'Recordatorio de citas',
                  'Recibira notificaciones de citas programadas')),
          Positioned(
              top: size.height * 0.45,
              left: size.width * 0.05,
              child: _information(size, Icons.shopping_cart,
                  'Venta de productos', 'Registro de compra de sus productos')),
          Positioned(
              top: size.height * 0.45,
              left: size.width * 0.52,
              child: _information(size, Icons.dry, 'Tratamientos capilares',
                  'Registro de tratamientos capilares')),
        ],
      ),
    );
  }

  Widget _information(
      Size size, IconData icon, String text, String description) {
    return Container(
      height: size.height * 0.22,
      width: size.width * 0.4,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: size.width * 0.005),
      ),
      child: Stack(
        children: [
          Positioned(
              top: size.height * 0.02,
              left: size.width * 0.12,
              child: Icon(
                icon,
                size: size.width * 0.15,
              )),
          Positioned(
              top: size.height * 0.11,
              left: size.width * 0,
              child: Container(
                height: size.height * 0.03,
                width: size.width * 0.4,
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: size.width * 0.035,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )),
          Positioned(
              top: size.height * 0.15,
              left: size.width * 0,
              child: Container(
                height: size.height * 0.07,
                width: size.width * 0.4,
                child: Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: size.width * 0.035,
                  ),
                ),
              )),
        ],
      ),
    );
  }

  Widget _footer(Size size) {
    return Container(
      height: size.height * 0.1,
      width: size.width * 1,
      color: Colors.black,
    );
  }
}
