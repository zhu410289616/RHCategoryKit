//
//  UIImage+RHHook.m
//  RHCategoryDemo
//
//  Created by zhuruhong on 16/3/14.
//  Copyright © 2016年 zhuruhong. All rights reserved.
//

#import "UIImage+RHHook.h"
#import <objc/runtime.h>

@implementation UIImage (RHHook)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self rh_imageHook];
    });
}

+ (void)rh_imageHook
{
    [self rh_imageNameHook];
}

+ (void)rh_imageNameHook
{
    Class class = object_getClass(self);
    SEL originalSelector = @selector(imageNamed:);
    SEL swizzledSelector = @selector(rh_imageNamed:);
    
    Method originalMethod = class_getClassMethod(class, originalSelector);
    Method swizzledMethod = class_getClassMethod(class, swizzledSelector);
    
    BOOL didAddMethod = class_addMethod(class, originalSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
    if (didAddMethod) {
        class_replaceMethod(class, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
    } else {
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
}

+ (UIImage *)rh_imageNamed:(NSString *)name
{
    UIImage *image = [self rh_imageNamed:name];
    [self rh_printImageNameToLocalWithImageName:name];
    return image;
}

+ (void)rh_printImageNameToLocalWithImageName:(NSString *)name
{
#ifdef DEBUG
    NSLog(@"image file: %@", name);
#endif
}

@end
