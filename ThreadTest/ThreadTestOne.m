//
//  ThreadTestOne.m
//  ThreadTest
//
//  Created by Lycodes_Dong on 6/15/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import "ThreadTestOne.h"

@implementation ThreadTestOne

- (void)runThreadTestOne {
    
    [NSThread detachNewThreadSelector:@selector(thread1) toTarget:self withObject:nil];
    
    [NSThread detachNewThreadSelector:@selector(thread2) toTarget:self withObject:nil];
    
    NSLog(@"ThreadTestOneEnd...");

}

- (void)thread1 {

    [NSThread sleepForTimeInterval:1.0];
    
    for (int i = 0; i <= 10; i += 2) {
        NSLog(@"%d",i);
    }

}

- (void)thread2 {

    [NSThread sleepForTimeInterval:1.0];
    
    for (int i = 1; i <= 10; i += 2) {
        NSLog(@"%d",i);
    }

}

@end
