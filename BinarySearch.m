//
// Created by Krzysztof Kunowski on 16/11/13.
// Copyright (c) 2013 Future4Tech. All rights reserved.
//

#import "BinarySearch.h"

@implementation BinarySearch {

}

/*

O(n^2)

 */

-(int)search:(NSArray *)array from:(int)leftElementIndex to:(int)rightElementIndex forElement:(NSNumber *)searchElement {
    if (rightElementIndex < leftElementIndex)
        return -1;
    int middleIndex = (rightElementIndex + leftElementIndex)/2;
    NSNumber *middleElement = (NSNumber *)array[middleIndex];
    if ([searchElement intValue] < [middleElement intValue]) {
        // search element must be in left array so search only this array
        return [self search:array from:leftElementIndex to:middleIndex-1 forElement:searchElement];
    } else if ([searchElement intValue] > [middleElement intValue]) {
        // search element must be in right array so search only this array
        return [self search:array from:middleIndex+1 to:rightElementIndex forElement:searchElement];
    } else if([searchElement intValue] == [middleElement intValue]) {
        // search element found
        return middleIndex;
    }
    // this will never be return (added because compiler needs it :))
    return 0;
}
@end