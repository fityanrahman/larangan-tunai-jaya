import 'package:flutter/material.dart';
import 'package:submission/const/themes.dart';
import 'package:submission/detail_screen.dart';

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
                      MaterialPageRoute(builder: (context) => DetailScreen()));
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 16, right: 16, bottom: 22),
                  decoration: BoxDecoration(
                      color: lightColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(32),
                          bottomRight: Radius.circular(32))),
                  child: Column(
                    children: [
                      SafeArea(
                        child: Container(
                          width: 200,
                          child: Image.asset('assets/logo.png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Container(
                          child: Image.asset('assets/rebel.png'),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text("HONDA REBEL 500",
                          style: darkBoldTextStyle.copyWith(fontSize: 22)),
                      SizedBox(
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
                padding: EdgeInsets.only(top: 24, left: 16),
                child: Text(
                  'RECOMMENDED',
                  style: lightSemiBoldTextStyle.copyWith(fontSize: 16),
                ),
              ),
              GridView.count(
                padding: EdgeInsets.all(16),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                crossAxisCount: 2,
                children: const [
                  ItemCatalog(),
                  ItemCatalog(),
                  ItemCatalog(),
                  ItemCatalog(),
                  ItemCatalog(),
                ],
              )
            ],
          )),
        ));
  }
}

class ItemCatalog extends StatelessWidget {
  const ItemCatalog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1 / 1,
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailScreen()));
          },
          child: Container(
            decoration: BoxDecoration(
                color: lightColor,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Column(
              children: [
                Container(
                  child: Image.asset('assets/rebel.png'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'REBEL 500',
                  style: darkBoldTextStyle.copyWith(fontSize: 14),
                ),
                SizedBox(
                  height: 4,
                ),
                Expanded(
                  child: Text(
                    'Rp 199 mio',
                    style: darkRegularTextStyle.copyWith(fontSize: 12),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
