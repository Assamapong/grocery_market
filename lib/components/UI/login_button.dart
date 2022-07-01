import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String buttonTitle;
  final AssetImage logo;
  final Color buttonColor;
  final void Function() onTab;
  LoginButton(
      {required this.buttonTitle,
      required this.logo,
      required this.buttonColor,
      required this.onTab});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: GestureDetector(
        onTap: onTab,
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
                image: logo,
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
                      buttonTitle,
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
