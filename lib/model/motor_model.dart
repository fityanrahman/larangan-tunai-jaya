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
  int fuel;
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
      banner: "img",
      img: "img",
      specification: SpecificationModel(
          dimension: "2.205 x 820 x 1.090 mm",
          fuel: 11,
          engine: "4-Stroke, DOHC Parallel Twin Cylinder",
          displacement: "471,03 cc"),
      color: [
        ColorModel(name: "GRAPHITE BLACK", hex: "000000", img: "img"),
        ColorModel(name: "MATTE AXIS GRAY METALLIC", hex: "7d7d7d", img: "img"),
        ColorModel(name: "MATTE JEANS BLUE METTALIC", hex: "283461", img: "img"),
      ]
  ),
  MotorModel(
      name: 'Rebel 500',
      price: "199.838.000",
      banner: "img",
      img: "img",
      specification: SpecificationModel(
          dimension: "2.205 x 820 x 1.090 mm",
          fuel: 11,
          engine: "4-Stroke, DOHC Parallel Twin Cylinder",
          displacement: "471,03 cc"),
      color: [
        ColorModel(name: "GRAPHITE BLACK", hex: "000000", img: "img"),
        ColorModel(name: "MATTE AXIS GRAY METALLIC", hex: "7d7d7d", img: "img"),
        ColorModel(name: "MATTE JEANS BLUE METTALIC", hex: "283461", img: "img"),
      ]
  ),
  MotorModel(
      name: 'Rebel 500',
      price: "199.838.000",
      banner: "img",
      img: "img",
      specification: SpecificationModel(
          dimension: "2.205 x 820 x 1.090 mm",
          fuel: 11,
          engine: "4-Stroke, DOHC Parallel Twin Cylinder",
          displacement: "471,03 cc"),
      color: [
        ColorModel(name: "GRAPHITE BLACK", hex: "000000", img: "img"),
        ColorModel(name: "MATTE AXIS GRAY METALLIC", hex: "7d7d7d", img: "img"),
        ColorModel(name: "MATTE JEANS BLUE METTALIC", hex: "283461", img: "img"),
      ]
  ),
  MotorModel(
      name: 'Rebel 500',
      price: "199.838.000",
      banner: "img",
      img: "img",
      specification: SpecificationModel(
          dimension: "2.205 x 820 x 1.090 mm",
          fuel: 11,
          engine: "4-Stroke, DOHC Parallel Twin Cylinder",
          displacement: "471,03 cc"),
      color: [
        ColorModel(name: "GRAPHITE BLACK", hex: "000000", img: "img"),
        ColorModel(name: "MATTE AXIS GRAY METALLIC", hex: "7d7d7d", img: "img"),
        ColorModel(name: "MATTE JEANS BLUE METTALIC", hex: "283461", img: "img"),
      ]
  ),
  MotorModel(
      name: 'Rebel 500',
      price: "199.838.000",
      banner: "img",
      img: "img",
      specification: SpecificationModel(
          dimension: "2.205 x 820 x 1.090 mm",
          fuel: 11,
          engine: "4-Stroke, DOHC Parallel Twin Cylinder",
          displacement: "471,03 cc"),
      color: [
        ColorModel(name: "GRAPHITE BLACK", hex: "000000", img: "img"),
        ColorModel(name: "MATTE AXIS GRAY METALLIC", hex: "7d7d7d", img: "img"),
        ColorModel(name: "MATTE JEANS BLUE METTALIC", hex: "283461", img: "img"),
      ]
  ),
];
