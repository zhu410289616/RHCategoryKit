//
//  UIImage+Ext.m
//  RHHttpDemo
//
//  Created by zhuruhong on 15/8/25.
//  Copyright (c) 2015年 zhuruhong. All rights reserved.
//

#import "UIImage+Ext.h"

@implementation UIImage (Ext)

+ (UIImage *)rh_imageWithColor:(UIColor *)tColor size:(CGSize)tSize
{
    CGRect rect = CGRectMake(0, 0, tSize.width, tSize.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [tColor CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}

+ (UIImage *)rh_imageWithName:(NSString *)tName
{
    return [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:tName ofType:@"png"]];
}

+ (UIImage *)rh_imageWithName:(NSString *)tName type:(NSString *)tType
{
    return [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:tName ofType:tType]];
}

- (UIImage *)rh_imageStretchWithInsets:(UIEdgeInsets)insets
{
    if ([self respondsToSelector:@selector(resizableImageWithCapInsets:resizingMode:)]) {
        return [self resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
    } else {
        return [self resizableImageWithCapInsets:insets];
    }
}

@end
