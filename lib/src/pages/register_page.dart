import 'package:app_peluqueria/src/widgets/widget_header.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class RegisterPage extends StatelessWidget {
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
              WidgetHeaderRegister(isLogin: true),
              SizedBox(height: size.height * 0.01),
              _TextFiels()
            ],
          ),
        ),
      )),
    );
  }
}

class _TextFiels extends StatelessWidget {
  _TextFiels({super.key});
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nombreController = TextEditingController();
  final _apellidoController = TextEditingController();
  final _telefonoController = TextEditingController();
  final _cedula = TextEditingController();
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.8,
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
          _textfield('Nombres', _nombreController, (p0) => null, (p0) {}),
          _textfield('Apellidos', _apellidoController, (p0) => null, (p0) {}),
          _textfield('Cedula', _cedula, (p0) => null, (p0) {}),
          _textfield('Telefono', _telefonoController, (p0) => null, (p0) {}),
          _textfield('Email', _emailController, (p0) => null, (p0) {}),
          _textfield('Password', _passwordController, (p0) => null, (p0) {}),
          WidgetSelectDateSeguro(
              text: 'Fecha de cumpleaños', width: size.width * 0.4),
          SizedBox(height: size.height * 0.02),
          _button(size, context)
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
          child: Text('Registrarse',
              style: TextStyle(
                  color: const Color(0XFFFFFFFE),
                  fontSize: size.width * 0.03,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}

class WidgetSelectDateSeguro extends StatefulWidget {
  var date = DateTime.now();
  WidgetSelectDateSeguro({
    super.key,
    required this.text,
    required this.width,
  });
  String text;
  double width;

  @override
  State<WidgetSelectDateSeguro> createState() => _WidgetSelectDateSeguroState();
}

class _WidgetSelectDateSeguroState extends State<WidgetSelectDateSeguro> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
        onTap: () {
          _selectDate(context);
        },
        child: Container(
            height: size.height * 0.08,
            width: widget.width,
            child: Stack(
              children: [
                Positioned(
                    child: Text(
                  widget.text,
                  style: const TextStyle(color: Color(0xFFD4AF37)),
                )),
                Positioned(
                  top: size.height * 0.022,
                  child: Container(
                      height: size.height * 0.05,
                      width: widget.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFFD4AF37),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            widget.date.toString().substring(0, 10),
                            style: const TextStyle(color: Color(0xFFD4AF37)),
                          ),
                          const Icon(
                            Icons.calendar_month,
                            color: Color(0xFFD4AF37),
                          ),
                        ],
                      )),
                ),
              ],
            )));
  }

  void _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2050),
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
                primaryColor: const Color(0xFFD4AF37),
                // ignore: prefer_const_constructors
                colorScheme: ColorScheme.light(
                    primary: const Color(0xFFD4AF37),
                    error: const Color(0xFFD4AF37),
                    onError: const Color(0xFFD4AF37),
                    brightness: Brightness.light)),
            child: child!,
          );
        });

    if (picked != null && picked != widget.date) {
      setState(() {
        widget.date = picked;
      });
    }
  }
}
