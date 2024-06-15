import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/pic2.svg',
          width: 350,
        ),
        const SizedBox(
          height: 25,
        ),
        const Text(
          'Buy or Rent House',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 4,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(20)),
        ),
        const SizedBox(
          height: 25,
        ),
        const Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: const Text(
            textAlign: TextAlign.center,
            'Buy or Rent your expected house from phone with rento.',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
