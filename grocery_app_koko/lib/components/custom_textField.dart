import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController textEditingController;
  final Color borderSideColor ;

  const CustomTextField( {
    required this.hintText,
    required this.textEditingController,
    this.obscureText = false,
    this.borderSideColor = Apptheme.color1,
    super.key,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.textEditingController,
      obscureText: _obscureText,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: GoogleFonts.roboto(fontWeight: FontWeight.w600, color: Apptheme.color3),
        suffixIcon: widget.obscureText
            ? GestureDetector(
          onTap: _toggleObscureText,
          child: Icon(
            _obscureText ? Icons.visibility_off : Icons.visibility,color: Apptheme.color3,
          ),
        )
            : null,
        filled: false,

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Apptheme.borderRadiusSmall),
          borderSide: BorderSide(color: widget.borderSideColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Apptheme.borderRadiusSmall),
          borderSide: const BorderSide(color: Apptheme.color4),
        ),
      ),
      style: const TextStyle(fontSize: Apptheme.fontSizeTextField,color: Apptheme.color3),
    );
  }
}
