//
//  ThreadTestThree.h
//  ThreadTest
//
//  Created by Lycodes_Dong on 6/15/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ThreadTestThree : NSOperation{

    int beginValue;

}

- (id)initWithValue:(int)initValue;

- (void)doSomething;

@end
