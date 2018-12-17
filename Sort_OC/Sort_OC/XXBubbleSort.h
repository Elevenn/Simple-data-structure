//
//  XXBubbleSort.h
//  Sort_OC
//
//  Created by 肖鑫 on 2018/12/17.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XXBubbleSort : NSObject

@property (nonatomic, strong) NSMutableArray *array;

- (instancetype)initWithArray:(NSArray *)array;

- (NSArray *)bubbleSort:(NSMutableArray *)array;

@end

NS_ASSUME_NONNULL_END
