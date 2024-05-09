import 'package:flutter/material.dart';

import '../../core/constants/appcolors.dart';

// ignore: must_be_immutable
class CustomFormField extends StatelessWidget {
  final String hintTxt;

  IconData? iconData;

  String? Function(String?)? validator;
  TextEditingController? txtController;
  final bool isPassword;
  final void Function()? onTapPass;

  CustomFormField({
    super.key,
    required this.hintTxt,
    this.iconData,
    required this.txtController,
    this.validator,
    this.isPassword = false,
    this.onTapPass,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        obscureText: isPassword,
        validator: validator,
        style: const TextStyle(fontSize: 17),
        controller: txtController,
        decoration: InputDecoration(
          hintText: hintTxt,
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.secondaryColor),
            borderRadius: BorderRadius.circular(25),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: Colors.orange), // Border color when focused
            borderRadius: BorderRadius.circular(25),
          ),
          hintStyle: const TextStyle(fontSize: 14),
          labelStyle: const TextStyle(fontSize: 14),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          suffixIcon: onTapPass != null
              ? InkWell(
                  onTap: onTapPass,
                  child: Icon(iconData),
                )
              : null,
        ),
      ),
    );
  }
}
