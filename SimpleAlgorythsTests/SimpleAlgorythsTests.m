//
//  SimpleAlgorythsTests.m
//  SimpleAlgorythsTests
//
//  Created by Krzysztof Kunowski on 16/11/13.
//  Copyright (c) 2013 Future4Tech. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "QuickSort.h"
#import "BubbleSort.h"
#import "BinarySearch.h"
#import "InsertionSort.h"
#import "SelectionSort.h"

@interface SimpleAlgorythsTests : XCTestCase

@end

@implementation SimpleAlgorythsTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testQuickSort
{
    NSLog(@"QuickSort");
    NSArray *unsorted = @[@1,@34,@4,@11,@15,@21];
    QuickSort *quickSort = [QuickSort new];
    NSArray *sorted = [quickSort sort:unsorted];

    NSLog(@"unsorted:");
    for(NSNumber *number in unsorted) {
        NSLog(@"%d",[number intValue]);
    }

    NSLog(@"sorted:");
    for(NSNumber *number in sorted) {
        NSLog(@"%d", [number intValue]);
    }
}

- (void)testBubbleSort
{
    NSLog(@"BubbleSort");
    NSArray *unsorted = @[@1,@34,@4,@11,@15,@21,@7,@200,@32,@6,@7,@3,@2,@1];
    BubbleSort *bubbleSort = [BubbleSort new];
    NSArray *sorted = [bubbleSort sort:unsorted];

    NSLog(@"unsorted:");
    for(NSNumber *number in unsorted) {
        NSLog(@"%d",[number intValue]);
    }

    NSLog(@"sorted:");
    for(NSNumber *number in sorted) {
        NSLog(@"%d", [number intValue]);
    }

    BinarySearch *binarySearch = [BinarySearch new];

    // binary search on sorted array only !
    
    int elementIndex = [binarySearch search:sorted from:0 to:[sorted count]-1 forElement:@21];

    NSLog(@"element 21 found at index: %d",elementIndex);

}

- (void)testInsertionSort {
    NSLog(@"InsertionSort");
    NSArray *unsorted = @[@1, @34, @4, @11, @15, @21, @7, @200, @32, @6, @7, @3, @2, @1];
    InsertionSort *bubbleSort = [InsertionSort new];
    NSArray *sorted = [bubbleSort sort:unsorted];

    NSLog(@"unsorted:");
    for (NSNumber *number in unsorted) {
        NSLog(@"%d", [number intValue]);
    }

    NSLog(@"sorted:");
    for (NSNumber *number in sorted) {
        NSLog(@"%d", [number intValue]);
    }
}


- (void)testSelectionSort {
    NSLog(@"SelectionSort");
    NSArray *unsorted = @[@1, @34, @4, @11, @15, @21, @7, @200, @32, @6, @7, @3, @2, @1];
    SelectionSort *selectionSort = [SelectionSort new];
    NSArray *sorted = [selectionSort sort:unsorted];

    NSLog(@"unsorted:");
    for (NSNumber *number in unsorted) {
        NSLog(@"%d", [number intValue]);
    }

    NSLog(@"sorted:");
    for (NSNumber *number in sorted) {
        NSLog(@"%d", [number intValue]);
    }
}



- (void)testCountingElementsInArray {
    NSArray *array = @[@1, @34, @4, @15, @15, @1, @7, @200, @32, @6, @7, @3, @2, @6, @15, @15, @7];
    NSMutableDictionary *counter = [NSMutableDictionary new];
    for (int i = 0; i < [array count]; i++) {
        NSNumber *key = array[i];
        NSNumber *value = [NSNumber numberWithInt:[[counter objectForKey:key] intValue] + 1];
        [counter setValue:value forKey:key];
    }
    for (NSNumber *key in [counter allKeys]) {
        NSLog(@"%d found %d times in array", [key intValue], [[counter objectForKey:key] intValue]);
    }
}

- (void)testPrefixSum {
    NSArray *array = @[@1, @34, @4, @15, @15, @1, @7, @200, @32, @6, @7, @3, @2, @6, @15, @15, @7];
    NSMutableArray *prefixSum = [NSMutableArray new];
    int sum = 0;
    for (int i = 0; i < [array count]; i++) {
        if (i == 0) {
            sum = [array[i] intValue];
        } else {
            sum = [prefixSum[i - 1] intValue] + [array[i] intValue];
        }
        [prefixSum addObject:[NSNumber numberWithInt:sum]];
        NSLog(@"prefix sum at index %i = %d", i, sum);
    }
}


@end
