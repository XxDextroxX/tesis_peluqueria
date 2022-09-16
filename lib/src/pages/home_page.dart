import 'package:app_peluqueria/src/routes/constant_route.dart';
import 'package:app_peluqueria/src/widgets/widget_map.dart';
import 'package:app_peluqueria/src/widgets/widget_slider.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../widgets/widget_header.dart';

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
          Positioned(top: size.height * 0, child: WidgetHeader(isLogin: false)),
          Positioned(top: size.height * 0.1, child: _Body()),
          Positioned(top: size.height * 0.86, child: _footer(size)),
        ],
      ),
    );
  }

  Widget _footer(Size size) {
    return Container(
      height: size.height * 0.1,
      width: size.width * 1,
      color: Colors.black,
      child: Stack(
        children: [
          Positioned(
              top: size.height * 0.01,
              left: size.width * 0.03,
              child: _text(size, 'Siguenos:')),
          Positioned(
              top: size.height * 0.01,
              left: size.width * 0.4,
              child: _text(size, 'Contactanos')),
          Positioned(
              top: size.height * 0.01,
              left: size.width * 0.69,
              child: _text(size, 'alisa@gmail.com')),
          Positioned(
            top: size.height * 0.01,
            left: size.width * 0.03,
            child: _icon(
              size,
              Icons.facebook,
            ),
          ),
          Positioned(
            top: size.height * 0.01,
            left: size.width * 0.15,
            child: _icon(
              size,
              Icons.camera_alt_sharp,
            ),
          ),
          Positioned(
            top: size.height * 0.01,
            left: size.width * 0.45,
            child: _icon(
              size,
              Icons.whatsapp_sharp,
            ),
          ),
          Positioned(
            top: size.height * 0.01,
            left: size.width * 0.75,
            child: _icon(
              size,
              Icons.email,
            ),
          ),
        ],
      ),
    );
  }

  Widget _text(Size size, String text) {
    return Text(
      text,
      style: TextStyle(
          color: const Color(0xFFD4AF37),
          fontSize: size.width * 0.035,
          fontWeight: FontWeight.bold),
    );
  }

  //icon
  Widget _icon(Size size, IconData icon) {
    return Container(
      height: size.height * 0.1,
      width: size.width * 0.1,
      child: Icon(
        icon,
        size: size.width * 0.1,
        color: const Color(0xFFD4AF37),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  _Body({super.key});

  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.75,
      width: size.width * 1,
      child: ListView(
        children: [
          Container(
            height: size.height * 0.57,
            width: size.width * 1,
            child: Stack(
              children: [
                Positioned(
                    top: size.height * 0.02,
                    left: size.width * 0.3,
                    child: Text(
                      '¿Qué ofrecemos ?',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: size.width * 0.05,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: size.height * 0.08,
                    left: size.width * 0.07,
                    child: _information(
                        size,
                        Icons.calendar_month,
                        'Agendar citas',
                        'Admimistre y acepte facilmente las reservas en linea')),
                Positioned(
                    top: size.height * 0.08,
                    left: size.width * 0.52,
                    child: _information(
                        size,
                        Icons.notifications,
                        'Recordatorio de citas',
                        'Recibira notificaciones de citas programadas')),
                Positioned(
                    top: size.height * 0.33,
                    left: size.width * 0.07,
                    child: _information(
                        size,
                        Icons.shopping_cart,
                        'Venta de productos',
                        'Registro de compra de sus productos')),
                Positioned(
                    top: size.height * 0.33,
                    left: size.width * 0.52,
                    child: _information(
                        size,
                        Icons.dry,
                        'Tratamientos capilares',
                        'Registro de tratamientos capilares')),
              ],
            ),
          ),
          _divider(size),
          WidgetMap(),
          _divider(size),
          SizedBox(
            height: size.height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.05),
            child: Text(
              'Servicios destacados',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: size.width * 0.035,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05, vertical: size.height * 0),
            child: _slider(size, imgList),
          ),
          _divider(size),
          SizedBox(
            height: size.height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.05),
            child: Text(
              'Productos destacados',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: size.width * 0.035,
                  fontWeight: FontWeight.bold),
            ),
          ),
          _swiper(size),
          _divider(size),
        ],
      ),
    );
  }

  Widget _swiper(Size size) {
    return Container(
      height: size.height * 0.3,
      width: size.width * 1,
      // color: Colors.red,
      child: Swiper(
        itemCount: imgList.length,
        layout: SwiperLayout.STACK,
        scrollDirection: Axis.horizontal,
        itemHeight: size.height * 0.25,
        itemWidth: size.width * 0.9,
        itemBuilder: (context, index) {
          return WidgetSlider(url: imgList[index], title: 'title');
        },
      ),
    );
  }

  Widget _slider(Size size, List<String> imgList) {
    return Container(
      height: size.height * 0.3,
      width: size.width * 1,
      child: CarouselSlider.builder(
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 1,
            aspectRatio: 2.0,
            initialPage: 1,
          ),
          itemCount: imgList.length,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) =>
                  WidgetSlider(url: imgList[itemIndex], title: 'title')),
    );
  }

  Widget _divider(Size size) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05, vertical: 0),
      child: Container(
        height: size.height * 0.003,
        width: size.width * 0.9,
        color: const Color(0xFFD4AF37),
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
                color: const Color(0xFFD4AF37),
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
}
