
//
//  Animal.m
//  自学项目－单例
//
//  Created by Apple on 16/6/8.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "Animal.h"

@implementation Animal

+ (instancetype)shareTimeH{
    static Animal *anima;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken,^{
        
        anima = [[[self class]alloc]init];;
        
    });
    return anima;
}

@end
