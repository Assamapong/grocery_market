import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final Color buttonColor;
  final AssetImage buttonLogo;
  final String buttonText;
  final Function() ontap;

  SocialButton(
      {required this.buttonColor,
      required this.buttonLogo,
      required this.buttonText,
      required this.ontap});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          height: 55,
          decoration: BoxDecoration(
            border: Border.all(color: buttonColor),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Image(
                image: buttonLogo,
                width: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      buttonText,
                      style: TextStyle(color: buttonColor, fontSize: 18),
                    ),
                    SizedBox(
                      width: 35,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
