//
// Created by Krzysztof Kunowski on 16/11/13.
// Copyright (c) 2013 Future4Tech. All rights reserved.
//


#import "BubbleSort.h"


@implementation BubbleSort {

}

// O(n^2) - because has two nested iterations

-(NSArray *)sort:(NSArray *)unsorted {

    NSMutableArray *array = [NSMutableArray arrayWithArray:unsorted];

    int numberOfElements = [array count];

    while (numberOfElements > 1) {
        /*
        for every element in array compare element with next one
        and move smaller (lighter bubble up).
        */
        for(int i = 0; i < numberOfElements - 1; i++) {
            if([array[i] intValue] > [array[i + 1] intValue]) {
                [array exchangeObjectAtIndex:i withObjectAtIndex:i+1];
            }
        }
        numberOfElements--;
    }

    return [NSArray arrayWithArray:array];
}



@end