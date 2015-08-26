//
//  NSString+Ext.h
//  RHHttpDemo
//
//  Created by zhuruhong on 15/8/25.
//  Copyright (c) 2015年 zhuruhong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Ext)

/**
 *  生成唯一字符串
 *
 *  @return sequence
 */
+ (NSString *)rh_stingWithSequence;

/**
 *  对nsdata坐解码，生成nsstring
 *
 *  @param data     data description
 *  @param encoding encoding description
 *
 *  @return return nsstring
 */
+ (NSString *)rh_stringWithData:(NSData *)data encoding:(NSStringEncoding)encoding;

/**
 *  对nsdata坐解码，生成nsstring
 *  default NSUTF8StringEncoding
 *
 *  @param data data description
 *
 *  @return nsstring
 */
+ (NSString *)rh_stringWithData:(NSData *)data;

/**
 *  格式化时间为字符串
 *
 *  @param tDate      nsdate
 *  @param tFormatter string like @"yyyy-MM-dd HH:mm:ss"
 *
 *  @return string
 */
+ (NSString *)rh_stringWithDate:(NSDate *)tDate formatter:(NSString *)tFormatter;

/**
 *  格式化时间戳为字符串
 *
 *  @param tTimeInterval 距离1970年的时间戳
 *  @param tFormatter    string like @"yyyy-MM-dd HH:mm:ss"
 *
 *  @return string
 */
+ (NSString *)rh_stringWithTime:(long)tTimeInterval formatter:(NSString *)tFormatter;

/**
 *  url编码
 *
 *  @return string
 */
- (NSString *)rh_stringWithUrlEncode;
/**
 *  url解码
 *
 *  @return string
 */
- (NSString *)rh_stringWithUrlDecode;

/**
 *  遍历字符串编码格式
 */
- (void)enumStringEncodings;

/**
 *  gb2312编码
 *
 *  @return string
 */
- (NSString *)rh_stringWithGB2312Encode;

@end
