//
//  ViewController.m
//  自学项目－单例
//
//  Created by Apple on 16/6/8.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"

#import "Animal.h"
#import "SeconderViewController.h"
@interface ViewController ()
{
    
    UITextField *_textfield;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _textfield = [UITextField new];
    _textfield.backgroundColor = [UIColor redColor];
    _textfield.frame = CGRectMake(30, 30, 200, 49);
    [self.view addSubview:_textfield];
    
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    Animal *animal = [Animal shareTimeH];
    animal.name = _textfield.text;
    SeconderViewController *secondVC = [SeconderViewController new];
    
    [self presentViewController:secondVC animated:YES completion:^{
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
