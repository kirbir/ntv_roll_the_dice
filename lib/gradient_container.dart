import 'package:flutter/material.dart';
import 'package:ntv_roll_the_dice/styled_text.dart';

class GradientSection extends StatelessWidget {
  const GradientSection(
    this.colorStart,
    this.colorEnd, {
    super.key,
  });

  final Color colorStart;
  final Color colorEnd;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorStart, colorEnd],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
          child: Column(
        children: [
          Image.asset('assets/images/dice-1.png', width: 200),
        ],
      )),
    );
  }
}

// class GradientSection extends StatelessWidget {
//   const GradientSection({super.key, required this.colors});

//   final List<Color> colors;

//   @override
//   Widget build(context) {
  
//     return Container(
//           decoration:  const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Color.fromRGBO(26, 108, 102, 0.69),
//                 Color.fromARGB(255, 111, 92, 26),
//               ],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//           ),
//           child:  const Center(
//             child:  StyledText('Hello World'),
//           ),
//         );
//   }
// }