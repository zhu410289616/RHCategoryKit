//
//  NSDate+Ext.m
//  RHHttpDemo
//
//  Created by zhuruhong on 15/8/25.
//  Copyright (c) 2015年 zhuruhong. All rights reserved.
//

#import "NSDate+Ext.h"

@implementation NSDate (Ext)

+ (NSDate *)rh_dateWithString:(NSString *)tDateStr formatter:(NSString *)tFormatter
{
    NSDateFormatter *dateformatter = [[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    if (tFormatter) {
        [dateformatter setDateFormat:tFormatter];
    }
    NSDate *date = [dateformatter dateFromString:tDateStr];
    return date;
}

+ (NSTimeInterval)rh_timeIntervalWithString:(NSString *)tDateStr formatter:(NSString *)tFormatter
{
    return [[NSDate rh_dateWithString:tDateStr formatter:tFormatter] timeIntervalSince1970];
}

@end
