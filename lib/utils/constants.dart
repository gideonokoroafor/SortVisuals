import 'package:flutter_neumorphic/flutter_neumorphic.dart';

// O(n²)

Color myPrimary = const Color.fromARGB(255, 11, 88, 182);
Color myPrimaryDark = NeumorphicColors.darkBackground;
Color myRed = Colors.red;

String bubbleWorseCase = 'O(n²)';
String bubbleAvgCase = 'O(n²)';
String bubbleBestCase = 'O(n)';
String bubbleSpaceCase = 'O(1)';

String quickWorseCase = 'O(n²)';
String quickAvgCase = 'O(n * logn)';
String quickBestCase = 'O(n * logn)';
String quickSpaceCase = 'O(log n)';

String selectWorseCase = 'O(n²)';
String selectAvgCase = 'O(n²)';
String selectBestCase = 'O(n²)';
String selectSpaceCase = 'O(1)';

String insertWorseCase = 'O(n²)';
String insertAvgCase = 'O(n²)';
String insertBestCase = 'O(n)';
String insertSpaceCase = 'O(1)';

String mergeWorseCase = 'O(n * logn)';
String mergeAvgCase = 'O(n * logn)';
String mergeBestCase = 'O(n * logn)';
String mergeSpaceCase = 'O(n)';

String heapWorseCase = 'O(nlogn)';
String heapAvgCase = 'O(nlogn)';
String heapBestCase = 'O(nlogn)';
String heapSpaceCase = 'O(1)';

String gnomeWorseCase = 'O(n²)';
String gnomeAvgCase = 'O(n²)';
String gnomeBestCase = 'O(n)';
String gnomeSpaceCase = 'O(1)';


String bubbleSortDet = '''
Bubble sort is a sorting algorithm that compares two adjacent elements and swaps them until they are in the intended order.
Just like the movement of air bubbles in the water that rise up to the surface, each element of the array move to the end in each iteration. Therefore, it is called a bubble sort.
''';

String quickSortDet = '''
Quicksort is a sorting algorithm based on the divide and conquer approach where
1. An array is divided into subarrays by selecting a pivot element (element selected from the array).
While dividing the array, the pivot element should be positioned in such a way that elements less than pivot are kept on the left side and elements greater than pivot are on the right side of the pivot.
2. The left and right subarrays are also divided using the same approach. This process continues until each subarray contains a single element.
3. At this point, elements are already sorted. Finally, elements are combined to form a sorted array.
''';

String selectionSortDet = '''
Selection sort is a sorting algorithm that selects the smallest element from an unsorted list in each iteration and places that element at the beginning of the unsorted list.
''';

String insertSortDet = '''
Insertion sort is a sorting algorithm that places an unsorted element at its suitable place in each iteration. Insertion sort works similarly as we sort cards in our hand in a card game.
We assume that the first card is already sorted then, we select an unsorted card. If the unsorted card is greater than the card in hand, it is placed on the right otherwise, to the left. In the same way, other unsorted cards are taken and put in their right place.
''';

String mergeSortDet = '''
Merge Sort is one of the most popular sorting algorithms that is based on the principle of Divide and Conquer Algorithm.
Divide and Conquer Strategy
Using the Divide and Conquer technique, we divide a problem into subproblems. When the solution to each subproblem is ready, we 'combine' the results from the subproblems to solve the main problem.
Suppose we had to sort an array A. A subproblem would be to sort a sub-section of this array starting at index p and ending at index r, denoted as A[p..r].
Divide: If q is the half-way point between p and r, then we can split the subarray A[p..r] into two arrays A[p..q] and A[q+1, r].
Conquer: In the conquer step, we try to sort both the subarrays A[p..q] and A[q+1, r]. If we haven't yet reached the base case, we again divide both these subarrays and try to sort them.
Combine: When the conquer step reaches the base step and we get two sorted subarrays A[p..q] and A[q+1, r] for array A[p..r], we combine the results by creating a sorted array A[p..r] from two sorted subarrays A[p..q] and A[q+1, r].
MergeSort Algorithm
The MergeSort function repeatedly divides the array into two halves until we reach a stage where we try to perform MergeSort on a subarray of size 1 i.e. p == r.
After that, the merge function comes into play and combines the sorted arrays into larger arrays until the whole array is merged.
''';

String heapSortDet = '''
Heap sort is a comparison-based sorting technique based on Binary Heap data structure. It is similar to the selection sort where we first find the minimum element and place the minimum element at the beginning. Repeat the same process for the remaining elements.
Working of Heap Sort

1. Since the tree satisfies Max-Heap property, then the largest item is stored at the root node.
2. Swap: Remove the root element and put at the end of the array (nth position) Put the last item of the tree (heap) at the vacant place.
3. Remove: Reduce the size of the heap by 1.
4 .Heapify: Heapify the root element again so that we have the highest element at root.
5. The process is repeated until all the items of the list are sorted.
''';

String gnomeSortDet = '''
Gnome Sort is a sorting algorithm really similar to Insertion sort. Gnome Sort is based on dividing the data structure in two sublists: a sorted one, and an unsorted one.
For every cycle, the algorithm picks an element of the unsorted sublist and moves it with sequential swaps to the right position in the sorted sublist.
The main difference from the Insertion Sort is that the implementation doesn't require nested loops. Like the Insertion Sort, this algorithm is more efficient on small data structures almost sorted.
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
