# DanLi
简单的利用单例模式模式进行传值，非常的简单，适合新手学习
主要代码

#import <Foundation/Foundation.h>

@interface Animal : NSObject

+ (instancetype)shareTimeH;

@property (nonatomic,weak)NSString *name;

@end


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

