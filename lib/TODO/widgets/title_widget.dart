import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Yapılacaklar',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,
        fontSize: 50,
        fontWeight: FontWeight.w100,
      ),
    );
  }
}
