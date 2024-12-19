import 'package:flutter/material.dart';

class SettingCustomeWidget extends StatelessWidget {
  const SettingCustomeWidget({super.key, required this.text, this.icon, this.onTap});
  final String text;
  final IconData? icon;
 final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(
          top: 19,
          right: 17,
          bottom: 19,
          left: 17,
        ),
        width: 342,
        height: 64.26,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffE76C00)),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Container(
              width: 25.6,
              height: 25.6,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffE76C00),
                ),
              ),
              child: Icon(
                icon,
                size: 23,
                color: const Color(0xffE76C00),
              ),
            ),
            const SizedBox(
              width: 14,
            ),
            Text(
              text,
              style: const TextStyle(
                fontFamily: 'Georgia',
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}
