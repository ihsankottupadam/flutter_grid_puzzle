import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    this.controller,
    this.hintText = '',
    this.inputType = TextInputType.text,
    this.isPassword = false,
    this.validator,
    this.onChanged,
    this.maxLength,
    this.onSaved,
    this.textInputAction,
  }) : super(key: key);
  final String hintText;
  final TextEditingController? controller;
  final TextInputType inputType;
  final bool isPassword;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final Function(String?)? onSaved;
  final int? maxLength;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      controller: controller,
      keyboardType: inputType,
      maxLength: maxLength,
      textAlign: TextAlign.center,
      textInputAction: textInputAction,
      style: const TextStyle(fontFamily: 'Roboto'),
      decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
          labelText: hintText,
          labelStyle: const TextStyle(fontWeight: FontWeight.bold),
          filled: true,
          counterText: '',
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          fillColor: const Color(0xffffffff)),
      validator: validator,
      onChanged: onChanged,
      onSaved: onSaved,
    );
  }
}
