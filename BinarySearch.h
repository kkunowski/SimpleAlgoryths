//
// Created by Krzysztof Kunowski on 16/11/13.
// Copyright (c) 2013 Future4Tech. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface BinarySearch : NSObject

-(int)search:(NSArray *)array from:(int)leftElementIndex to:(int)rightElementIndex forElement:(NSNumber *)searchElement;

@end