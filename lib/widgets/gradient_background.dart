import 'package:bond_trade_demo/utils/app_colors.dart';
import 'package:flutter/material.dart';

class GradientBackground extends StatefulWidget {
  final Widget child;
  const GradientBackground({
    super.key,
    required this.child,
  });

  @override
  GradientBackgroundState createState() => GradientBackgroundState();
}

class GradientBackgroundState extends State<GradientBackground>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, _) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.lerp(
                  AppColors.gradientColor1,
                  AppColors.gradientColor2,
                  _animation.value,
                )!,
                Color.lerp(
                  AppColors.gradientColor3,
                  AppColors.gradientColor4,
                  _animation.value,
                )!,
              ],
            ),
          ),
          child: widget.child,
        );
      },
    );
  }
}
