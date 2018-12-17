//
//  XXBubbleSort.m
//  Sort_OC
//
//  Created by 肖鑫 on 2018/12/17.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import "XXBubbleSort.h"

@implementation XXBubbleSort

//  @[@"4", @"5", @"6", @"3", @"2", @"1"];
- (NSArray *)bubbleSort:(NSMutableArray *)array {
    for (int i = 0; i < array.count; ++ i) {
//        if (i == (array.count - 1)) break;
        
        BOOL flag = NO;
        
        for (int j = 0; j < array.count - i - 1; ++ j) {
            NSComparisonResult reslut = [array[j] compare:array[j + 1]];
            
            if (reslut == NSOrderedDescending) {
                [array exchangeObjectAtIndex:j withObjectAtIndex:(j + 1)];
                flag = YES;
            }
        }
        if (!flag)
            break;
    }
    
    return array;
}


@end
