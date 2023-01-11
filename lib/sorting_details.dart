import 'package:flutter/material.dart';
import 'package:sorting_visualizer/utils/constants.dart';
import 'package:sorting_visualizer/utils/details.dart';

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
      case 3:
        return getSelectionSort();
      case 4:
        return getMergeSort();
      case 5:
        return getHeapSort();
      case 6:
        return getGnomeSort();
      default:
        break;
    }
    return getQuickSort();
  }

  Widget getBubbleSort() {
    return Details(
        name: 'Bubble Sort',
        description: bubbleSortDet,
        tWorstCase: bubbleWorseCase,
        tAverageCase: bubbleAvgCase,
        tBestCase: bubbleBestCase,
        spaceComplexity: bubbleSpaceCase,
        onTap: () {});
  }

  Widget getQuickSort() {
    return Details(
        name: 'Quick Sort',
        description: quickSortDet,
        tWorstCase: quickWorseCase,
        tAverageCase: quickAvgCase,
        tBestCase: quickBestCase,
        spaceComplexity: quickSpaceCase,
        onTap: () {});
  }

  Widget getInsertionSort() {
    return Details(
        name: 'Insertion Sort',
        description: insertSortDet,
        tWorstCase: insertWorseCase,
        tAverageCase: insertAvgCase,
        tBestCase: insertBestCase,
        spaceComplexity: insertSpaceCase,
        onTap: () {});
  }

  Widget getSelectionSort() {
    return Details(
        name: 'Select Sort',
        description: selectionSortDet,
        tWorstCase: selectWorseCase,
        tAverageCase: selectAvgCase,
        tBestCase: selectBestCase,
        spaceComplexity: selectSpaceCase,
        onTap: () {});
  }

  Widget getMergeSort() {
    return Details(
        name: 'Merge Sort',
        description: mergeSortDet,
        tWorstCase: mergeWorseCase,
        tAverageCase: mergeAvgCase,
        tBestCase: mergeBestCase,
        spaceComplexity: mergeSpaceCase,
        onTap: () {});
  }

  Widget getHeapSort() {
    return Details(
        name: 'Heap Sort',
        description: heapSortDet,
        tWorstCase: heapWorseCase,
        tAverageCase: heapAvgCase,
        tBestCase: heapBestCase,
        spaceComplexity: heapSpaceCase,
        onTap: () {});
  }

  Widget getGnomeSort() {
    return Details(
        name: 'Gnome Sort',
        description: gnomeSortDet,
        tWorstCase: gnomeWorseCase,
        tAverageCase: gnomeAvgCase,
        tBestCase: gnomeBestCase,
        spaceComplexity: gnomeSpaceCase,
        onTap: () {});
  }

}
