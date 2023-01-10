import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Color myPrimary = const Color.fromARGB(255, 11, 88, 182);
Color myPrimaryDark = NeumorphicColors.darkBackground;
Color myRed = Colors.red;

String bubbleSortDet = '''
Bubble sort is a sorting algorithm that compares two adjacent elements and swaps them until they are in the intended order.
Just like the movement of air bubbles in the water that rise up to the surface, each element of the array move to the end in each iteration. Therefore, it is called a bubble sort.
''';

myButton(String text, Function() ontap) {
  return GestureDetector(
    onTap: ontap,
    child: Container(
      width: 450,
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
            color: myPrimary,
            strokeAlign: BorderSide.strokeAlignCenter,
            style: BorderStyle.solid,
            width: 2),
        color: Colors.transparent,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // const SizedBox(width: 0),
            Text(
              text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.navigate_next,
              color: myPrimary,
            ),
          ],
        ),
      ),
    ),
  );
}
