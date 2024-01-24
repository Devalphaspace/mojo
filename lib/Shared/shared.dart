import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants/color_constants.dart';

class MojoLogo extends StatelessWidget {
  const MojoLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'MOJO',
      style: GoogleFonts.inder(
        fontSize: 28,
        color: ColorConstants().mojoGreen,
        letterSpacing: 7,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class PrimaryButton extends StatelessWidget {
  final String btnName;
  final Function()? onPressed;
  const PrimaryButton({
    super.key,
    required this.btnName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorConstants().mojoPink,
        minimumSize: Size(Get.width * 0.6, 48),
        maximumSize: Size(Get.width * 0.6, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            btnName,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: ColorConstants().mojoLight,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
          const SizedBox(width: 12),
          SvgPicture.asset(
            'assets/button_arrow.svg',
          ),
        ],
      ),
    );
  }
}

class PrimaryTextFormField extends StatefulWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final bool isObscure;
  final String? Function(String?)? validator;
  final Color hintColor;
  final TextStyle errorTextStyle;
  const PrimaryTextFormField({
    super.key,
    required this.textEditingController,
    required this.hintText,
    required this.isObscure,
    required this.validator,
    this.hintColor = const Color(0xFF8D94BA),
    this.errorTextStyle = const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 12,
    ),
  });

  @override
  State<PrimaryTextFormField> createState() => _PrimaryTextFormFieldState();
}

class _PrimaryTextFormFieldState extends State<PrimaryTextFormField> {
  bool isObscure = false;

  @override
  void initState() {
    super.initState();
    isObscure = widget.isObscure;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textEditingController,
      obscureText: isObscure,
      validator: widget.validator,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            width: 1,
            color: ColorConstants().mojoGrayish,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            width: 1,
            color: ColorConstants().mojoGrayish,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            width: 1.5,
            color: ColorConstants().mojoDark,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            width: 1.5,
            color: ColorConstants().mojoDark,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            width: 1,
            color: Colors.red,
          ),
        ),
        hintText: widget.hintText,
        hintStyle: GoogleFonts.inter(
          color: ColorConstants().mojoGrayish,
          fontSize: 16,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w300,
        ),
        errorStyle: widget.errorTextStyle,
        suffixIcon: widget.isObscure
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
                icon: Icon(
                  Icons.visibility_outlined,
                  color: ColorConstants().mojoGrayish,
                  size: 24,
                ),
              )
            : const SizedBox(
                height: 0,
                width: 0,
              ),
      ),
    );
  }
}
