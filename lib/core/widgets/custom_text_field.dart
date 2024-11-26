import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextInputType? inputType;
  final Widget? suffixIcon;
  final ValueSetter<String>? onSaved;
  final ValueSetter<String>? onChanged;
  final int? maxLines;

  const CustomTextFormField({
    Key? key,
    this.inputType,
    this.suffixIcon,
    this.onSaved,
    this.onChanged,
    this.maxLines = 1, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      onChanged: onChanged,
      //onSaved: onSaved,
      maxLines: maxLines,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.transparent,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Color(0xFFCCCCCC),
          ),
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
