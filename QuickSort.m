//
// Created by Krzysztof Kunowski on 16/11/13.
// Copyright (c) 2013 Future4Tech. All rights reserved.
//

#import "QuickSort.h"

@implementation QuickSort {

}

/*

O(n log n)

*/

-(void)sortRecursive:(NSMutableArray *)array withFirst:(int)firstElementIndex andLast:(int)lastElementIndex {

    // stop if there are no elements to soft
    if (firstElementIndex >= lastElementIndex) return;

    // select pivot element in the middle of array
    NSNumber *pivot = array[(firstElementIndex + lastElementIndex) / 2];

    // set cursors
    int leftCursor = firstElementIndex;
    int rightCursor = lastElementIndex;

    while (leftCursor <= rightCursor) {

        // move left cursor right to pivot
        while ([array[leftCursor] intValue] < [pivot intValue])
            leftCursor++;

        // move right cursor left to pivot
        while ([array[rightCursor] intValue] > [pivot intValue])
            rightCursor--;

        // if cursor meets swap elements
        if (leftCursor <= rightCursor)
            [array exchangeObjectAtIndex:leftCursor++ withObjectAtIndex:rightCursor--];
    }

    // sort left array
    [self sortRecursive:array withFirst:firstElementIndex andLast:rightCursor];

    // sort right array
    [self sortRecursive:array withFirst:leftCursor andLast:lastElementIndex];

}

-(NSArray *)sort:(NSArray *)unsorted {
    NSMutableArray *a = [NSMutableArray arrayWithArray:unsorted];
    [self sortRecursive:a withFirst:0 andLast:[a count] - 1];
    return a;
}

@end