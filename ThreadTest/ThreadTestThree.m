//
//  ThreadTestThree.m
//  ThreadTest
//
//  Created by Lycodes_Dong on 6/15/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import "ThreadTestThree.h"

@implementation ThreadTestThree

- (id)initWithValue:(int)initValue {

    self = [super init];
    if (self) {
        beginValue = initValue;
    }
    return self;

}

- (void)doSomething {

    for (int i = beginValue; i < 10; i += 2) {
        NSLog(@"%d",i);
    }

}

- (void)start {

    [self doSomething];

}

@end
