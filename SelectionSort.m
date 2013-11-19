//
// Created by Krzysztof Kunowski on 19/11/13.
// Copyright (c) 2013 Future4Tech. All rights reserved.
//


#import "SelectionSort.h"


@implementation SelectionSort {

}

- (NSArray *)sort:(NSArray *)unsorted {
    NSMutableArray *array = [NSMutableArray arrayWithArray:unsorted];
    int n = [array count];
    for (int j = 0; j < n - 1; j++) {
        int iMin = j;
        for (int i = j + 1; i < n; i++) {
            if ([array[i] intValue] < [array[iMin] intValue]) {
                iMin = i;
            }
        }
        if (iMin != j) {
            [array exchangeObjectAtIndex:j withObjectAtIndex:iMin];
        }
    }
    return [NSArray arrayWithArray:array];
}

@end