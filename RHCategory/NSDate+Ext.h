//
//  NSDate+Ext.h
//  RHHttpDemo
//
//  Created by zhuruhong on 15/8/25.
//  Copyright (c) 2015年 zhuruhong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Ext)

+ (NSDate *)rh_dateWithString:(NSString *)tDateStr formatter:(NSString *)tFormatter;
+ (NSTimeInterval)rh_timeIntervalWithString:(NSString *)tDateStr formatter:(NSString *)tFormatter;

@end
