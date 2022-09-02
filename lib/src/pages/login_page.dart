import 'package:app_peluqueria/src/routes/constant_route.dart';
import 'package:app_peluqueria/src/widgets/widget_header.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: Container(
        color: Colors.black,
        height: size.height * 1,
        child: SingleChildScrollView(
          child: Column(
            children: [
              WidgetHeader(isLogin: true),
              SizedBox(height: size.height * 0.05),
              _TextFiels()
            ],
          ),
        ),
      )),
    );
  }
}

class _TextFiels extends StatefulWidget {
  const _TextFiels({super.key});

  @override
  State<_TextFiels> createState() => _TextFlielsState();
}

bool _isPasswordVisible = false;
final _emailController = TextEditingController();
final _passwordController = TextEditingController();
final RoundedLoadingButtonController _btnController =
    RoundedLoadingButtonController();

class _TextFlielsState extends State<_TextFiels> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.7,
        width: size.width * 0.9,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color(0xFFD4AF37), width: 3.0),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                  offset: Offset(2.0, 10.0))
            ]),
        child: Column(
          children: [
            //text inicio sesión
            Padding(
              padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
              child: Text(
                'Inicio de Sesión',
                style: TextStyle(
                    fontSize: size.width * 0.05,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFFD4AF37)),
              ),
            ),
            _textfield(
                false,
                'Correo Electrónico',
                _emailController,
                (p0) => null,
                (p0) {},
                const Icon(Icons.person, color: Color(0xFFD4AF37)),
                const SizedBox()),
            _textfield(
                _isPasswordVisible,
                'Contraseña',
                _passwordController,
                (p0) => null,
                (p0) {},
                const Icon(
                  Icons.lock,
                  color: Color(0xFFD4AF37),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                    icon: Icon(Icons.remove_red_eye,
                        color: _isPasswordVisible
                            ? const Color(0xFFD4AF37)
                            : Colors.black26))),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.4),
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, RouteNames.resetPassword.toString());
                  },
                  child: Text(
                    'Olvidé mi contraseña',
                    style: TextStyle(
                      color: const Color(0xFFD4AF37),
                      fontSize: size.height * 0.02,
                      decoration: TextDecoration.underline,
                    ),
                  )),
            ),
            SizedBox(height: size.height * 0.03),
            _button(size, context),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.03),
              child: Text(
                'O si ya tiene una cuenta',
                style: TextStyle(
                    fontSize: size.width * 0.04,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFFD4AF37)),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Registrate',
                  style: TextStyle(
                    color: const Color(0xFFD4AF37),
                    fontSize: size.height * 0.02,
                    decoration: TextDecoration.underline,
                  ),
                )),
          ],
        ));
  }

  Widget _textfield(
    bool isVisible,
    String text,
    TextEditingController controller,
    String? Function(String?)? validator,
    void Function(String)? onChanged,
    Widget? icon,
    Widget? suffixIcon,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        obscureText: isVisible,
        controller: controller,
        cursorColor: const Color(0XFF2A4D74),
        decoration: InputDecoration(
            labelText: text,
            labelStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xFFD4AF37)),
            suffixIcon: suffixIcon,
            prefixIcon: icon,
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

  Widget _button(Size size, BuildContext context) {
    return RoundedLoadingButton(
      height: size.height * 0.06,
      width: size.width * 0.12,
      elevation: 10,
      color: const Color(0xFFD4AF37),
      controller: _btnController,
      successColor: const Color(0xFFD4AF37),
      valueColor: Colors.white,
      borderRadius: 7,
      onPressed: () async {
        _btnController.start();
        await Future.delayed(
          const Duration(seconds: 3),
        );
        _btnController.success();
      },
      child: Container(
        height: size.height * 0.06,
        width: size.width * 0.5,
        child: Center(
          child: Text('INICIA SESIÓN',
              style: TextStyle(
                  color: const Color(0XFFFFFFFE),
                  fontSize: size.width * 0.03,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
