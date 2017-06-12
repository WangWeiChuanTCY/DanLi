//
//  Animal.h
//  自学项目－单例
//
//  Created by Apple on 16/6/8.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject

+ (instancetype)shareTimeH;

@property (nonatomic,weak)NSString *name;

@end
