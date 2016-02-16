//
//  NSDictionary+Ext.m
//  RHSocketKitDemo
//
//  Created by zhuruhong on 16/2/16.
//  Copyright © 2016年 zhuruhong. All rights reserved.
//

#import "NSDictionary+Ext.h"

@implementation NSDictionary (Ext)

/**
 *  json的二进制数据NSData通过NSJSONSerialization转换为NSDictionary
 *
 *  @param jsonData json的二进制数据NSData
 *
 *  @return NSDictionary，失败时返回nil
 */
+ (NSDictionary *)rh_dictionaryWithJsonData:(NSData *)jsonData
{
    if (nil == jsonData) {
        return nil;
    }
    
    NSDictionary *result = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:nil];
    return result;
}

/**
 *  json的字符串数据NSString通过NSJSONSerialization转换为NSDictionary
 *
 *  @param jsonString json的字符串数据NSString
 *
 *  @return NSDictionary，失败时返回nil
 */
+ (NSDictionary *)rh_dictionaryWithJsonString:(NSString *)jsonString
{
    if (nil == jsonString || jsonString.length < 2) {
        return nil;
    }
    
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    return [self rh_dictionaryWithJsonData:jsonData];
}

@end
