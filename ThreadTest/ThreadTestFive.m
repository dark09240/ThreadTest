//
//  ThreadTestFive.m
//  ThreadTest
//
//  Created by Lycodes_Dong on 6/15/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import "ThreadTestFive.h"

@implementation ThreadTestFive

- (void)runThreadTestFive {

    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    dispatch_async(queue, ^{
        for (int i = 0; i < 5; i++) {
            NSLog(@"%d",i);
        }
    });
    
    dispatch_async(queue, ^{
        for (int i = 5; i < 10; i++) {
            NSLog(@"%d",i);
        }
    });

}

@end
