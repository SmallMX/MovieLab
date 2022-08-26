import 'package:flutter/material.dart';
import 'package:movielab/constants/colors.dart';
import 'package:movielab/widgets/buttons/activeable_button.dart';

Future<dynamic> guideModalSheet(BuildContext context,
    {required dynamic vsync,
    final Color backgroundColor = kBackgroundColor,
    required final String title,
    required final String decription,
    required final VoidCallback onTap}) {
  return showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
      top: Radius.circular(30),
    )),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    transitionAnimationController: AnimationController(
        duration: const Duration(milliseconds: 250), vsync: vsync),
    builder: (context) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        color: backgroundColor,
        height: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 3,
              margin: const EdgeInsets.only(top: 8.5, bottom: 32.5),
              height: 3,
              color: Colors.white.withOpacity(0.4),
            ),
            Text(
              title,
              style:
                  const TextStyle(fontWeight: FontWeight.w600, fontSize: 18.5),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              decription,
              textAlign: TextAlign.center,
              style:
                  const TextStyle(fontWeight: FontWeight.w500, fontSize: 16.5),
            ),
            const SizedBox(
              height: 30,
            ),
            ActiveableButton(
              isActive: true,
              text: "Select Folder",
              icon: null,
              onTap: onTap,
              activeColor: kAccentColor,
            )
          ],
        ),
      );
    },
  );
}
