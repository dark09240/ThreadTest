//
//  ThreadTestSix.m
//  ThreadTest
//
//  Created by Lycodes_Dong on 6/15/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import "ThreadTestSix.h"

@implementation ThreadTestSix

- (void)runThreadTestSix {

    dispatch_queue_t queue1 = dispatch_queue_create("first_queue", NULL);
    dispatch_queue_t queue2 = dispatch_queue_create("second_queue", NULL);
    
    dispatch_async(queue1, ^{
        for (int i = 0; i < 5; i++) {
            NSLog(@"%d",i);
        }
    });
    
    dispatch_async(queue2, ^{
        for (int i = 5; i < 10; i++) {
            NSLog(@"%d",i);
        }
    });

}

@end
