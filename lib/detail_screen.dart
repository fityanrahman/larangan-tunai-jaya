import 'package:flutter/material.dart';
import 'package:submission/const/string_to_hex.dart';
import 'package:submission/const/themes.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkColor,
      body: SingleChildScrollView(
          padding: EdgeInsets.zero,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 25 / 12,
                child: Container(
                  child: Image.asset(
                    'assets/banner_rebel.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: lightColor,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32))),
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.only(bottom: 28),
                child: Column(
                  children: [
                    Text(
                      'HONDA REBEL 500',
                      style: darkBoldTextStyle.copyWith(fontSize: 24),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Rp 199.838.000',
                      style: darkBoldTextStyle.copyWith(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      'GRAPHITE BLACK',
                      style: darkSemiBoldTextStyle.copyWith(fontSize: 14),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                        width: 240, child: Image.asset('assets/rebel.png')),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MotorColor(color: '000000'),
                        MotorColor(color: '7d7d7d'),
                        MotorColor(color: '283461')
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Color Variant',
                      style: darkRegularTextStyle.copyWith(fontSize: 14),
                    )
                  ],
                ),
              ),
              Text(
                'SPECIFICATION',
                style: lightBoldTextStyle.copyWith(fontSize: 14),
              ),
              const SizedBox(
                height: 16,
              ),
              ContentSpec(title: 'Dimension', detail: '2.205 x 820 x 1.090 mm'),
              ContentSpec(title: 'Fuel Tank Capacity', detail: '11 L'),
              ContentSpec(
                  title: 'Engine Type',
                  detail: '4-Stroke, DOHC Parallel Twin Cylinder'),
              ContentSpec(title: 'Displacement', detail: '471,03 cc'),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: OrangeRoundedButton(),
              )
            ],
          )),
    );
  }
}

class MotorColor extends StatelessWidget {
  String color;

  MotorColor({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color stringHex = HexColor(color);

    return Container(
      width: 28,
      height: 28,
      margin: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
          color: stringHex,
          shape: BoxShape.circle,
          border: Border.all(width: 2, color: const Color(0xffffffff)
              // color: Color(0xff0795ba)
              )),
    );
  }
}

class ContentSpec extends StatelessWidget {
  String title;
  String detail;

  ContentSpec({Key? key, required this.title, required this.detail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$title :',
            style: lightRegularTextStyle.copyWith(fontSize: 14),
          ),
          const SizedBox(width: 4),
          Text(
            detail,
            style: lightSemiBoldTextStyle.copyWith(fontSize: 14),
          ),
        ],
      ),
    );
  }
}

class OrangeRoundedButton extends StatelessWidget {
  const OrangeRoundedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)),
          ),
          backgroundColor: MaterialStateProperty.all(orangeColor),
        ),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          child: Text(
            'Buy Now',
            textAlign: TextAlign.center,
            style: lightBoldTextStyle.copyWith(fontSize: 14),
          ),
        )
    );
  }
}
