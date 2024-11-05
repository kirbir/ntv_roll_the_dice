import 'package:flutter/material.dart';
import 'package:ntv_roll_the_dice/dice_roller.dart';

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
      child: const Center(
          child: DiceRoller(),
      ),
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