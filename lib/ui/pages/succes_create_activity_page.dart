part of 'pages.dart';

class SuccesCreateActivtyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: ClipPath(
                clipper: BackgroundClipper(),
                child: Container(
                  height: SizeConfig.defaultHeight * 0.6,
                  width: SizeConfig.defaultWidth,
                  color: blueColor,
                  child: Column(
                    children: [
                      SizedBox(
                        height: getSizeScreenHeight(40),
                      ),
                      TitleContent(
                        title: "Aktifitas Berhasil\nDitambahkan",
                        color: whiteColor,
                        isAlignCenter: true,
                      ),
                      SizedBox(
                        height: getSizeScreenHeight(30),
                      ),
                      Container(
                        height: SizeConfig.defaultHeight * 0.4,
                        width: SizeConfig.defaultWidth * 0.6,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/img/success.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: getSizeScreenHeight(40),
              child: Container(
                height: getSizeScreenHeight(45),
                width: SizeConfig.defaultWidth,
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.defaultWidth * 0.15,
                ),
                child: FlatButton(
                  onPressed: () {
                    Get.offAll(MainPage());
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  color: blueColor,
                  child: Text("Kembali Ke Beranda", style: whiteText),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height - getSizeScreenHeight(50));
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - getSizeScreenHeight(50));
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
