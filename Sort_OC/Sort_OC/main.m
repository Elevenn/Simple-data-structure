//
//  main.m
//  Sort_OC
//
//  Created by 肖鑫 on 2018/12/17.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XXBubbleSort.h"
#import "XXInsertionSort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *expArr = @[@(4), @(5), @(6), @(3), @(2), @(1)];
//        XXBubbleSort *sort1 = [[XXBubbleSort alloc] init];
//        NSArray *array = [sort1 bubbleSort:expArr.mutableCopy];
        
        XXInsertionSort *sort2 = [[XXInsertionSort alloc] init];
        [sort2 insertionSort:expArr.mutableCopy];
    }
    
    return 0;
}
