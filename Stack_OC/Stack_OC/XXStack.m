//
//  XXStack.m
//  Stack_OC
//
//  Created by 肖鑫 on 2018/12/10.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import "XXStack.h"

@implementation XXStack

- (instancetype)init {
    return [self initWithStackCapacity:0];
}

- (instancetype)initWithStackCapacity:(NSUInteger)capacity {
    if (self = [super init]) {
        _stackCapacity = capacity;
        _arrayStack = [NSMutableArray arrayWithCapacity:capacity];
        _count = 0;
    }
    
    return self;
}

- (BOOL)isOverflow {
    return (self.count >= self.stackCapacity);
}

- (BOOL)isNull {
    return (0 == self.count);
}

- (BOOL)push:(id __nullable)obj {
    if ([self isOverflow]) {
        NSLog(@"栈已满");
        return NO;
    }
    
    self.arrayStack[self.count] = obj;
    ++self.count;
    
    return YES;
}

- (id)pop {
    if ([self isNull]) {
        NSLog(@"栈为空");
        return NULL;
    }
    
    id tmp = self.arrayStack[self.count - 1];
    [self.arrayStack removeLastObject];
    
    --self.count;
    
    return tmp;
}


@end
