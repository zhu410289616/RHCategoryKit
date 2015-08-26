//
//  NSString+MD5.h
//  RHHttpDemo
//
//  Created by zhuruhong on 15/8/25.
//  Copyright (c) 2015年 zhuruhong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (MD5)

+ (NSString *)rh_stringWithMD5Encode:(NSString *)src;
- (NSString *)rh_stringWithMD5Encode;

@end
