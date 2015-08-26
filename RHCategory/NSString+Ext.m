//
//  NSString+Ext.m
//  RHHttpDemo
//
//  Created by zhuruhong on 15/8/25.
//  Copyright (c) 2015年 zhuruhong. All rights reserved.
//

#import "NSString+Ext.h"

@implementation NSString (Ext)

/**
 *  生成唯一字符串
 *
 *  @return sequence
 */
+ (NSString *)rh_stingWithSequence
{
    //    NSDate *time = [NSDate date];
    //    NSTimeInterval timeInterval = [time timeIntervalSince1970];
    //    return [NSString stringWithFormat:@"%f%d", timeInterval, arc4random()];//arc4random
    return [NSString stringWithFormat:@"%lu", clock()];
}

/**
 *  对nsdata坐解码，生成nsstring
 *
 *  @param data     data description
 *  @param encoding encoding description
 *
 *  @return return nsstring
 */
+ (NSString *)rh_stringWithData:(NSData *)data encoding:(NSStringEncoding)encoding
{
    return [[NSString alloc] initWithData:data encoding:encoding];
}

/**
 *  对nsdata坐解码，生成nsstring
 *  default NSUTF8StringEncoding
 *
 *  @param data data description
 *
 *  @return nsstring
 */
+ (NSString *)rh_stringWithData:(NSData *)data
{
    return [NSString rh_stringWithData:data encoding:NSUTF8StringEncoding];
}

/**
 *  格式化时间为字符串
 *
 *  @param tDate      nsdate
 *  @param tFormatter string like @"yyyy-MM-dd HH:mm:ss"
 *
 *  @return string
 */
+ (NSString *)rh_stringWithDate:(NSDate *)tDate formatter:(NSString *)tFormatter
{
    NSDateFormatter *dateformatter = [[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    if (tFormatter) {
        [dateformatter setDateFormat:tFormatter];
    }
    NSString *strTime = [dateformatter stringFromDate:tDate];
    return strTime;
}

/**
 *  格式化时间戳为字符串
 *
 *  @param tTimeInterval 距离1970年的时间戳
 *  @param tFormatter    string like @"yyyy-MM-dd HH:mm:ss"
 *
 *  @return string
 */
+ (NSString *)rh_stringWithTime:(long)tTimeInterval formatter:(NSString *)tFormatter
{
    NSDateFormatter *dateformatter = [[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    if (tFormatter) {
        [dateformatter setDateFormat:tFormatter];
    }
    NSDate *tempDate = [NSDate dateWithTimeIntervalSince1970:tTimeInterval];
    NSString *strTime = [dateformatter stringFromDate:tempDate];
    return strTime;
}

/**
 *  url编码
 *
 *  @return string
 */
- (NSString *)rh_stringWithUrlEncode
{
    return [self stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    //    return CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (__bridge CFStringRef)self, NULL, (CFStringRef)@"!*'();:@&=+$,/?%#[]", kCFStringEncodingUTF8));
}

/**
 *  url解码
 *
 *  @return string
 */
- (NSString *)rh_stringWithUrlDecode
{
    return [self stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
}

/**
 *  遍历字符串编码格式
 */
- (void)enumStringEncodings
{
    const NSStringEncoding *encodings = [NSString availableStringEncodings];
    NSMutableString *mutableStr = [[NSMutableString alloc] init];
    NSStringEncoding encoding;
    while (0 != (encoding = *encodings++)) {
        [mutableStr appendFormat:@"%@ == %lun", [NSString localizedNameOfStringEncoding:encoding], (unsigned long)encoding];
        NSLog(@"mutableStr: %@", mutableStr);
    }
}

/**
 *  gb2312编码
 *
 *  @return string
 */
- (NSString *)rh_stringWithGB2312Encode
{
    NSStringEncoding enc = CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000);
    return [[NSString alloc] initWithCString:[self UTF8String] encoding:enc];
}

@end
