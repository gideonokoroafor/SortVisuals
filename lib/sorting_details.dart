import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sorting_visualizer/constants.dart';

class SortingDetails extends StatelessWidget {
  final int algoType;
  const SortingDetails({super.key, required this.algoType});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: getAlgorithm(algoType),
    );
  }

  Widget getAlgorithm(int type) {
    switch (type) {
      case 0:
        return getQuickSort();
      case 1:
        return getBubbleSort();
      case 2:
        return getInsertionSort();
      default:
        break;
    }
    return getQuickSort();
  }

  Widget getBubbleSort() {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Bubble Sort',
              style: GoogleFonts.bebasNeue(fontSize: 30, color: Colors.white),
              textAlign: TextAlign.left,
            ),
            Text(
              bubbleSortDet,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
              textAlign: TextAlign.left,
            ),
            Row(
              children: [
                Text(
                  'Time Complexity: ',
                  style:
                      GoogleFonts.bebasNeue(fontSize: 18, color: Colors.white),
                  // textAlign: TextAlign.left,
                ),
                const SizedBox(
                  width: 80,
                ),
                Text(
                  'Space Complexity:',
                  style:
                      GoogleFonts.bebasNeue(fontSize: 18, color: Colors.white),
                  // textAlign: TextAlign.left,
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Worst Case: O(n²)',
                      style: GoogleFonts.benchNine(
                          fontSize: 18, color: Colors.white),
                      // textAlign: TextAlign.left,
                    ),
                    Text(
                      'Average Case: O(n²)',
                      style: GoogleFonts.benchNine(
                          fontSize: 18, color: Colors.white),
                      // textAlign: TextAlign.left,
                    ),
                    Text(
                      'Best Case: O(n)',
                      style: GoogleFonts.benchNine(
                          fontSize: 18, color: Colors.white),
                      // textAlign: TextAlign.left,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 80,
                ),
                Column(
                  children: [
                    Text(
                      'Worst Case: O(1)',
                      style: GoogleFonts.benchNine(
                          fontSize: 18, color: Colors.white),
                      // textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ],
            ),
            TextButton(
              child: Text(
                'View code',
                style: GoogleFonts.benchNine(fontSize: 20, color: Colors.blue),
              ),
              onPressed: () {},
            ),
          ]),
        ),
      ),
    );
  }

  Widget getQuickSort() {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Quick Sort',
              style: GoogleFonts.bebasNeue(fontSize: 30, color: Colors.white),
              textAlign: TextAlign.left,
            ),
            Text(
              bubbleSortDet,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
              textAlign: TextAlign.left,
            ),
            Row(
              children: [
                Text(
                  'Time Complexity: ',
                  style:
                      GoogleFonts.bebasNeue(fontSize: 18, color: Colors.white),
                  // textAlign: TextAlign.left,
                ),
                const SizedBox(
                  width: 80,
                ),
                Text(
                  'Space Complexity:',
                  style:
                      GoogleFonts.bebasNeue(fontSize: 18, color: Colors.white),
                  // textAlign: TextAlign.left,
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Worst Case: O(n²)',
                      style: GoogleFonts.benchNine(
                          fontSize: 18, color: Colors.white),
                      // textAlign: TextAlign.left,
                    ),
                    Text(
                      'Average Case: O(n²)',
                      style: GoogleFonts.benchNine(
                          fontSize: 18, color: Colors.white),
                      // textAlign: TextAlign.left,
                    ),
                    Text(
                      'Best Case: O(n)',
                      style: GoogleFonts.benchNine(
                          fontSize: 18, color: Colors.white),
                      // textAlign: TextAlign.left,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 80,
                ),
                Column(
                  children: [
                    Text(
                      'Worst Case: O(1)',
                      style: GoogleFonts.benchNine(
                          fontSize: 18, color: Colors.white),
                      // textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ],
            ),
            TextButton(
              child: Text(
                'View code',
                style: GoogleFonts.benchNine(fontSize: 20, color: Colors.blue),
              ),
              onPressed: () {},
            ),
          ]),
        ),
      ),
    );
  }

  Widget getInsertionSort() {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Bubble Sort',
              style: GoogleFonts.bebasNeue(fontSize: 30, color: Colors.white),
              textAlign: TextAlign.left,
            ),
            Text(
              bubbleSortDet,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
              textAlign: TextAlign.left,
            ),
            Row(
              children: [
                Text(
                  'Time Complexity: ',
                  style:
                      GoogleFonts.bebasNeue(fontSize: 18, color: Colors.white),
                  // textAlign: TextAlign.left,
                ),
                const SizedBox(
                  width: 80,
                ),
                Text(
                  'Space Complexity:',
                  style:
                      GoogleFonts.bebasNeue(fontSize: 18, color: Colors.white),
                  // textAlign: TextAlign.left,
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Worst Case: O(n²)',
                      style: GoogleFonts.benchNine(
                          fontSize: 18, color: Colors.white),
                      // textAlign: TextAlign.left,
                    ),
                    Text(
                      'Average Case: O(n²)',
                      style: GoogleFonts.benchNine(
                          fontSize: 18, color: Colors.white),
                      // textAlign: TextAlign.left,
                    ),
                    Text(
                      'Best Case: O(n)',
                      style: GoogleFonts.benchNine(
                          fontSize: 18, color: Colors.white),
                      // textAlign: TextAlign.left,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 80,
                ),
                Column(
                  children: [
                    Text(
                      'Worst Case: O(1)',
                      style: GoogleFonts.benchNine(
                          fontSize: 18, color: Colors.white),
                      // textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ],
            ),
            TextButton(
              child: Text(
                'View code',
                style: GoogleFonts.benchNine(fontSize: 20, color: Colors.blue),
              ),
              onPressed: () {},
            ),
          ]),
        ),
      ),
    );
  }
}
