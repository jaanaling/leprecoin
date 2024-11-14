import 'package:flutter/cupertino.dart';

class AppButton extends StatelessWidget {
  final Color color;
  final Widget widget;
  final VoidCallback? onPressed;
  final double radius;
  final double? width;
  final bool isSecond;

  const AppButton({
    super.key,
    required this.color,
    required this.widget,
    this.onPressed,
    this.radius = 32,
    this.width,
    this.isSecond = false,
  });

  List<Color> generateShades(Color color) {
    HSLColor hsl = HSLColor.fromColor(color);

    // Создаем 4 оттенка, изменяя светлоту
    return [
      hsl.withLightness((hsl.lightness + 0.2).clamp(0.0, 1.0)).toColor(),
      hsl.withLightness((hsl.lightness + 0.1).clamp(0.0, 1.0)).toColor(),
      hsl.toColor(),
      hsl.withLightness((hsl.lightness - 0.1).clamp(0.0, 1.0)).toColor(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      padding: EdgeInsets.zero,
      child: Container(
        width: width == 0 ? null : width ?? double.infinity,
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: generateShades(isSecond ? const Color(0xFFEBEBEB) : color),
          ),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 2,
              strokeAlign: BorderSide.strokeAlignOutside,
              color:
                  isSecond ? const Color(0xFFADADAD) : const Color(0xFFFFDD6D),
            ),
            borderRadius: BorderRadius.circular(radius),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 3.80,
              offset: Offset(0, 2),
            )
          ],
        ),
        child: widget,
      ),
    );
  }
}
