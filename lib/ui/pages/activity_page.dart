part of 'pages.dart';

class ActivityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("ActivityPage"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(
            SuccesCreateActivtyPage(),
            transition: getTransition.Transition.upToDown,
            curve: Curves.fastOutSlowIn,
            duration: Duration(
              milliseconds: 300,
            ),
          );
        },
        elevation: 0,
        highlightElevation: 0,
        splashColor: whiteColor.withOpacity(0.1),
        hoverColor: purpleColor,
        focusColor: purpleColor,
        backgroundColor: blueColor,
        tooltip: "Add Activity",
        child: Icon(
          Icons.add,
          size: getSizeScreenHeight(40),
        ),
      ),
    );
  }
}
