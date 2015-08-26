//
//  NSFileManager+Ext.h
//  RHHttpDemo
//
//  Created by zhuruhong on 15/8/25.
//  Copyright (c) 2015年 zhuruhong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSFileManager (Ext)

+ (NSString *)rh_pathWithFilePath:(NSString *)filepath;
+ (NSString *)rh_directoryInUserDomain:(NSSearchPathDirectory)directory;
+ (NSString *)rh_cacheDirectory;
+ (NSString *)rh_documentDirectory;
+ (unsigned long long)rh_fileSizeWithFilePath:(NSString *)filepath;
+ (unsigned long long)rh_fileSizeWithDirectory:(NSString *)directory;

@end
