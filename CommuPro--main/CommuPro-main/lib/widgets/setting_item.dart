import 'package:flutter/material.dart';

import 'forward_button.dart';

class SettingItem extends StatelessWidget {
  final String title;
  final Color bgColor;
  final Color iconColor;
  final IconData icon;
  final Function() onTap;
  final String? value;
  const SettingItem({
    super.key, required this.title, required this.bgColor, required this.iconColor, required this.icon, required this.onTap, required this.value
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: bgColor,
              ),
              child: Icon(
                icon, color: iconColor,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(title, style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),),
            Spacer(),
            value!=null? Text(value!,
              style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
            ): const SizedBox(),
            const SizedBox(
              width: 10,
            ),
            ForwardButton(onTap: onTap),
          ],
        ),
    );
  }
}
