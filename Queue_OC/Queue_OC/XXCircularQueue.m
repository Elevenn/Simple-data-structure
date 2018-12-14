//
//  XXCircularQueue.m
//  Queue_OC
//
//  Created by 肖鑫 on 2018/12/12.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import "XXCircularQueue.h"

@implementation XXCircularQueue

- (instancetype)initWithQueueSize:(NSUInteger)n {
    if (self = [super init]) {
        _n = n;
        _array = [NSMutableArray arrayWithCapacity:n];
        _head = 0;
        _tail = 0;
        
        for (int i = 0; i < n; ++ i) {
            [_array addObject:@(-1)];
        }
    }
    
    return self;
}

- (BOOL)enqueue:(id)obj {
    if ((self.tail + 1) % self.n == self.head) {
        NSLog(@"队已满");
        return NO;
    }
    
    self.array[self.tail] = obj;
    self.tail = (self.tail + 1) % self.n;
    
    return YES;
}

- (id)dequeue {
    if (self.tail == self.head) {
        NSLog(@"队已空");
        return nil;
    }
    
    id tmp = self.array[self.head];
    
    self.head = (self.head + 1) % self.n;
    
    return tmp;
}

@end
