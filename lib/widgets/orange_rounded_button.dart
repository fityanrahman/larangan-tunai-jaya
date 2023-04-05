import 'package:flutter/material.dart';
import 'package:submission/const/themes.dart';

class OrangeRoundedButton extends StatelessWidget {
  Widget routeTarget;
  String text;

  OrangeRoundedButton({Key? key, required this.routeTarget, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => routeTarget));
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          backgroundColor: MaterialStateProperty.all(orangeColor),
        ),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: lightBoldTextStyle.copyWith(fontSize: 14),
          ),
        ));
  }
}
