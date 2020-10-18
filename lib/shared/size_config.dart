part of 'shared.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double sizeWidth;
  static double sizeHeight;
  static double defaultWidth;
  static double defaultHeight;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    defaultHeight = _mediaQueryData.size.height;
    defaultWidth = _mediaQueryData.size.width;

    orientation = _mediaQueryData.orientation;
    if ((orientation == Orientation.portrait)) {
      sizeWidth = _mediaQueryData.size.width;
      sizeHeight = _mediaQueryData.size.height;
    } else {
      sizeHeight = _mediaQueryData.size.width;
      sizeWidth = _mediaQueryData.size.height;
    }
  }
}

double getSizeScreenHeight(double inputHeight) {
  double sizeHeight = SizeConfig.sizeHeight;

  return (inputHeight / 640) * sizeHeight;
}

double getSizeScreenWidth(double inputWidth) {
  double sizeWidth = SizeConfig.sizeWidth;

  return (inputWidth / 360) * sizeWidth;
}
