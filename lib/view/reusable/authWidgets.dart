import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constants/appcolors.dart';
import '../../core/constants/appimages.dart';

class FieldName extends StatelessWidget {
  final String text;
  const FieldName({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      child: Text(
        text,
        style: const TextStyle(
            fontWeight: FontWeight.w700, color: AppColors.primaryColor),
      ),
    );
  }
}

class ForgetPasswordBtn extends StatelessWidget {
  final String text;
  const ForgetPasswordBtn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: const TextStyle(fontSize: 16, color: AppColors.textColor),
          ),
        ),
      ],
    );
  }
}

class LogoContainer extends StatelessWidget {
  final String imageName;
  const LogoContainer({super.key, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageName,
      width: 40,
      height: 150,
    );
  }
}

class OrWithDivider extends StatelessWidget {
  final String text;
  const OrWithDivider({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider()), // Set desired width
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 7),
            child: Text(text)),
        const Expanded(child: Divider()),
      ],
    );
  }
}

class SocialMediaLogos extends StatelessWidget {
  final void Function()? onGooglePressed;
  final void Function()? onFacebookPressed;
  final void Function()? onApplePressed;
  const SocialMediaLogos(
      {super.key,
      required this.onGooglePressed,
      required this.onFacebookPressed,
      required this.onApplePressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: MaterialButton(
            onPressed: onFacebookPressed,
            child: Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(10),
                width: 50,
                height: 50,
                child: Image.asset(ImagesAssets.facebookIcon)),
          ),
        ),
        Expanded(
          child: MaterialButton(
            onPressed: onGooglePressed,
            child: Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(10),
                width: 50,
                height: 50,
                child: Image.asset(ImagesAssets.googleIcon)),
          ),
        ),
        Expanded(
          child: MaterialButton(
            onPressed: onApplePressed,
            child: Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(10),
              width: 50,
              height: 50,
              child: Image.asset(ImagesAssets.appleIcon),
            ),
          ),
        ),
      ],
    );
  }
}

class TwoTextRowWithTxtBtn extends StatelessWidget {
  final String firstTxt;
  final String secondTxt;
  final void Function()? secondTxtPressed;

  const TwoTextRowWithTxtBtn(
      {super.key,
      required this.firstTxt,
      required this.secondTxt,
      required this.secondTxtPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Don't have account?
        Text(firstTxt),
        TextButton(
          onPressed: secondTxtPressed,
          child: Text(secondTxt,
              style:
                  const TextStyle(fontSize: 17, color: AppColors.primaryColor)),
        ), //Register
      ],
    );
  }
}
