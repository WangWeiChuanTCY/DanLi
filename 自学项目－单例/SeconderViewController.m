
//
//  SeconderViewController.m
//  自学项目－单例
//
//  Created by Apple on 16/6/8.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "SeconderViewController.h"
#import "Animal.h"
#import "ViewController.h"
@interface SeconderViewController ()

{

    UITextField *_Ktextfiled;

}

@end

@implementation SeconderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Animal *anima = [Animal shareTimeH];
    _Ktextfiled = [UITextField new];
    _Ktextfiled.backgroundColor = [UIColor greenColor];
    _Ktextfiled.frame = CGRectMake(30, 30, 200, 50);
    self.view.backgroundColor = [UIColor whiteColor];
    _Ktextfiled.text = anima.name;
    [self.view addSubview:_Ktextfiled];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    [self dismissViewControllerAnimated:YES completion:^{
    
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
