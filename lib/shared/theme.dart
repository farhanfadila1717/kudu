part of 'shared.dart';

// NOTE: Default Color
Color blueColor = Colors.blue[700];
Color greyColor = Colors.grey[100];
Color pinkColor = Colors.pink[400];
Color purpleColor = Colors.purple[800];
Color orangeColor = Colors.orange[600];
Color whiteColor = Colors.white;

// NOTE: Default Box Shadow
List<BoxShadow> boxShadow = [
  BoxShadow(
    color: greyColor,
    offset: Offset(getSizeScreenHeight(10), getSizeScreenWidth(10)),
    blurRadius: getSizeScreenHeight(10),
  ),
];

// NOTE: Default Spacer
Widget spacerH6 = SizedBox(
  height: getSizeScreenHeight(6),
);
Widget spacerW6 = SizedBox(
  width: getSizeScreenWidth(6),
);
Widget spacerH10 = SizedBox(
  height: getSizeScreenHeight(10),
);
Widget spacerW10 = SizedBox(
  width: getSizeScreenWidth(10),
);
Widget spacerH16 = SizedBox(
  height: getSizeScreenHeight(16),
);
Widget spacerW16 = SizedBox(
  width: getSizeScreenWidth(16),
);
Widget spacerH20 = SizedBox(
  height: getSizeScreenHeight(20),
);
Widget spacerW20 = SizedBox(
  width: getSizeScreenWidth(20),
);

// NOTE: Default Fonts Style
TextStyle whiteText = GoogleFonts.rubik(
  fontSize: 14,
  color: whiteColor,
);
TextStyle whiteNumber = GoogleFonts.robotoSlab(
  fontSize: 14,
  color: whiteColor,
);
TextStyle greyText = GoogleFonts.rubik(
  fontSize: 14,
  color: greyColor,
);
TextStyle greyNumber = GoogleFonts.robotoSlab(
  fontSize: 14,
  color: greyColor,
);
TextStyle blueText = GoogleFonts.rubik(
  fontSize: 14,
  color: blueColor,
);
TextStyle blueNumber = GoogleFonts.robotoSlab(
  fontSize: 14,
  color: blueColor,
);
