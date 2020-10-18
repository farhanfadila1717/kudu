part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController pageController = PageController();
  int bottomNavbarIndex = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: blueColor,
      ),
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: pageController,
              children: [
                HomePage(),
                ActivityPage(),
                PlanePage(),
                AccountPage(),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          backgroundColor: whiteColor,
          selectedItemColor: blueColor,
          unselectedItemColor: greyColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) {
            setState(() {
              bottomNavbarIndex = index;
              pageController.jumpToPage(index);
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.home,
                color: bottomNavbarIndex == 0 ? blueColor : greyColor,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.bagPersonal,
                color: bottomNavbarIndex == 1 ? blueColor : greyColor,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.barley,
                color: bottomNavbarIndex == 2 ? blueColor : greyColor,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.alien,
                color: bottomNavbarIndex == 3 ? blueColor : greyColor,
              ),
              label: 'Home',
            ),
          ],
        ),
      ),
    );
  }
}
