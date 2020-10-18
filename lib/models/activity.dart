import 'package:flutter/cupertino.dart';

class Activity {
  String title;
  String description;
  double passedPoint;
  bool isCountDown;
  int deadline;

  Activity(
      {@required this.title,
      @required this.description,
      @required this.deadline,
      @required this.isCountDown,
      this.passedPoint = 0});
}

List<Activity> dummyActivity = [
  Activity(
    title: "PR Statiska Dasar",
    description: "Latihan pertemuan ke-5",
    deadline: 1603185438000,
    isCountDown: true,
    passedPoint: 10,
  ),
  Activity(
    title: "Project Github Update",
    description: "Update info dan upload project open source",
    deadline: 1603271838000,
    isCountDown: true,
    passedPoint: 15,
  ),
  Activity(
    title: "Study English",
    description: "belajar bahasa inggris 2 jam cuk",
    deadline: 1603358238000,
    isCountDown: true,
    passedPoint: 20,
  ),
];
