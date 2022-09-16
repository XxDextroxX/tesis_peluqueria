import 'package:flutter/material.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WidgetMap extends StatelessWidget {
  openMapsSheet(context) async {
    try {
      final coords = Coords(-1.0733897, -80.4820565);
      const title = "Peluqueria Fernanda Cadena";
      final availableMaps = await MapLauncher.installedMaps;

      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SingleChildScrollView(
            child: Container(
              child: Wrap(
                children: <Widget>[
                  for (var map in availableMaps)
                    ListTile(
                      onTap: () => map.showMarker(
                        coords: coords,
                        title: title,
                      ),
                      title: Text(map.mapName),
                      leading: SvgPicture.asset(
                        map.icon,
                        height: 30.0,
                        width: 30.0,
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      );
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // return MaterialButton(
    //   onPressed: () => openMapsSheet(context),
    //   child: Text('Show Maps'),
    // );
    return Container(
      height: size.height * 0.15,
      width: size.width * 0.9,
      child: Stack(
        children: [
          Positioned(
              top: size.height * 0.02,
              left: size.width * 0.06,
              child: Icon(
                Icons.location_on,
                size: size.width * 0.07,
                color: const Color(0xFFD4AF37),
              )),
          Positioned(
            top: size.height * 0.03,
            left: size.width * 0.14,
            child: Text(
              'Ubicacion',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: size.width * 0.035,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: size.height * 0.03,
            left: size.width * 0.6,
            child: Text(
              'Mostrar en el mapa',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: size.width * 0.035,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
              top: size.height * 0.06,
              left: size.width * 0.09,
              child: Container(
                height: size.height * 0.06,
                width: size.width * 0.5,
                child: Center(
                  child: Text(
                    'Cdla Bellavista, Urb. San Jorge, Av. 15 de abril.',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: size.width * 0.035,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )),
          Positioned(
            top: size.height * 0.12,
            left: size.width * 0.1,
            child: Text(
              'Portoviejo, Manabi, Ecuador',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: size.width * 0.035,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
              top: size.height * 0.045,
              left: size.width * 0.65,
              child: GestureDetector(
                onTap: () {
                  openMapsSheet(context);
                },
                child: Container(
                  height: size.height * 0.1,
                  width: size.width * 0.3,
                  child: const Image(
                    image: AssetImage('assets/img/map.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
