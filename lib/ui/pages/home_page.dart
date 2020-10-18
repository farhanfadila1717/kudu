part of 'pages.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime timeNow = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: SizeConfig.defaultHeight * 0.38,
                width: double.infinity,
                padding: edgeInsetsAll24,
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TitleContent(
                              isPadding: true,
                              title: "Activity Complite Week",
                            ),
                            spacerH16,
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: getSizeScreenWidth(10),
                                    width: getSizeScreenWidth(10),
                                    decoration: BoxDecoration(
                                      color: orangeColor,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  spacerW10,
                                  Text("Lecture 2", style: blackText),
                                ],
                              ),
                            ),
                            spacerH10,
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: getSizeScreenWidth(10),
                                    width: getSizeScreenWidth(10),
                                    decoration: BoxDecoration(
                                      color: pinkColor,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  spacerW10,
                                  Text("Project 2", style: blackText),
                                ],
                              ),
                            ),
                            spacerH10,
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: getSizeScreenWidth(10),
                                    width: getSizeScreenWidth(10),
                                    decoration: BoxDecoration(
                                      color: blueColor,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  spacerW10,
                                  Text("Other 2", style: blackText),
                                ],
                              ),
                            ),
                            spacerH10,
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Total 6",
                                    style: blackText.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: getSizeScreenHeight(16),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    spacerH20,
                    Expanded(
                      child: Center(
                        child: SleekCircularSlider(
                          initialValue: 50,
                          max: 100,
                          appearance: CircularSliderAppearance(
                            customColors: CustomSliderColors(
                              trackColor: greyColor.withOpacity(0.5),
                              dotColor: Colors.white,
                              progressBarColors: [
                                Colors.lightBlue,
                                Colors.blueAccent,
                                blueColor,
                              ],
                            ),
                            angleRange: 340,
                            startAngle: 0,
                            customWidths: CustomSliderWidths(
                              progressBarWidth: getSizeScreenWidth(12),
                            ),
                            infoProperties: InfoProperties(),
                            size: getSizeScreenHeight(120),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: getSizeScreenHeight(24),
                ),
                color: Colors.blue[50],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleContent(
                      title: "Today Activity",
                    ),
                    spacerH16,
                    Container(
                      width: double.infinity,
                      height: getSizeScreenHeight(220),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: dummyActivity.length,
                        itemBuilder: (context, index) {
                          DateTime timeActivity =
                              DateTime.fromMillisecondsSinceEpoch(
                                  dummyActivity[index].deadline);
                          int timeDiffrence =
                              timeNow.difference(timeActivity).inDays;
                          return Container(
                            margin: EdgeInsets.only(
                              left: index == 0
                                  ? getSizeScreenWidth(24)
                                  : getSizeScreenWidth(16),
                              bottom: getSizeScreenHeight(24),
                              right: index == dummyActivity.length - 1
                                  ? getSizeScreenHeight(24)
                                  : 0,
                            ),
                            padding: edgeInsetsAll16,
                            height: double.infinity,
                            width: getSizeScreenWidth(152),
                            decoration: BoxDecoration(
                              color: whiteColor,
                              boxShadow: boxShadow,
                              borderRadius: borderRadius10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      dummyActivity[index].title,
                                      style: blackText.copyWith(
                                        fontSize: getSizeScreenHeight(16),
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ),
                                spacerH10,
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          dummyActivity[index].description,
                                          style: greyNumber,
                                          maxLines: 2,
                                        ),
                                      ),
                                      spacerH10,
                                      Text(
                                        "${timeDiffrence.toString().replaceAll('-', '')} days left",
                                        style: blackText.copyWith(
                                          fontSize: getSizeScreenHeight(14),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      spacerH10,
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Stack(
                                          children: [
                                            Container(
                                              height: getSizeScreenHeight(40),
                                              width: getSizeScreenHeight(40),
                                              decoration: BoxDecoration(
                                                color: blueColor,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  width: getSizeScreenHeight(3),
                                                  color: whiteColor,
                                                ),
                                              ),
                                              child: Icon(
                                                MdiIcons.brain,
                                                color: whiteColor,
                                                size: getSizeScreenHeight(20),
                                              ),
                                            ),
                                            Positioned(
                                              left: getSizeScreenHeight(30),
                                              child: Container(
                                                height: getSizeScreenHeight(40),
                                                width: getSizeScreenHeight(40),
                                                decoration: BoxDecoration(
                                                  color: pinkColor,
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                    width:
                                                        getSizeScreenHeight(3),
                                                    color: whiteColor,
                                                  ),
                                                ),
                                                child: Icon(
                                                  MdiIcons.armFlex,
                                                  color: whiteColor,
                                                  size: getSizeScreenHeight(20),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: double.infinity,
                                        width: getSizeScreenWidth(50),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
