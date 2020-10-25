part of 'widgets.dart';

class TitleContent extends StatelessWidget {
  final String title;
  final Color color;
  final bool isPadding;
  final bool isAlignCenter;

  const TitleContent(
      {Key key,
      this.title = "No Title",
      this.color,
      this.isPadding = false,
      this.isAlignCenter = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isPadding ? EdgeInsets.zero : edgeInsetsH24,
      child: Text(
        title,
        textAlign: isAlignCenter ? TextAlign.center : TextAlign.start,
        style: blackText.copyWith(
          fontSize: getSizeScreenHeight(20),
          fontWeight: FontWeight.bold,
          color: color == null ? blackColor : color,
        ),
      ),
    );
  }
}
