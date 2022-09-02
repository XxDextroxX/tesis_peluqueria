import 'package:app_peluqueria/src/widgets/widget_header.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  _Body({super.key});
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.black,
      height: size.height * 1,
      width: size.width * 1,
      child: Stack(
        children: [
          Positioned(top: size.height * 0, child: WidgetHeader(isLogin: false)),
          Positioned(top: size.height * 0.12, child: _body(size)),
        ],
      ),
    );
  }

  Widget _body(Size size) {
    return Container(
      height: size.height * 0.75,
      width: size.width * 1,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFD4AF37), width: 3.0),
      ),
      child: Column(
        children: [
          SizedBox(height: size.height * 0.05),
          Padding(
            padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
            child: Text(
              'Recuperar contraseña',
              style: TextStyle(
                  fontSize: size.width * 0.05,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFD4AF37)),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.0, horizontal: size.width * 0.05),
            child: Text(
              'Ingresa tu correo electrónico y te enviaremos un correo con las instrucciones para recuperar tu contraseña.',
              style: TextStyle(
                  fontSize: size.width * 0.04,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFD4AF37)),
            ),
          ),
          SizedBox(height: size.height * 0.03),
          _textfield(
            'Correo electronico',
            _controller,
            (p0) => null,
            (p0) {},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _buttonCancel(size),
              SizedBox(width: size.width * 0.05),
              _buttonSend(size),
            ],
          )
        ],
      ),
    );
  }

  Widget _textfield(
    String text,
    TextEditingController controller,
    String? Function(String?)? validator,
    void Function(String)? onChanged,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        cursorColor: const Color(0XFF2A4D74),
        decoration: InputDecoration(
            labelText: text,
            labelStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xFFD4AF37)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFD4AF37), width: 2)),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFD4AF37), width: 2)),
            hintText: text),
        validator: validator,
        onChanged: onChanged,
      ),
    );
  }

  //button send
  Widget _buttonSend(Size size) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith(
                (states) => const Color(0xFFD4AF37))),
        child: Text(
          'Enviar',
          style: TextStyle(
              fontSize: size.width * 0.03,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        onPressed: () {},
      ),
    );
  }

  //button cancel
  Widget _buttonCancel(Size size) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith(
                (states) => const Color(0xFFD4AF37))),
        child: Text(
          'Cancelar',
          style: TextStyle(
              fontSize: size.width * 0.03,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        onPressed: () {},
      ),
    );
  }
}
