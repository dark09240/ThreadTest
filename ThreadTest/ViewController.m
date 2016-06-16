//
//  ViewController.m
//  ThreadTest
//
//  Created by Lycodes_Dong on 6/15/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import "ViewController.h"
#import "ThreadTestOne.h"
#import "ThreadTestTwo.h"
#import "ThreadTestThree.h"
#import "ThreadTestFour.h"
#import "ThreadTestFive.h"
#import "ThreadTestSix.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Test four,five,six is use Grand Central Dispatch(GCD).
    
    //Emphasis!
    //main use dispatch_async().
    //concurrent use dispatch_async() or dispatch_sync().
    //serial use dispatch_sync().
    
    //Main(Thread Test Four) --> dispatch_get_main_queue()
    //Main is FIFO(first-in first-out).
    
    //Concurrent(Thread Test Five) --> dispatch_get_global_queue()
    //All iOS only four concurrent.
    //In order,is HIGH,DEFAULT(default value),LOW,BACKGROUND.
    
    //Serial(Thread Test Six) --> dispatch_queue_create()
    //Serial is FIFO(first-in first-out).
    
}

- (IBAction)threadTestOne:(id)sender {
    
    [self nextNSLog];
    
    //Traditional method
    
    ThreadTestOne *myThreadTestOne = [[ThreadTestOne alloc]init];
    
    [myThreadTestOne runThreadTestOne];
    
}

- (IBAction)threadTestTwo:(id)sender {
    
    [self nextNSLog];
    
    //NSOperationQueue
    
    ThreadTestTwo *myThreadTestTwo = [[ThreadTestTwo alloc]init];
    
    [myThreadTestTwo runThreadTestTwo];
    
}

- (IBAction)threadTestThree:(id)sender {
    
    [self nextNSLog];

    //NSOperation
    
    ThreadTestThree *thread1 = [[ThreadTestThree alloc]initWithValue:0];
    ThreadTestThree *thread2 = [[ThreadTestThree alloc]initWithValue:1];
    NSOperationQueue *q = [[NSOperationQueue alloc]init];
    
    [q addOperations:[NSArray arrayWithObjects:thread1,thread2, nil] waitUntilFinished:NO];

}
- (IBAction)threadTestFour:(id)sender {
    
    [self nextNSLog];
    
    //dispatch_async(),main
    
    ThreadTestFour *myThreadTestFour = [[ThreadTestFour alloc]init];
    
    [myThreadTestFour runThreadTestFour];
    
}

- (IBAction)threadTestFive:(id)sender {
    
    [self nextNSLog];

    //dispatch_async(),concurrent
    
    ThreadTestFive *myThreadTestFive = [[ThreadTestFive alloc]init];
    
    [myThreadTestFive runThreadTestFive];
    
}

- (IBAction)threadTestSix:(id)sender {
    
    [self nextNSLog];

    //dispatch_async(),serial
    
    ThreadTestSix *myThreadTestSix = [[ThreadTestSix alloc]init];

    [myThreadTestSix runThreadTestSix];
    
}

- (void)nextNSLog {

    NSLog(@"-----");

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
