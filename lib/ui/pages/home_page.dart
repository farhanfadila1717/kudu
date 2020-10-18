part of 'pages.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 150,
                width: double.infinity,
                color: Colors.yellow,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Placeholder(),
                    ),
                    Expanded(
                      child: SleekCircularSlider(
                        initialValue: 10,
                        appearance: CircularSliderAppearance(
                          customColors: CustomSliderColors(
                            trackColor: Colors.white,
                            dotColor: Colors.white,
                            progressBarColors: [
                              Colors.blue,
                              Colors.blueAccent,
                            ],
                          ),
                          angleRange: 50,
                          counterClockwise: true,
                        ),
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
