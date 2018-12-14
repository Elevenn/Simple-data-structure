//
//  main.m
//  Stack_OC
//
//  Created by 肖鑫 on 2018/12/10.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XXStack.h"
#import "XXValidParentheses_20.h"

void creatStack() {
    XXStack *stackA = [[XXStack alloc] initWithStackCapacity:10];
    
    for (int i = 0; i < 10; ++i) {
        [stackA push:@"123"];
    }
    
    [stackA push:@"123"];
    
    [stackA pop];
    
    [stackA push:@"1235"];
    
    NSLog(@"栈 %@，栈元素个数 %zd，容量 %zd", stackA, stackA.count, stackA.stackCapacity);
}

void vaildParentheses() {
    XXValidParentheses_20 *vp = [[XXValidParentheses_20 alloc] init];
    
    NSLog(@"%d", [vp isLegal:@"(([]){})"]);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //creatStack();
        vaildParentheses();
    }
    
    return 0;
}

