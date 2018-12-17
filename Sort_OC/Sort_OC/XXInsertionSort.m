//
//  XXInsertionSort.m
//  Sort_OC
//
//  Created by 肖鑫 on 2018/12/17.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import "XXInsertionSort.h"

@implementation XXInsertionSort

- (NSArray *)insertionSort:(NSMutableArray *)array {
    
    if (array.count <= 1) return nil;
    
    for (int i = 1; i < array.count; ++ i) {
        
        int value = [array[i] intValue];
        int j = i - 1;
        
        for (; j >= 0; --j) {
            if ([array[j] intValue] > value) {
                [array exchangeObjectAtIndex:j withObjectAtIndex:(j + 1)];
            } else {
                break;
            }
        }
    }
    
    return array;
}

@end
