//
//  UIImage+Ext.h
//  RHHttpDemo
//
//  Created by zhuruhong on 15/8/25.
//  Copyright (c) 2015年 zhuruhong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Ext)

+ (UIImage *)rh_imageWithColor:(UIColor *)tColor size:(CGSize)tSize;

+ (UIImage *)rh_imageWithName:(NSString *)tName;
+ (UIImage *)rh_imageWithName:(NSString *)tName type:(NSString *)tType;

- (UIImage *)rh_imageStretchWithInsets:(UIEdgeInsets)insets;

@end
