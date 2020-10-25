import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hive/hive.dart';
import 'package:kudu/shared/shared.dart';
import 'package:kudu/ui/pages/pages.dart';
import 'package:path_provider/path_provider.dart' as path;

import 'hive/activity_hive.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var appDocumentDirectory = await path.getApplicationDocumentsDirectory();

  Hive.init(appDocumentDirectory.path);

  Hive.registerAdapter(ActivityAdapter());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Kudu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[50],
        tooltipTheme: TooltipThemeData(
          decoration: BoxDecoration(
            color: purpleColor,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ),
      builder: (context, child) {
        return ScrollConfiguration(behavior: ScrollBehavior(), child: child);
      },
      home: MainPage(),
    );
  }
}
