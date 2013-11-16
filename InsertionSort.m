//
// Created by Krzysztof Kunowski on 16/11/13.
// Copyright (c) 2013 Future4Tech. All rights reserved.
//


#import "InsertionSort.h"


@implementation InsertionSort {

}

/*
O(n^2)
 */

- (NSArray *)sort:(NSArray *)unsorted {

    NSMutableArray *array = [NSMutableArray arrayWithArray:unsorted];

    for (int i = 1; i < [array count]; i++) {

        // element at index i that will be compared with elements on it's left
        NSNumber *element = array[i];

        // move cursor left, compare and swap if our element is smaller than checked
        // move left as long as smaller element on left can be found (the rest on left is already sorted)
        for (int j = i - 1; j >= 0 && [array[j] intValue] > [element intValue]; j--) {
            [array exchangeObjectAtIndex:j + 1 withObjectAtIndex:j];
        }
    }

    return [NSArray arrayWithArray:array];
}


@end