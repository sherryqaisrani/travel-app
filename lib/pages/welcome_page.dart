import 'package:flutter/material.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/widgets/app_buttons.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List imageList = [
    'assets/images/welcome-one.png',
    'assets/images/welcome-two.png',
    'assets/images/welcome-three.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imageList[index],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.only(
                  top: 150,
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(
                          text: 'Trips',
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        AppText(
                          text: 'Mountine',
                          size: 30,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 250,
                          child: AppText(
                            text:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris semper mi ante, eu posuere. ',
                            color: AppColors.textColor2,
                            size: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        AppButton(
                          width: 120,
                        ),
                      ],
                    ),
                    Column(
                      children: List.generate(
                        3,
                        (dotIndex) => Container(
                          height: index == dotIndex ? 20 : 8,
                          width: 8,
                          decoration: BoxDecoration(
                            color: index == dotIndex
                                ? AppColors.mainColor
                                : AppColors.mainColor.withOpacity(
                                    0.25,
                                  ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
