class MotorModel {
  String name;
  String price;
  String banner;
  String img;
  SpecificationModel specification;
  List<ColorModel> color;

  MotorModel({
    required this.name,
    required this.price,
    required this.banner,
    required this.img,
    required this.specification,
    required this.color,
  });
}

class SpecificationModel {
  String dimension;
  double fuel;
  String engine;
  String displacement;

  SpecificationModel(
      {required this.dimension,
      required this.fuel,
      required this.engine,
      required this.displacement});
}

class ColorModel {
  String name;
  String hex;
  String img;

  ColorModel({required this.name, required this.hex, required this.img});
}

var motorList = [
  MotorModel(
      name: 'Rebel 500',
      price: "199.838.000",
      banner: "assets/banner_rebel.jpeg",
      img: "assets/rebel.png",
      specification: SpecificationModel(
          dimension: "2.205 x 820 x 1.090 mm",
          fuel: 11,
          engine: "4-Stroke, DOHC Parallel Twin Cylinder",
          displacement: "471,03 cc"),
      color: [
        ColorModel(name: "GRAPHITE BLACK", hex: "000000", img: "assets/rebel.png"),
        ColorModel(name: "MATTE AXIS GRAY METALLIC", hex: "7d7d7d", img: "assets/rebel_gray.png"),
        ColorModel(name: "MATTE JEANS BLUE METTALIC", hex: "283461", img: "assets/rebel_blue.png"),
      ]
  ),
  MotorModel(
      name: 'Goldwing 1800',
      price: "1.052.500.000",
      banner: "assets/banner_goldwing.jpeg",
      img: "assets/goldwing.png",
      specification: SpecificationModel(
          dimension: "2.615 x 905 x 1.430 mm",
          fuel: 21,
          engine: "Liquid-Cooled horizontally opposed six-cylinder",
          displacement: "1883 cc"),
      color: [
        ColorModel(name: "CANDY ARDENT RED", hex: "490000", img: "assets/goldwing.png"),
      ]
  ),
  MotorModel(
      name: 'CB650R',
      price: "286.406.000",
      banner: "assets/banner_cb650r.jpeg",
      img: "assets/cb650_red.png",
      specification: SpecificationModel(
          dimension: "2.128 x 784 x 1.076 mm",
          fuel: 15.4,
          engine: "Liquid-Cooled, 4-Stroke, DOHC Four Cylinder",
          displacement: "648,72 cc"),
      color: [
        ColorModel(name: "MATTE GUNPOWDER BLACK METALLIC", hex: "161616", img: "assets/cb650_black.png"),
        ColorModel(name: "CANDY CHROMOSPHERE RED", hex: "A32535", img: "assets/cb650_red.png"),
      ]
  ),
  MotorModel(
      name: 'CBR1000RR-R FIREBLADE',
      price: "1.076.696.000",
      banner: "assets/banner_cbr.jpeg",
      img: "assets/cbr.png",
      specification: SpecificationModel(
          dimension: "2.205 x 820 x 1.090 mm",
          fuel: 16.1,
          engine: "Liquid Cooled 4-stroke 16-valve DOHC Inline-4",
          displacement: "999.9 cc"),
      color: [
        ColorModel(name: "HONDA TRICOLOR", hex: "454D94", img: "assets/cbr.png"),
      ]
  ),
  MotorModel(
      name: 'CRF1100L AFRICA TWIN',
      price: "663.300.000",
      banner: "assets/banner_africa.jpeg",
      img: "assets/africa.png",
      specification: SpecificationModel(
          dimension: "2.310 x 960 x 1.445 (low) / 1.500 (high)",
          fuel: 24.8,
          engine: " 4-Stroke 8-Valve Parallel Twin with 270 Crank and Uni-Cam",
          displacement: "1.084 cc"),
      color: [
        ColorModel(name: "CRF1100L AFRICA TWIN ADVENTURE SPORTS", hex: "175791", img: "assets/africa.png"),
      ]
  ),
];
