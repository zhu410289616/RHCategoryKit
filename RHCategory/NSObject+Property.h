//
//  NSObject+Property.h
//  RHHttpDemo
//
//  Created by zhuruhong on 16/1/28.
//  Copyright © 2016年 zhuruhong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

//http://www.jianshu.com/p/6dcb18161fbb
//https://github.com/lianchengjiang/LcCategoryProperty

/*
 @interface Model (Property)
 
 @property (nonatomic, strong)NSString *name;
 @property (nonatomic, strong)NSURL *URL;
 @property (nonatomic, strong)NSDate *date;
 
 @property (nonatomic, assign)CGPoint point;
 @property (nonatomic, assign)CGRect myRect;
 
 @property (nonatomic, assign)float f;
 @property (nonatomic, assign)int a;
 
 @end
 
 
 @implementation Model (Property)
 
 + (void)load
 {
 [self addObjectProperty:@"URL"];
 [self addObjectProperty:@"date"];
 [self addObjectProperty:@"name" associationPolicy:OBJC_ASSOCIATION_COPY_NONATOMIC];
 [self addBasicProperty:@"point" encodingType:@encode(CGPoint)];
 [self addBasicProperty:@"myRect" encodingType:@encode(CGRect)];
 [self addBasicProperty:@"f" encodingType:@encode(float)];
 [self addBasicProperty:@"a" encodingType:@encode(int)];
 }
 
 @end
 
 */

@interface NSObject (Property)

/**
 *  为类添加id类型的属性，objc_AssociationPolicy类型为OBJC_ASSOCIATION_RETAIN_NONATOMIC
 *  @param name 属性的name
 */
+ (void)addObjectProperty:(NSString *)name;

/**
 *  为类添加id类型的属性
 *  @param name   属性的name
 *  @param policy 属性的policy
 */
+ (void)addObjectProperty:(NSString *)name associationPolicy:(objc_AssociationPolicy)policy;

/**
 *  为类添加基础类型的属性，如：int,float,CGPoint,CGRect等
 *  @param name 属性的name
 *  @param type 属性的encodingType，如int类型的属性，type为@encode(int)
 */
+ (void)addBasicProperty:(NSString *)name encodingType:(char *)type;

@end
