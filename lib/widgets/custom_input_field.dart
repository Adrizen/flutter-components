import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.iconSuffix,
    this.keyboardType,
    this.isPassword = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? iconSuffix;
  final TextInputType? keyboardType;
  final bool isPassword;

  final String formProperty;
  final Map<String, String> formValues;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: false,
        initialValue: '',
        keyboardType: keyboardType,
        textCapitalization: TextCapitalization.words,
        obscureText: isPassword,
        onChanged: (value) {
          formValues[formProperty] = value;
        },
        validator: (value) {
          if (value == null) return 'This field is required';

          return value.length < 3 ? 'Length of at least 3 characters' : null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          icon: icon == null ? null : Icon(icon),
          //prefixIcon: Icon(Icons.verified_user_outlined),
          suffixIcon: iconSuffix == null ? null : Icon(iconSuffix),
        ));
  }
}
