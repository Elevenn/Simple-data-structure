//
//  main.m
//  Recursion_OC
//
//  Created by 肖鑫 on 2018/12/14.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import <Foundation/Foundation.h>

int f(int n) {
    if (n == 1) return 1;
    if (n == 2) return 2;
    
    return f(n - 1) + f(n - 2);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%d", f(9999));
    }
    return 0;
}

