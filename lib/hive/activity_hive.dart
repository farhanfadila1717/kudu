import 'package:hive/hive.dart';
part 'activity_hive.g.dart';

@HiveType(typeId: 0)
class Activity {
  @HiveField(0)
  String title;
  @HiveField(1)
  String description;
  @HiveField(2)
  double passedPoint;
  @HiveField(3)
  bool isCountDown;
  @HiveField(4)
  bool isActive;
  @HiveField(5)
  int deadline;

  Activity(
      {this.title,
      this.description,
      this.deadline,
      this.isCountDown,
      this.isActive,
      this.passedPoint});
}
