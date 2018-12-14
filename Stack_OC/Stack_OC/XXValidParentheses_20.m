//
//  XXValidParentheses_20.m
//  Stack_OC
//
//  Created by 肖鑫 on 2018/12/11.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import "XXValidParentheses_20.h"
#import "XXStack.h"

@interface XXValidParentheses_20 ()

@end


@implementation XXValidParentheses_20

- (BOOL)isLegal:(NSString *)str {
    if (str.length == 0) {
        NSLog(@"请输入有效的字符串");
        return NO;
    }
    
    XXStack *stack = [[XXStack alloc] initWithStackCapacity:100];
    NSDictionary *parenDict = @{
                                @")" : @"(",
                                @"]" : @"[",
                                @"}" : @"{",
                                };
    
    NSMutableArray *arr = [NSMutableArray arrayWithCapacity:0];
    
    for (int i = 0; i < str.length; ++i) {
        [arr addObject:[str substringWithRange:NSMakeRange(i, 1)]];
    }
    
    for (NSString *a in arr) {
        if (![parenDict.allKeys containsObject:a]) {
            [stack push:a];
        } else if (!!(stack.count)) {
            BOOL isSame = [parenDict[a] isEqualToString:[stack pop]];
            if (!isSame) {
                return NO;
            }
        }
    }
    
    return !(stack.count);
}

@end
