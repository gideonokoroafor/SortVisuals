import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatelessWidget {
  final String name;
  final String description;
  final String tWorstCase;
  final String tAverageCase;
  final String tBestCase;
  final String spaceComplexity;
  final Function() onTap;

  const Details({
    Key? key,
    required this.name,
    required this.description,
    required this.tWorstCase,
    required this.tAverageCase,
    required this.tBestCase,
    required this.spaceComplexity,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              name,
              style: GoogleFonts.bebasNeue(fontSize: 30, color: Colors.white),
              textAlign: TextAlign.left,
            ),
            Text(
              description,
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
                      'Worst Case: $tWorstCase',
                      style: GoogleFonts.benchNine(
                          fontSize: 18, color: Colors.white),
                      // textAlign: TextAlign.left,
                    ),
                    Text(
                      'Average Case: $tAverageCase',
                      style: GoogleFonts.benchNine(
                          fontSize: 18, color: Colors.white),
                      // textAlign: TextAlign.left,
                    ),
                    Text(
                      'Best Case: $tBestCase',
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
                      'Worst Case: $spaceComplexity',
                      style: GoogleFonts.benchNine(
                          fontSize: 18, color: Colors.white),
                      // textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ],
            ),
            TextButton(
              onPressed: onTap,
              child: Text(
                'View more',
                style: GoogleFonts.benchNine(fontSize: 20, color: Colors.blue),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
