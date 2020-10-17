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
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.blue[700],
      ),
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
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
          selectedItemColor: Colors.blue[700],
          unselectedItemColor: Colors.grey[400],
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
                color: bottomNavbarIndex == 0
                    ? Colors.blue[700]
                    : Colors.grey[400],
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.clipboard,
                color: bottomNavbarIndex == 1
                    ? Colors.blue[700]
                    : Colors.grey[400],
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.barley,
                color: bottomNavbarIndex == 2
                    ? Colors.blue[700]
                    : Colors.grey[400],
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.alien,
                color: bottomNavbarIndex == 3
                    ? Colors.blue[700]
                    : Colors.grey[400],
              ),
              label: 'Home',
            ),
          ],
        ),
      ),
    );
  }
}
