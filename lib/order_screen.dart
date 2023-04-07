import 'package:flutter/material.dart';
import 'package:submission/const/const_strings.dart';
import 'package:submission/const/themes.dart';
import 'package:submission/funs/screen_funs.dart';

class OrderScreen extends StatefulWidget {
  String img;
  String name;
  String color;
  String price;

  OrderScreen(
      {Key? key,
      required this.img,
      required this.name,
      required this.color,
      required this.price})
      : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int? option;
  bool? order;

  @override
  void initState() {
    setState(() {
      option = 0;
      order = true;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomSheet: OrangeRoundedTwoButton(text: 'Confirm Order'),
      backgroundColor: darkColor,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SafeArea(
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 24),
                      child: Text(
                        'VEHICLE PURCHASE ORDER FORM',
                        textAlign: TextAlign.center,
                        style: lightBoldTextStyle.copyWith(fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 24),
                    child: Column(
                      children: [
                        TextField(
                          keyboardType: TextInputType.text,
                          autocorrect: false,
                          decoration: InputDecoration(
                            hintText: "Your Name",
                            hintStyle: darkRegularTextStyle.copyWith(
                              fontSize: 16,
                              color: grayColor,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: orangeColor, width: 2)),
                            filled: true,
                            fillColor: lightColor,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextField(
                          keyboardType: TextInputType.text,
                          autocorrect: false,
                          decoration: InputDecoration(
                            hintText: "Your Address",
                            hintStyle: darkRegularTextStyle.copyWith(
                              fontSize: 16,
                              color: grayColor,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: orangeColor, width: 2)),
                            filled: true,
                            fillColor: lightColor,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Container(
                          width: double.infinity,
                          child: Text(
                            'Payment Option',
                            style:
                                lightSemiBoldTextStyle.copyWith(fontSize: 14),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 16,
                                  width: 16,
                                  child: Transform.scale(
                                    scale: 0.8,
                                    child: Radio(
                                      value: 0,
                                      fillColor: MaterialStateColor.resolveWith(
                                          (states) => Colors.white),
                                      groupValue: option,
                                      onChanged: (int? value) {
                                        setState(() {
                                          option = value;
                                          order = true;
                                          print('radio adalah :$option');
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'Installment',
                                  style: lightRegularTextStyle.copyWith(
                                      fontSize: 14),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 32,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 16,
                                  width: 16,
                                  child: Transform.scale(
                                    scale: 0.8,
                                    child: Radio(
                                      value: 1,
                                      fillColor: MaterialStateColor.resolveWith(
                                          (states) => Colors.white),
                                      groupValue: option,
                                      onChanged: (int? value) {
                                        setState(() {
                                          option = value;
                                          order = false;
                                          print('radio adalah :$option');
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'Cash',
                                  style: lightRegularTextStyle.copyWith(
                                      fontSize: 14),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          option == 0 ? thankInstallment : thankCash,
                          style: orangeRegularTextStyle.copyWith(fontSize: 12),
                        ),
                        const SizedBox(
                          height: 42,
                        ),
                        Text(
                          'VEHICLE PURCHASE DETAIL',
                          style: lightBoldTextStyle.copyWith(fontSize: 14),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: lightColor,
                                    borderRadius: BorderRadius.circular(16)),
                                padding: const EdgeInsets.all(8),
                                child: Image.asset(widget.img),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.name,
                                    style: lightBoldTextStyle.copyWith(
                                        fontSize: 14),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    widget.color,
                                    style: lightRegularTextStyle.copyWith(
                                        fontSize: 12),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'Rp. ${widget.price} (Free Delivery)',
                                    style: lightRegularTextStyle.copyWith(
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              bottom: ScreenFuns().getPaddingBottom(context),
              left: 16,
              right: 16,
            ),
            child: OrangeRoundedTwoButton(text: 'Confirm Order', order: order!),
          ),
        ],
      ),
    );
  }
}

class OrangeRoundedTwoButton extends StatelessWidget {
  String text;
  bool order;

  OrangeRoundedTwoButton({Key? key, required this.text, required this.order})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) => OrderDialog(
            order: order,
          ),
        );
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
      ),
    );
  }
}

class OrderDialog extends StatelessWidget {
  bool order;

  OrderDialog({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(
          order ? titleOrderSuccess : titleOrderFailed,
          style: order
              ? greenBoldTextStyle.copyWith(fontSize: 16)
              : orangeBoldTextStyle.copyWith(fontSize: 16),
        ),
      ),
      content: Text(
        order ? orderSuccess : orderFailed,
        textAlign: TextAlign.center,
        style: darkRegularTextStyle.copyWith(
          fontSize: 14,
        ),
      ),
      actions: [
        Center(
          child: TextButton(
            onPressed: () {
              Navigator.pop(context, 'OK');
            },
            child: Text(
              'OK',
              style: darkSemiBoldTextStyle,
            ),
          ),
        ),
      ],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
    );
  }
}
