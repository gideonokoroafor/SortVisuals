// ignore_for_file: file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sorting_visualizer/utils/constants.dart';
import 'package:sorting_visualizer/sorting_details.dart';
import 'package:sorting_visualizer/sorting_visuals.dart';

class SortScreen extends StatefulWidget {
  const SortScreen({super.key});

  @override
  State<SortScreen> createState() => _SortScreenState();
}

class _SortScreenState extends State<SortScreen> {
  late Size size;
  double topStatus = 0;
  double bottomStatus = 0;
  int currentState = 0;
  // SortingDetail dt = SortingDetail();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    topStatus = MediaQuery.of(context).padding.top;
    bottomStatus = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ChangeNotifierProvider<VisualizerProvider>(
          create: (context) => VisualizerProvider(
              (size.width).toInt(), (400 - (topStatus + 16)).toInt()),
          child: Column(children: [
            Container(
              height: 400,
              decoration: BoxDecoration(
                  color: myPrimaryDark,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 17.0)
                  ]),
              padding: EdgeInsets.only(
                  left: 0, top: topStatus + 8, right: 0, bottom: 0),
              child: Consumer<VisualizerProvider>(
                builder: (context, value, child) {
                  return ClipRRect(
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Align(
                          alignment: Alignment.bottomCenter,
                          child: Wrap(
                            children: [
                              Container(
                                width: 1,
                                height: value.arrayOfBars[index].toDouble(),
                                color: myPrimary,
                              )
                            ],
                          ),
                        );
                      },
                      scrollDirection: Axis.horizontal,
                      itemCount: value.arrayOfBars.length,
                    ),
                  );
                },
              ),
            ),
            Consumer<VisualizerProvider>(builder: (context, value, child) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 6),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    //provide all the things u want to horizontally scroll here
                    getAlgorithm("Quick sort", value.algorithmType == 0, () {
                      value.setAlgorithmType(0);
                      setState(() {
                        currentState = 0;
                      });
                    }),
                    getAlgorithm("Bubble sort", value.algorithmType == 1,
                        () {
                      value.setAlgorithmType(1);
                      setState(() {
                        currentState = 1;
                      });
                    }),
                    getAlgorithm("Insertion Sort", value.algorithmType == 2,
                        () {
                      value.setAlgorithmType(2);
                      setState(() {
                        currentState = 2;
                      });
                    }),
                    getAlgorithm("Select Sort", value.algorithmType == 3, () {
                      value.setAlgorithmType(3);
                      setState(() {
                        currentState = 3;
                      });
                    }),
                    getAlgorithm("Merge Sort", value.algorithmType == 4, () {
                      value.setAlgorithmType(4);
                      setState(() {
                        currentState = 4;
                      });
                    }),
                    getAlgorithm("Heap Sort", value.algorithmType == 5, () {
                      value.setAlgorithmType(5);
                      setState(() {
                        currentState = 5;
                      });
                    }),
                    getAlgorithm("Gnome Sort", value.algorithmType == 6, () {
                      value.setAlgorithmType(6);
                      setState(() {
                        currentState = 6;
                      });
                    }),
                  ]),
                ),
              );
            }),

            SortingDetails(algoType: currentState),

            Consumer<VisualizerProvider>(builder: (context, value, child) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          color: value.isRunning ? myRed : myPrimary,
                          child: TextButton(
                            child: Text(
                              value.isRunning ? "Stop" : "Start",
                              style: const TextStyle(color: Colors.white),
                            ),
                            onPressed: () async {
                              if (value.isRunning) {
                                value.isRunning = false;
                              } else {
                                await value.start();
                              }
                            },
                          )),
                    ),
                    Container(
                      width: 8,
                    ),
                    Card(
                      color: myPrimary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: IconButton(
                        icon: const Icon(
                          Icons.autorenew_sharp,
                          color: Colors.white,
                        ),
                        onPressed: () => value.resetBars(),
                      ),
                    ),
                  ],
                ),
              );
            }),
            SizedBox(
              height: bottomStatus,
            )
          ]),
        ),
      ),
    );
  }

  Widget getAlgorithm(String text, bool isSelected, VoidCallback onHit) {
    return InkWell(
      onTap: onHit,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14.0),
        decoration: BoxDecoration(
            color: isSelected ? myPrimary : Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(24)),
            border: isSelected ? null : Border.all(color: myPrimary, width: 1)),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: isSelected ? Colors.white : myPrimary,
          ),
        ),
      ),
    );
  }

}
