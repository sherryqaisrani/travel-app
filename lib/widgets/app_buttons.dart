import 'package:flutter/material.dart';
import 'package:travel_app/utils/app_colors.dart';

class AppButton extends StatelessWidget {
  AppButton({
    super.key,
    this.width,
    this.color = AppColors.mainColor,
    this.isResponsive = false,
  });
  double? width;
  Color color;
  bool? isResponsive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.mainColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/button-one.png',
          ),
        ],
      ),
    );
  }
}
