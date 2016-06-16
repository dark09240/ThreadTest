//
//  ThreadTestFour.m
//  ThreadTest
//
//  Created by Lycodes_Dong on 6/15/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import "ThreadTestFour.h"

@implementation ThreadTestFour

- (void)runThreadTestFour {

    dispatch_queue_t queue = dispatch_get_main_queue();
    
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
