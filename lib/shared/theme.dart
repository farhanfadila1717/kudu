part of 'shared.dart';

// NOTE: Default Color
Color blueColor = Color(0xFF2451C6);
Color greyColor = Color(0xFFC4C4C4);
Color pinkColor = Colors.pink[400];
Color purpleColor = Colors.purple[600];
Color orangeColor = Colors.orange[600];
Color whiteColor = Colors.white;
Color blackColor = Color(0xFF212121);

// NOTE: Default Edge Insets
EdgeInsets edgeInsetsAll24 = EdgeInsets.all(
  getSizeScreenWidth(24),
);
EdgeInsets edgeInsetsH24 = EdgeInsets.symmetric(
  horizontal: getSizeScreenWidth(24),
);
EdgeInsets edgeInsetsV24 = EdgeInsets.symmetric(
  vertical: getSizeScreenWidth(24),
);
EdgeInsets edgeInsetsAll20 = EdgeInsets.all(
  getSizeScreenWidth(20),
);
EdgeInsets edgeInsetsH20 = EdgeInsets.symmetric(
  horizontal: getSizeScreenWidth(20),
);
EdgeInsets edgeInsetsV20 = EdgeInsets.symmetric(
  vertical: getSizeScreenWidth(20),
);
EdgeInsets edgeInsetsAll16 = EdgeInsets.all(
  getSizeScreenWidth(16),
);
EdgeInsets edgeInsetsH16 = EdgeInsets.symmetric(
  horizontal: getSizeScreenWidth(16),
);
EdgeInsets edgeInsetsV16 = EdgeInsets.symmetric(
  vertical: getSizeScreenWidth(16),
);
EdgeInsets edgeInsetsAll10 = EdgeInsets.all(
  getSizeScreenWidth(10),
);
EdgeInsets edgeInsetsH10 = EdgeInsets.symmetric(
  horizontal: getSizeScreenWidth(10),
);
EdgeInsets edgeInsetsV10 = EdgeInsets.symmetric(
  vertical: getSizeScreenWidth(10),
);

// NOTE: Default Border Radius
BorderRadius borderRadius4 = BorderRadius.circular(
  getSizeScreenWidth(4),
);
BorderRadius borderRadius6 = BorderRadius.circular(
  getSizeScreenWidth(6),
);
BorderRadius borderRadius8 = BorderRadius.circular(
  getSizeScreenWidth(8),
);
BorderRadius borderRadius10 = BorderRadius.circular(
  getSizeScreenWidth(10),
);
BorderRadius borderRadius16 = BorderRadius.circular(
  getSizeScreenWidth(16),
);

// NOTE: Default Box Shadow
List<BoxShadow> boxShadow = [
  BoxShadow(
    color: greyColor.withOpacity(0.2),
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
TextStyle whiteNumber = GoogleFonts.roboto(
  fontSize: 14,
  color: whiteColor,
);
TextStyle greyText = GoogleFonts.rubik(
  fontSize: 14,
  color: greyColor,
);
TextStyle greyNumber = GoogleFonts.roboto(
  fontSize: 14,
  color: greyColor,
);
TextStyle blueText = GoogleFonts.rubik(
  fontSize: 14,
  color: blueColor,
);
TextStyle blueNumber = GoogleFonts.roboto(
  fontSize: 14,
  color: blueColor,
);
TextStyle blackText = GoogleFonts.rubik(
  fontSize: 14,
  color: blackColor,
);
TextStyle blackNumber = GoogleFonts.roboto(
  fontSize: 14,
  color: blackColor,
);
