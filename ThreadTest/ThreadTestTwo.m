//
//  ThreadTestTwo.m
//  ThreadTest
//
//  Created by Lycodes_Dong on 6/15/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import "ThreadTestTwo.h"

@implementation ThreadTestTwo

- (void)runThreadTestTwo {

    NSOperationQueue *q = [[NSOperationQueue alloc]init];
    
    [q addOperationWithBlock:^{
        for (int i = 0; i < 10; i += 2) {
            NSLog(@"%d",i);
        }
    }];
    
    [q addOperationWithBlock:^{
        for (int i = 1; i < 10; i += 2) {
            NSLog(@"%d",i);
        }
    }];

    NSLog(@"ThreadTestTwoEnd...");
    
}

@end
