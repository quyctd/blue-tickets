import 'package:blue_tickets/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const AppDoubleTextWidget({
    Key? key,
    required this.bigText,
    required this.smallText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(bigText, style: Styles.headLineStyle2),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/upcoming');
            },
            child: Text(
              smallText,
              style: Styles.textStyle.copyWith(color: Styles.primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
