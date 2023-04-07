import 'package:flutter/material.dart';
import 'package:submission/const/themes.dart';
import 'package:submission/detail_screen.dart';
import 'package:submission/model/motor_model.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: darkColor,
        body: SingleChildScrollView(
          padding: EdgeInsets.zero,
          child: (Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailScreen(motorModel: motorList[0],)));
                },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 16, right: 16, bottom: 22),
                  decoration: BoxDecoration(
                      color: lightColor,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(32),
                          bottomRight: Radius.circular(32))),
                  child: Column(
                    children: [
                      SafeArea(
                        child: Container(
                          margin: const EdgeInsets.only(top: 8),
                          width: 200,
                          child: Image.asset('assets/logo.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Container(
                          child: Image.asset(motorList[0].img),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text('HONDA ${motorList[0].name}',
                          style: darkBoldTextStyle.copyWith(fontSize: 22)),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Available Now',
                        style: darkLightTextStyle.copyWith(fontSize: 14),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 24, left: 16),
                child: Text(
                  'RECOMMENDED',
                  style: lightSemiBoldTextStyle.copyWith(fontSize: 16),
                ),
              ),
              GridView.builder(
                padding: const EdgeInsets.all(16),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1 / 1,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                    final MotorModel motorModels = motorList[index];
                    return(ItemCatalog(motor: motorModels));
                },
                itemCount: motorList.length,
              )
            ],
          )),
        ));
  }
}

class ItemCatalog extends StatelessWidget {
  MotorModel motor;

  ItemCatalog({Key? key, required this.motor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen(motorModel: motor,)));
      },
      child: Container(
        decoration: BoxDecoration(
            color: lightColor,
            borderRadius: const BorderRadius.all(Radius.circular(16))),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: Column(
          children: [
            Container(
              child: Image.asset(motor.img),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              motor.name,
              style: darkBoldTextStyle.copyWith(fontSize: 11),
            ),
            const SizedBox(
              height: 2,
            ),
            Expanded(
              child: Text(
                'Rp ${motor.price}',
                style: darkRegularTextStyle.copyWith(fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
