import 'package:flutter/material.dart';
import 'package:submission/const/string_to_hex.dart';
import 'package:submission/const/themes.dart';
import 'package:submission/model/motor_model.dart';
import 'package:submission/order_screen.dart';
import 'package:submission/widgets/orange_rounded_button.dart';

class DetailScreen extends StatefulWidget {
  MotorModel motorModel;

  DetailScreen({Key? key, required this.motorModel}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int indexColor = 0;

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
                  widget.motorModel.banner,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: lightColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
              ),
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(bottom: 28),
              child: Column(
                children: [
                  Text(
                    widget.motorModel.name,
                    style: darkBoldTextStyle.copyWith(fontSize: 24),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Rp ${widget.motorModel.price}',
                    style: darkBoldTextStyle.copyWith(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    widget.motorModel.color[indexColor].name,
                    style: darkSemiBoldTextStyle.copyWith(fontSize: 14),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: 240,
                    child: Image.asset(widget.motorModel.color[indexColor].img),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: double.infinity,
                    height: 30,
                    child: Center(
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          for (int i = 0;
                              i < widget.motorModel.color.length;
                              i++)
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    indexColor = i;
                                  });
                                },
                                child: MotorColor(
                                    color: widget.motorModel.color[i].hex))
                        ],
                      ),
                    ),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Text(
                    'SPECIFICATION',
                    style: lightBoldTextStyle.copyWith(fontSize: 14),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ContentSpec(
                      title: 'Dimension',
                      detail: widget.motorModel.specification.dimension),
                  ContentSpec(
                      title: 'Fuel Tank Capacity',
                      detail: '${widget.motorModel.specification.fuel} L'),
                  ContentSpec(
                      title: 'Engine Type',
                      detail: widget.motorModel.specification.engine),
                  ContentSpec(
                      title: 'Displacement',
                      detail: widget.motorModel.specification.displacement),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 24,
                    ),
                    child: OrangeRoundedButton(
                      routeTarget: OrderScreen(
                          img: widget.motorModel.color[indexColor].img,
                          name: widget.motorModel.name,
                          color: widget.motorModel.color[indexColor].name,
                          price: widget.motorModel.price),
                      text: 'Buy Now',
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
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
        border: Border.all(width: 2, color: const Color(0xffffffff)),
      ),
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '$title :',
            style: lightRegularTextStyle.copyWith(fontSize: 14),
          ),
          const SizedBox(width: 4),
          Flexible(
            child: Text(
              detail,
              textAlign: TextAlign.center,
              style: lightSemiBoldTextStyle.copyWith(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
